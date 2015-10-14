package com.zq.www.mis.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sun.istack.internal.FinalArrayList;
import com.sun.xml.internal.ws.addressing.WsaClientTube;
import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Admin;

//业务逻辑DAO

//spring自动注入
@Repository
public class EmployeeManagementDAO<T> extends BaseDAO<Admin>{

    //通过hql语句查询DB中的account的值
//    public List<Admin> getListByHQL(final String hqlString, final List values) {
//	Query query = gs().createQuery(hqlString);
//	if (values != null) {
//		Object[] vvs = values.toArray(new Object[values.size()]);
//		for (int i = 0; i < vvs.length; i++) {
//			query.setParameter(i, vvs[i]);
//		}
//	}
//	return query.list();
//    }
    
    
//    public List<T> getpsw(final String hqlString, final String  value) {
//	Query query = gs().createQuery(hqlString);
//	if (value != null) {
//		//Object[] vvs = value.toArray(new Object[value.size()]);
//		//for (int i = 0; i < vvs.length; i++) {
//		//	query.setParameter(i, vvs[i]);
//		//}
//	    query.setParameter(0, value);
//	    System.out.println("fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff的值是："+query.list());
//	}
//	return query.list();
//}
//    

    /*
	 * 模糊查询
	 * */
	// 使用Hql查询站名里含"该变量"的所有账号信息
	public List findem(String propertyName) {
		// 通过占位符传参
		String querystring = "from Admin as a where a.id like ? or a.account like ? ";

		//查询
		Query queryObject = gs().createQuery(querystring);
		queryObject.setParameter(0, "%" + propertyName + "%"); // 传参
		return queryObject.list();
	}

    
	/*
	 * 查询全部
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Admin> listem() {
	    List<Admin> result=gs().createCriteria(getEntityClass()).list();
		return result;
	} 

		//匹配用户名和密码是否匹配	//匹配就返回1否则返回0
	    public Admin getAdminByUsernamepass(Admin admin) {
		String sql="select *from admin where account=? and psw=? ";
//		String sql="select *from admin where account=' " +admin.getAccount()+ "  'and psw='  " + admin.getPsw()+ "  ' ";
		
		Query query=gs().createSQLQuery(sql).addEntity(Admin.class);//gs()代表session，即获取到了session。
		query.setParameter(0, admin.getAccount());//依次为上面的SQL语句赋值，从0开始。
		query.setParameter(1, admin.getPsw());
		 List<Admin> list=   query.list();
		 Admin employee=null;
		  System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaList的值："+list);
////		if (query.list().size()==1) {        //符合这个账号且密码对应的话就会返回一条信息，这个list就是一个集合来的。
		  if (query.list().size()==0) { 
		    System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbSize的值："+query.list().size());
//		    List<Admin> list=   query.list();
//		     employee=list.get(0);
		    System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbEMPLOYEE的值："+employee);
		}else {
		    employee=(Admin) query.list().get(0);
		    System.out.println("bffffffffffffffffffffffffffffaaaaaaaaaaaaaaaaaaaaaaaaaaaffffffffffffffffffffSize的值："+query.list().size());
		}
		 //1代表登录成功，用户名和密码都成功匹配。
////		 if(list.size()==1) {	 
////		   return employee;	   
		  System.out.println("beeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeEMPLOYEE的值："+employee);
		     return employee;	 
////		 }else {
////		     return null;
////		 }	     
	    }
	    
//	  //通过hql语句查询DB中的psw的值
//	    public List<Admin> getPswByHQL(String hqlString) {
//		Query query = gs().createQuery(hqlString);
//		return query.list();
//	}
//	    
	    public List getaccount () {
		  String hqlString="select a.account from com.zq.www.mis.entity.Admin as a";
          	   List aa=getListByHQL(hqlString,null);
          	   return aa;
	    }
	    
//	    public String  correctname() {
//		String correctnameString=getaccount();
//		return correctnameString;
//	    }
	    
	    
//	    public List getpassword( String account)  {
//		  String hqlString="select a.psw from com.zq.www.mis.entity.Admin as a";
//         	   List psw=getpsw(hqlString,account);
//		return psw;
//	    }
//	    
//	    
}