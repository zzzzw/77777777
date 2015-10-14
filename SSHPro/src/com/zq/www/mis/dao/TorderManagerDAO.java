package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Torder;

/**
 * 
 * @author zzw
 *
 */
//业务逻辑DAO

//spring自动注入
@Repository
public class TorderManagerDAO extends BaseDAO<Torder> {
    public List<String[]> select()
    {	
	List<String[]> result1=new ArrayList<String[]>();
	String sql1="select id,ordernum,starttime,price,status  from torder WHERE status='退款申请'";
	Query q1=gs().createSQLQuery(sql1);
	result1=q1.list();
	return result1;	
    }
   public void updateStatus(Integer id)
     {
	 String sql="UPDATE torder SET status='已退款' WHERE id=?";
	 Query q=gs().createSQLQuery(sql);
	 q.setParameter(0, id);
	 q.executeUpdate();
     }

}
