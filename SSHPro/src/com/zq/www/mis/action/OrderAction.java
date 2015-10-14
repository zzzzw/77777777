package com.zq.www.mis.action;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.common.PaymentUtil;
import com.zq.www.mis.dao.LineDAO;
import com.zq.www.mis.dao.OrderDAO;
import com.zq.www.mis.dao.PassengerDAO;
import com.zq.www.mis.dao.SeatnumDAO;
import com.zq.www.mis.entity.Line;
import com.zq.www.mis.entity.Torder;

@SuppressWarnings("serial")    
@Results( { 
@Result(name = "payment", location = "/before/order/jsp/payment.jsp"),
@Result(name = "confirm", location = "/before/order/jsp/confirm.jsp"),
@Result(name = "orderdetail", location = "/before/order/jsp/orderdetail.jsp"),
@Result(name = "ordercancel", location = "/before/order/jsp/ordercancel.jsp"),
@Result(name = "orderchange", location = "/before/order/jsp/orderChange.jsp"),
@Result(name = "changecomfirm", location = "/before/order/jsp/changeComfirm.jsp"),
@Result(name = "invalid.token", location = "/before/order/jsp/error.jsp")
})

public class OrderAction extends BaseAction {
    @Autowired
    private OrderDAO orderdao;
    @Autowired
    private PassengerDAO passengerdao;
    @Autowired
    private LineDAO linedao;
    @Autowired
    private SeatnumDAO seatnumdao;
    
    
    private Integer uid;//下订单人的id
    private Line entity;//预订航班
    private String[] pname;//乘机人姓名
    private String[] pphone;//乘机人电话
    private String[] pidcard;//乘机人身份证
    private List<String[]> ydlinelist;//预订航班相关详细信息
    private List<String[]> cklist;//本次乘机人列表
    private String cntName;//联系人姓名
    private String cntPhone;//联系人电话
    private String seattype;//座位类型
    private String orderprice;//订单中的单人价格
    private String allprice;//本次订单总价格
    private String ordernum;//订单编号（非订单id）
    private String paytype;//支付方式
    private String orderstatus;//订单状态
    private List<String[]> orderlist;//订单列表
    private List<String[]> ordermsg;//orderdetail页面的订单信息
    private List<String[]> passmsg;//orderdetail页面的乘客信息
    private boolean AllOrder;//是否查找所有订单
    private String[] to;
    private String handleStatus;
    private String sfz;//始发站
    private String ddz;//到达站
    private String cfrq;//出发日期
    private Line line;//航班实体
    private List<String[]> beforeline;//改签前航班信息
    private Double pricemsg;
    
    //查找我的关联乘客
   public String findmypass() throws Exception
   {
       uid= (Integer) getSession().getAttribute("uid");
      ajaxSendJson(orderdao.mypassenger(uid)) ;
       return null;
   }
   //获得座位数量
   public String seatnum() throws IOException {
       String seatnum=seatnumdao.getSeatNum((linedao.get(entity.getId())).getLinename(),(linedao.get(entity.getId())).getPlanedate(), seattype);
       getResponse().getWriter().print(seatnum);
       return null;
   }
   
   //确认并且生成订单
   public String qrscdd() throws ParseException {
       System.out.println("确认并且生成订单");
       //获取乘客id
       int ckid;
       uid=(Integer) getSession().getAttribute("uid");
       Torder order;
       
       //获得系统当前时间
       SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       SimpleDateFormat sdf2=new SimpleDateFormat("yyyyMMddHHmmss");
       Date now=new Date();
      Date nowdate= sdf.parse(sdf.format(now));
      String orderno=sdf2.format(now);
      int num=pidcard.length;
      Double singleprice=Double.parseDouble(allprice)/num;
      
       for(String idcard:pidcard)
       {
	order=new Torder();
       ckid=Integer.parseInt(passengerdao.searchByUsIdc(uid, idcard));
       order.setLid(entity.getId());
       order.setSeat(seattype);
       order.setPid(ckid);
       order.setStatus("等待付款");
       order.setUid(uid);
       order.setRemaintime(1800);
       order.setPrice(singleprice);
       order.setStarttime(nowdate);
       order.setContacter(cntName);
       order.setPhone(cntPhone);
       ordernum=orderno+entity.getId();
       order.setOrdernum(ordernum);
       orderdao.save(order);
       
       //修改座位数量
       seatnumdao.updateNum(linedao.get(entity.getId()).getLinename(), entity.getPlanedate(), seattype);
       }
       getSession().setAttribute("ordernum", ordernum);
       
       return "payment";
   }
   
