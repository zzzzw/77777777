package com.zq.www.mis.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.LineManagerDAO;
import com.zq.www.mis.dao.MainManagerDAO;
import com.zq.www.mis.dao.NewsManagerDAO;
import com.zq.www.mis.entity.News;

/**
 * 该类用于后台主面板管理模块的信息处理
 * 2015/9/19
 * @author gamei;
 * 
 */
public class MainManagerAction extends BaseAction{
    @Autowired
    MainManagerDAO dao;
    @Autowired
    private LineManagerDAO linemdao;
    @Autowired
    private NewsManagerDAO newsdao;
    private String scity;
    private String ecity;
    
    private List<String[]> hblist;
    //主面板第一行的ajax请求
    public void firstajax() {
	
	String[] result=dao.queryfirst();
	try {
	    BaseAction.ajaxSendJson(result, false);
	} catch (Exception e) {
	    e.printStackTrace();
	}
	
	
	
	
    }
    //主面板新闻查询
    public void newsajax() {
        List<News> listnews=newsdao.querymainnews();
        try {
	    BaseAction.ajaxSendJson(listnews,false);
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }
    
    
    //各公司销售统计（默认）
    public void defaultsale() {
	Map map= dao.defaultquery();
	try {
	    BaseAction.ajaxSendJson(map);
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }
    
    
    //会员统计
    public void queryleaguer() {
	Map map= dao.defaultleaguer();
	try {
	    BaseAction.ajaxSendJson(map);
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }
    //快速航班查詢
    public void querybycity() {
	Date today=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String d=sdf.format(today);
	System.out.println(scity);
	System.out.println(ecity);
	System.out.println(d);
	hblist=linemdao.searchLine(scity, ecity, d);
//	 String[] a =hblist.get(0);
//	 for (int i = 0; i < a.length; i++) {
//	    System.out.println(a[i]);
//	}
	try {
	    BaseAction.ajaxSendJson(hblist,true);
	} catch (Exception e) {
	    e.printStackTrace();
	}
	
	
    }


    public String getScity() {
        return scity;
    }


    public void setScity(String scity) {
        this.scity = scity;
    }


    public String getEcity() {
        return ecity;
    }


    public void setEcity(String ecity) {
        this.ecity = ecity;
    }


    public List<String[]> getHblist() {
        return hblist;
    }


    public void setHblist(List<String[]> hblist) {
        this.hblist = hblist;
    }

    
    
    
}
