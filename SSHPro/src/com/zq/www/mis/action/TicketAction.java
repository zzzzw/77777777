package com.zq.www.mis.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.TicketDAO;



/**
 * discount用来显示报表的 
 * @author zzw;
 * 
 */
public class TicketAction extends BaseAction
{
    @Autowired
    private TicketDAO dao;
    private List<String[]> list;
    
    
    
    public String result() throws Exception
    {
	list=dao.price();		
	System.out.println("");	
	this.ajaxSendJson(list, false);
	return null;
    }



    public List<String[]> getList() {
        return list;
    }



    public void setList(List<String[]> list) {
        this.list = list;
    }
    

}