   //剩余时间
   public void sysj() throws IOException {
       getResponse().getWriter().print(orderdao.getRmnTimeByOdNum(ordernum)) ;
   }
  
   //提交订单
   public String tjdd() {

       
       //添加关联乘客人
       List<String[]> pAlist=new ArrayList();
       List<String[]> pBlist=new ArrayList();
       String[] p;
       for(int i=0;i<pname.length;i++)
       {
	  p= new String[3];
	   p[0]=pname[i];
	   p[1]=pphone[i];
	   p[2]=pidcard[i];
	   pAlist.add(p);
       }
       pBlist=orderdao.mypassenger((Integer)getSession().getAttribute("uid"));
       for(String[] passA:pAlist)
       {
	   int f=0;
	   for(Object[] passB:pBlist)
	   {
	       System.out.println(passA[2]);
	       System.out.println(passB[3]);
	       if(passA[2].toString().equals(passB[3].toString()) )
	       {
		   f=1;
		   break;
	       }
	   }
	   if(f==0)
	   {
	       uid=(Integer)getSession().getAttribute("uid");
	   passengerdao.addMypassenger(uid, passA);
	   }
       }
       //获得预订航班信息
       ydlinelist= linedao.ydlinemsg(entity.getId());
       //获取个人机票价格
      orderprice= orderdao.planeprice(entity.getId(),seattype);
       //获得本次乘机的乘客列表
       cklist=pAlist;
    return "confirm";
   }

   //查找指定订单状态的订单
   public String queryorder() throws Exception {
       uid=(Integer) getSession().getAttribute("uid");
       orderlist=orderdao.queryOrderByStatus(orderstatus,uid,AllOrder);
       ajaxSendJson(orderlist, true);
       return null;
   }
   
   //显示订单详细信息
   public String orderdetail() {      
     ordermsg= orderdao.queryOrderByOrdernum(ordernum);
 //    passmsg=orderdao.queryPassMsgByOrdernum(ordernum);
     Integer lid=orderdao.queryLidByOrdernum(ordernum);
     ydlinelist=linedao.ydlinemsg(lid);
      return "orderdetail";    
      
   }
   
   //订单信息
 //  public String ordermsg() {      
  //     ordermsg= orderdao.queryOrderByOrdernum(ordernum);
 //      passmsg=orderdao.queryPassMsgByOrdernum(ordernum);
  //     Integer lid=orderdao.queryLidByOrdernum(ordernum);
   //    ydlinelist=linedao.ydlinemsg(lid);
  //      return "ordercancel";    
        
 //    }
   
   public String ordermsg1() {      
      
       ordermsg= orderdao.queryOrderByOrdernum(ordernum);
       passmsg=orderdao.PassFilterByOrdernum(ordernum);
  //     Integer lid=orderdao.queryLidByOrdernum(ordernum);
   //    ydlinelist=linedao.ydlinemsg(lid);
        return "ordercancel";    
        
     }
   
   
   public String ordermsg2() {    
       Integer lid=orderdao.queryLidByOrdernum(ordernum);
       ydlinelist=linedao.ydlinemsg(lid);
   //    ordermsg= orderdao.queryOrderByOrdernum(ordernum);
   //    passmsg=orderdao.PassFilterByOrdernum(ordernum);
  //     Integer lid=orderdao.queryLidByOrdernum(ordernum);
   //    ydlinelist=linedao.ydlinemsg(lid);
        return "orderchange";    
        
     }

