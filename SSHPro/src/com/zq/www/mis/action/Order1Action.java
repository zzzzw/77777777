package com.zq.www.mis.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.TorderManagerDAO;
/**
 * 
 * @author zzw 订单审核
 *
 */
@SuppressWarnings("serial")
@Results( { 
    @Result(name = "show", location = "/BacksAdmin/order_approve/list.jsp"),
    @Result(name = "shenhes", location = "/BacksAdmin/order_approve/list.jsp")
   
})
public class Order1Action extends BaseAction{
    @Autowired
    private TorderManagerDAO dao;
    List<String[]> orderlist;
    private Integer id;
    private String ajaxtext;
    
    
    
    
    
    
    
    
    
    
    
    //前台展示全部待审核的信息
    public String show1() throws Exception{
	orderlist=dao.select();
	this.ajaxSendJson(orderlist, true);
	return null;
    }
    //这个函数将对应参数的的支付状态修改为"已退款"
    public String shenhe() throws Exception{
	System.out.println("id="+id);	
	dao.updateStatus(id);
	this.ajaxSendSuccess();
	return null;
    }
    //批量修改
    public String shenhes() throws Exception
    {
	System.out.println("ajaxtext="+ajaxtext);	
	String[] a=ajaxtext.split(",");
	for(int i=1;i<a.length;i++)
	{
	    System.out.println("拆开的值是;"+a[i]);
	    dao.updateStatus(Integer.parseInt(a[i]));
	    
	}	
	return "shenhes";
    }
    
    
    
    
    
    
    
    
    
  
   

    
    public List<String[]> getOrderlist() {
        return orderlist;
    }
    public void setOrderlist(List<String[]> orderlist) {
        this.orderlist = orderlist;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getAjaxtext() {
        return ajaxtext;
    }
    public void setAjaxtext(String ajaxtext) {
        this.ajaxtext = ajaxtext;
    }
    
  }
