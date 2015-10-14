package com.zq.www.mis.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.zq.www.common.BaseAction;
import com.zq.www.common.TokenProccessor;
import com.zq.www.mis.dao.DiscountDAO;
import com.zq.www.mis.dao.LineDAO;
import com.zq.www.mis.dao.LineManagerDAO;
import com.zq.www.mis.dao.SeatnumDAO;
import com.zq.www.mis.dao.TicketDAO;
import com.zq.www.mis.entity.Discount;
import com.zq.www.mis.entity.Line;
import com.zq.www.mis.entity.Seatnum;
import com.zq.www.mis.entity.Ticket;


/*
 * zzw 后台订票
 */
@SuppressWarnings("serial")
@Results( { 		
		@Result(name = "search", location = "/BacksAdmin/flight/chapiao1.jsp"),
		@Result(name = "yd", location = "/BacksAdmin/flight/chapiao2.jsp"),
		@Result(name = "zf", location = "/BacksAdmin/flight/chapiao3.jsp"),
		@Result(name = "q6", location = "/BacksAdmin/flight/q6.jsp")
		  })
public class Line1Action extends BaseAction{
     
    @Autowired
    private LineDAO linedao;
    @Autowired
    private LineManagerDAO linemdao;
    @Autowired
    private TicketDAO tdao;     //票价的DAO
    @Autowired
    private SeatnumDAO seatDAO;  //操作座位表的DAO 
    @Autowired
    private DiscountDAO disdao; //discountDAO
    
    
    //----------------------------------------------------------------------------------------------------
    
    private String sfz;          //始发站
    private String ddz;          //终点站
    private String cfrq;         //始发日期
    private List<String[]> hblist;
    private List<String[]> hblist1;
    private String radio1;       //获取radio的值
    private Line entity;
    private Ticket ticket;     
    private Seatnum seatnum;     //seatnum实体   
    private Discount discount;   //discount
    private double price;        //接收前台传过来的价格
    private float price1;        //计算折扣之后的价格
    private double radio2;      //获取radio2的值
  
    
    
    
  //--------------------------------------------------------------------------------------------  
    
    //支付接口全部参数
    private String orderid="111";
    //private String amount="String.valueOf(price1)";
    private String amount="price1";
    private String pd_FrpId;
    //private String p1_MerId="10000432521";
    private String p1_MerId="10001126856";
    //private String keyValue="8UPp0KE8sq73zVP370vko7C39403rtK1YwX40Td6irH216036H27Eb12792t";
    //69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl
    private String keyValue="69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl";
    private String merchantCallbackURL="localhost:8080/";
    private String messageType="Buy";
    private String currency="CNY";
    private String productDes="";
    private String productCat="";
    private String productId="";
    private String addressFlag="0";
    private String sMctProperties="";
    private String pr_NeedResponse="";
    private String md5hmac=linemdao.buildHmac(messageType,p1_MerId,orderid,amount,currency,
	    productId,productCat,productDes,merchantCallbackURL,addressFlag,sMctProperties,
	    pd_FrpId,pr_NeedResponse,keyValue);
    
    
    
    
    //-------------------------------------------------------------------------------------------------
    //后台查询航班页面
    public String czhb() throws Exception {
	System.out.print(cfrq);
	hblist=linemdao.searchLine(sfz, ddz, cfrq);
	
	return "search";
    }
    //后台买票页面
    public String yd() throws Exception{
	
	String token = TokenProccessor.getInstance().makeToken();//创建令牌
	System.out.println("在FormServlet中生成的token："+token);
	getRequest().getSession().setAttribute("token", token);  //在服务器使用session保存token(令牌)
	System.out.println(entity.getId());
	System.out.println(radio1.toString());
        hblist=linemdao.buy(entity.getId(),radio1);//跳转到下一个页面	
        seatDAO.save1(seatnum,seatDAO,radio1);	//飞机座位被订走了一个
       
        hblist1=disdao.search();//获取折扣各类型的价格
        return "yd";
    }
    //跳转到后台支付页面
    public String zf() throws Exception
    {	
	boolean b = isRepeatSubmit(getRequest());//判断用户是否是重复提交
        if(b==true){
            System.out.println("请不要重复提交");
            return "zf";
        }
        getSession().removeAttribute("token");//移除session中的token
        System.out.println("处理用户提交请求！！");
	price1=(float)price*(float)radio2;
	ticket.setPrice(price1);
	//设置ticket的时间
	java.util.Date  date=new java.util.Date();
	java.sql.Date  data1=new java.sql.Date(date.getTime());
	ticket.setBuydate(data1);
	tdao.save(ticket);	
	System.out.print(price1);	
	return "zf";

    }
    //ajax修改票价的价格
    public String modify1() throws Exception
    {
	price1=(float)price*(float)radio2;
	this.getResponse().getWriter().write(JSON.toJSONString(price1));
	return null;
    }
    //选择银行进行付款
    public String fukuan() throws Exception
    {
	System.out.println("接受的总和为："+price1);		
	System.out.println("传到jsp页面");	
	System.out.println(pd_FrpId);
	return "q6";	
    }
    
