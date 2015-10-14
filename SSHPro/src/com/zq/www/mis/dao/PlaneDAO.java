package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Plane;

/**
 * 
 * 
 * @author gamei
 */
@Repository
public class PlaneDAO extends BaseDAO<Plane>{
    
    
    public List<Plane> queryfreeplanes(){
	List<Plane> planelist=new ArrayList();
	String sql="SELECT * FROM plane WHERE plane.`status`='空闲' and (plane.lname IS NULL OR plane.lname='') ";
	Query qr=gs().createSQLQuery(sql);
	
	
	
	return qr.list();
    }
    
    public Plane querybylinename(String name) {
	
	String sql="SELECT * FROM plane WHERE plane.lname=?";
	Query q=gs().createSQLQuery(sql).addEntity(Plane.class);
	q.setParameter(0, name);
	Plane p=(Plane) q.list().get(0);
	return p;
	
	
    }
    
   

}