   //退票   或取消订单
   public String refund() {
       try {
	   orderdao.CancelOrRefund(ordernum,to);
	   handleStatus="success";
       }catch(Exception e) {
	   handleStatus="fail";
       }      
       return "ordercancel";
   }
 //用易宝支付订单
	public String ybpayment() throws Exception {

	    //用易宝实现支付
	    Properties props = new Properties();
	props.load(this.getClass().getClassLoader().getResourceAsStream("payment.properties"));
		
		String p0_Cmd = "Buy";//业务类型，固定值Buy
		String p1_MerId ="10001126856";//商号编码，在易宝的唯一标识
		String p2_Order ="345435235";//订单编码
		String p3_Amt = "0.01";//支付金额
		String p4_Cur = "CNY";//交易币种，固定值CNY
		String p5_Pid = "";//商品名称
		String p6_Pcat = "";//商品种类
		String p7_Pdesc = "";//商品描述
		String p8_Url = "http://172.21.95.65:8081/HibernateStrutsDemo/dd!back.action?myorder.id=345435235";//在支付成功后，易宝会访问这个地址。
		String p9_SAF = "";//送货地址
		String pa_MP = "";//扩展信息
		String pd_FrpId =getRequest().getParameter("YH");//支付通道
		String pr_NeedResponse = "1";//应答机制，固定值1
		
		//
		 // 2. 计算hmac
		 // 需要13个参数
		 // 需要keyValue
		 //需要加密算法
		 //
		String keyValue = props.getProperty("keyValue");
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
				p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
				pd_FrpId, pr_NeedResponse, keyValue);
		
		//
		 // 3. 重定向到易宝的支付网关
		 //
		StringBuilder sb = new StringBuilder("https://www.yeepay.com/app-merchant-proxy/node");
		sb.append("?").append("p0_Cmd=").append(p0_Cmd);
		sb.append("&").append("p1_MerId=").append(p1_MerId);
		sb.append("&").append("p2_Order=").append(p2_Order);
		sb.append("&").append("p3_Amt=").append(p3_Amt);
		sb.append("&").append("p4_Cur=").append(p4_Cur);
		sb.append("&").append("p5_Pid=").append(p5_Pid);
		sb.append("&").append("p6_Pcat=").append(p6_Pcat);
		sb.append("&").append("p7_Pdesc=").append(p7_Pdesc);
		sb.append("&").append("p8_Url=").append(p8_Url);
		sb.append("&").append("p9_SAF=").append(p9_SAF);
		sb.append("&").append("pa_MP=").append(pa_MP);
		sb.append("&").append("pd_FrpId=").append(pd_FrpId);
		sb.append("&").append("pr_NeedResponse=").append(pr_NeedResponse);
		sb.append("&").append("hmac=").append(hmac);
		
		getResponse().sendRedirect(sb.toString());
		
	    return null;
	}
   //改签
   public String change() {
       System.out.println("ddd");
       beforeline= orderdao.linemsgByOrdernum2(ordernum);
       pricemsg=orderdao.priceByLMDS(line.getLinename(),cfrq,seattype);
       Integer num=orderdao.countByOrdernum(ordernum);
       pricemsg=pricemsg*num;
       return "changecomfirm";
   }
   
   
   public OrderDAO getOrderdao() {
    return orderdao;
}
public void setOrderdao(OrderDAO orderdao) {
    this.orderdao = orderdao;
}
public Integer getUid() {
    return uid;
}
public void setUid(Integer uid) {
    this.uid = uid;
}

public PassengerDAO getPassengerdao() {
    return passengerdao;
}

public void setPassengerdao(PassengerDAO passengerdao) {
    this.passengerdao = passengerdao;
}