    /**
     * 判断客户端提交上来的令牌和服务器端生成的令牌是否一致
     * @param request
     * @return 
     *         true 用户重复提交了表单 
     *         false 用户没有重复提交表单
     */
    private boolean isRepeatSubmit(HttpServletRequest request) {
        String client_token = request.getParameter("token");
        //1、如果用户提交的表单数据中没有token，则用户是重复提交了表单
        if(client_token==null){
            return true;
        }
        //取出存储在Session中的token
        String server_token = (String) request.getSession().getAttribute("token");
        //2、如果当前用户的Session中不存在Token(令牌)，则用户是重复提交了表单
        if(server_token==null){
            return true;
        }
        //3、存储在Session中的Token(令牌)与表单提交的Token(令牌)不同，则用户是重复提交了表单
        if(!client_token.equals(server_token)){
            return true;
        }
        
        return false;
    }

    //----------------------------------------------------------------------------------------------------
    public LineDAO getLinedao() {
        return linedao;
    }
    public void setLinedao(LineDAO linedao) {
        this.linedao = linedao;
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
    public List<String[]> getHblist() {
        return hblist;
    }
    public void setHblist(List<String[]> hblist) {
        this.hblist = hblist;
    }
    
    public String getRadio1() {
        return radio1;
    }
    public void setRadio1(String radio1) {
        this.radio1 = radio1;
    }
    public Line getEntity() {
        return entity;
    }
    public void setEntity(Line entity) {
        this.entity = entity;
    }

    public Ticket getTicket() {
        return ticket;
    }
    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }
    
    public TicketDAO getTdao() {
        return tdao;
    }
    public void setTdao(TicketDAO tdao) {
        this.tdao = tdao;
    }
    public Seatnum getSeatnum() {
        return seatnum;
    }
    public void setSeatnum(Seatnum seatnum) {
        this.seatnum = seatnum;
    }
    public SeatnumDAO getSeatDAO() {
        return seatDAO;
    }
    public void setSeatDAO(SeatnumDAO seatDAO) {
        this.seatDAO = seatDAO;
    }
    public LineManagerDAO getLinemdao() {
        return linemdao;
    }
    public void setLinemdao(LineManagerDAO linemdao) {
        this.linemdao = linemdao;
    }
 
    public Discount getDiscount() {
        return discount;
    }
    public void setDiscount(Discount discount) {
        this.discount = discount;
    }
    public DiscountDAO getDisdao() {
        return disdao;
    }
    public void setDisdao(DiscountDAO disdao) {
        this.disdao = disdao;
    }
   public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
  
    public List<String[]> getHblist1() {
        return hblist1;
    }
    public void setHblist1(List<String[]> hblist1) {
        this.hblist1 = hblist1;
    }
    public double getRadio2() {
        return radio2;
    }
    public void setRadio2(double radio2) {
        this.radio2 = radio2;
    }
    public float getPrice1() {
        return price1;
    }
    public void setPrice1(float price1) {
        this.price1 = price1;
    }
    public String getOrderid() {
        return orderid;
    }
    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }
    public String getAmount() {
        return amount;
    }
    public void setAmount(String amount) {
        this.amount = amount;
    }
    public String getPd_FrpId() {
        return pd_FrpId;
    }
    public void setPd_FrpId(String pdFrpId) {
        pd_FrpId = pdFrpId;
    }
    public String getP1_MerId() {
        return p1_MerId;
    }
    public void setP1_MerId(String p1MerId) {
        p1_MerId = p1MerId;
    }
    public String getKeyValue() {
        return keyValue;
    }
    public void setKeyValue(String keyValue) {
        this.keyValue = keyValue;
    }
    public String getMerchantCallbackURL() {
        return merchantCallbackURL;
    }
    public void setMerchantCallbackURL(String merchantCallbackURL) {
        this.merchantCallbackURL = merchantCallbackURL;
    }
    public String getMessageType() {
        return messageType;
    }
    public void setMessageType(String messageType) {
        this.messageType = messageType;
    }
    public String getCurrency() {
        return currency;
    }
    public void setCurrency(String currency) {
        this.currency = currency;
    }
    public String getProductDes() {
        return productDes;
    }
    public void setProductDes(String productDes) {
        this.productDes = productDes;
    }
    public String getProductCat() {
        return productCat;
    }
    public void setProductCat(String productCat) {
        this.productCat = productCat;
    }
    public String getProductId() {
        return productId;
    }
    public void setProductId(String productId) {
        this.productId = productId;
    }
    public String getAddressFlag() {
        return addressFlag;
    }
    public void setAddressFlag(String addressFlag) {
        this.addressFlag = addressFlag;
    }
    public String getsMctProperties() {
        return sMctProperties;
    }
    public void setsMctProperties(String sMctProperties) {
        this.sMctProperties = sMctProperties;
    }
    public String getPr_NeedResponse() {
        return pr_NeedResponse;
    }
    public void setPr_NeedResponse(String prNeedResponse) {
        pr_NeedResponse = prNeedResponse;
    }
    public String getMd5hmac() {
        return md5hmac;
    }
    public void setMd5hmac(String md5hmac) {
        this.md5hmac = md5hmac;
    }
    
  }
