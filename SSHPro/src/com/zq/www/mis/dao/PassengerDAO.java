package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.common.DataZh;
import com.zq.www.mis.entity.Passenger;

@Repository
public class PassengerDAO extends BaseDAO<Passenger> {
   /* public List<Passenger> mypassenger(Integer uid){
	List<Passenger> result=new ArrayList();
	String sql="SELECT c.id,c.phone, c.`name`,c.idcard \r\n" + 
	"from tuser a,pass_user b,passenger c \r\n" + 
	" where a.id=? AND b.pid=c.id";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, uid);
	result=(List<Passenger>)q.list();	
	return result;
    }*/
    
    
    ///添加关联我的乘客人
    public void addMypassenger(Integer uid,String[] p) {
	Passenger pass=new Passenger();
	pass.setName(p[0]);
	pass.setPhone(p[1]);
	pass.setIdcard(p[2]);
	save(pass);
	
	String sql="insert into pass_user(uid,pid) values(?,?)";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, uid);
	System.out.println(getLastId());
	q.setParameter(1,getLastId() );	
	q.executeUpdate();	
    }
    
    //获得最后一个数据的id
    public int getLastId() {
	int i=0;
	String sql="select * from passenger ORDER BY id DESC limit 0,1 ";
	Query q= gs().createSQLQuery(sql); 
	Object[] p= (Object[]) q.uniqueResult();
	String str=p[0].toString();
	i=Integer.parseInt(str);
	return i;
    }
    
    //查找指定身份证和用户id的关联乘客id
    public String searchByUsIdc(Integer uid,String idcard)
    {
	String pid;
	String sql="SELECT b.id AS 乘客id \r\n" + 
			"from tuser a,passenger b,pass_user c \r\n" + 
			"where a.id=? and c.uid=a.id and b.idcard=? and c.pid=b.id";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, uid);
	q.setParameter(1, idcard);
	pid=q.list().get(0).toString();	
	return pid;
    }
    
}