public String[] getPname() {
    return pname;
}

public void setPname(String[] pname) {
    this.pname = pname;
}

public String[] getPphone() {
    return pphone;
}

public void setPphone(String[] pphone) {
    this.pphone = pphone;
}

public String[] getPidcard() {
    return pidcard;
}

public void setPidcard(String[] pidcard) {
    this.pidcard = pidcard;
}



public Line getEntity() {
    return entity;
}

public void setEntity(Line entity) {
    this.entity = entity;
}

public LineDAO getLinedao() {
    return linedao;
}

public void setLinedao(LineDAO linedao) {
    this.linedao = linedao;
}



public List<String[]> getYdlinelist() {
    return ydlinelist;
}

public void setYdlinelist(List<String[]> ydlinelist) {
    this.ydlinelist = ydlinelist;
}

public List<String[]> getCklist() {
    return cklist;
}

public void setCklist(List<String[]> cklist) {
    this.cklist = cklist;
}

public String getCntName() {
    return cntName;
}

public void setCntName(String cntName) {
    this.cntName = cntName;
}

public String getCntPhone() {
    return cntPhone;
}

public void setCntPhone(String cntPhone) {
    this.cntPhone = cntPhone;
}

public String getSeattype() {
    return seattype;
}

public void setSeattype(String seattype) {
    this.seattype = seattype;
}

public String getOrderprice() {
    return orderprice;
}

public void setOrderprice(String orderprice) {
    this.orderprice = orderprice;
}

public String getAllprice() {
    return allprice;
}

public void setAllprice(String allprice) {
    this.allprice = allprice;
}

public String getOrdernum() {
    return ordernum;
}

public void setOrdernum(String ordernum) {
    this.ordernum = ordernum;
}

public String getPaytype() {
    return paytype;
}

public void setPaytype(String paytype) {
    this.paytype = paytype;
}
public SeatnumDAO getSeatnumdao() {
    return seatnumdao;
}
public void setSeatnumdao(SeatnumDAO seatnumdao) {
    this.seatnumdao = seatnumdao;
}
public String getOrderstatus() {
    return orderstatus;
}
public void setOrderstatus(String orderstatus) {
    this.orderstatus = orderstatus;
}

public List<String[]> getOrderlist() {
    return orderlist;
}
public void setOrderlist(List<String[]> orderlist) {
    this.orderlist = orderlist;
}
public boolean isAllOrder() {
    return AllOrder;
}
public void setAllOrder(boolean allOrder) {
    AllOrder = allOrder;
}
public List<String[]> getOrdermsg() {
    return ordermsg;
}
public void setOrdermsg(List<String[]> ordermsg) {
    this.ordermsg = ordermsg;
}
public List<String[]> getPassmsg() {
    return passmsg;
}
public void setPassmsg(List<String[]> passmsg) {
    this.passmsg = passmsg;
}
public String[] getTo() {
    return to;
}
public void setTo(String[] to) {
    this.to = to;
}
public String getHandleStatus() {
    return handleStatus;
}
public void setHandleStatus(String handleStatus) {
    this.handleStatus = handleStatus;
}
public String getSfz() {
    return sfz;
}
public void setSfz(String sfz) {
    this.sfz = sfz;
}
public String getDdz() {
    return ddz;
}
public void setDdz(String ddz) {
    this.ddz = ddz;
}
public String getCfrq() {
    return cfrq;
}
public void setCfrq(String cfrq) {
    this.cfrq = cfrq;
}
public Line getLine() {
    return line;
}
public void setLine(Line line) {
    this.line = line;
}
public List<String[]> getBeforeline() {
    return beforeline;
}
public void setBeforeline(List<String[]> beforeline) {
    this.beforeline = beforeline;
}
public Double getPricemsg() {
    return pricemsg;
}
public void setPricemsg(Double pricemsg) {
    this.pricemsg = pricemsg;
}






   

}
