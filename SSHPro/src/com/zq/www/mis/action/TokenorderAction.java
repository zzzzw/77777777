package com.zq.www.mis.action;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.LineDAO;
import com.zq.www.mis.dao.OrderDAO;
import com.zq.www.mis.dao.PassengerDAO;
import com.zq.www.mis.dao.SeatnumDAO;
import com.zq.www.mis.entity.Line;
import com.zq.www.mis.entity.Torder;

@SuppressWarnings("serial")

@InterceptorRefs ({
    @InterceptorRef(value = "token"),
@InterceptorRef(value = "defaultStack")
    })
    
@Results( { 
    @Result(name = "payment", location = "/before/order/jsp/payment.jsp"),
@Result(name = "confirm", location = "/before/order/jsp/confirm.jsp"),
@Result(name = "invalid.token", location = "/before/order/jsp/payment.jsp")
})

public class TokenorderAction extends BaseAction {
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
    private boolean AllOrder;//是否查找所有订单

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





   

}
