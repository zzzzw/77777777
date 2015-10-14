package com.zq.www.mis.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Discount;

/**
 * 该类用于后台折扣信息管理数据的 操作
 * 
 * @author gamei;
 * 
 */
@Repository
public class DiscountManagerDAO extends BaseDAO<Discount>{

    public boolean indate(Discount dis) {
	
	String sql="select * from discount where starttime <= ? and endtime >=? and id !=?";
	Query q=gs().createSQLQuery(sql);
	Query q1=gs().createSQLQuery(sql);
	q.setParameter(0, dis.getStarttime());
	q.setParameter(1, dis.getStarttime());
	q.setParameter(2, dis.getId());
	q1.setParameter(0, dis.getEndtime());
	q1.setParameter(1, dis.getEndtime());
	q1.setParameter(2, dis.getId());
	int i=q.list().size();
	int k=q1.list().size();
	if(i>=1||k>=1)
	    return false;   //返回 false  说明有记录，不能被更新或删除
	else 
	    return true;
	
	
    }
    public boolean indateforUI(Discount dis) {
	
	String sql="select * from discount where starttime <= ? and endtime >=? ";
	Query q=gs().createSQLQuery(sql);
	Query q1=gs().createSQLQuery(sql);
	q.setParameter(0, dis.getStarttime());
	q.setParameter(1, dis.getStarttime());

	q1.setParameter(0, dis.getEndtime());
	q1.setParameter(1, dis.getEndtime());
	
	int i=q.list().size();
	int k=q1.list().size();
	if(i>=1||k>=1)
	    return false;   //返回 false  说明有记录，不能被更新或删除
	else 
	    return true;
	
	
    }
    
    
    

}
