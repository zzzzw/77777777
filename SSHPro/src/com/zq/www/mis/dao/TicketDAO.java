package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Ticket;


//业务逻辑DAO

//spring自动注入
@Repository
public class TicketDAO extends BaseDAO<Ticket> {
    @SuppressWarnings("unchecked")
    public List<String[]> price()
    {
	List<String[]> result=new ArrayList<String[]>();
	String sql="SELECT sum(price) 销售总计 FROM ticket GROUP BY month(buydate)";
	Query q1=gs().createSQLQuery(sql);	
	result=q1.list();
	return result;
	
	
    }

}
