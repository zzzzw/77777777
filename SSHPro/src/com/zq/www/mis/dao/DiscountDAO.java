package com.zq.www.mis.dao;
//import java.text.SimpleDateFormat;
//import java.util.Date;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Discount;
@Repository
public class DiscountDAO extends BaseDAO<Discount> { 
   /* public String  search(String dis,Discount discount)
    {
	String result = null;
	
	      SimpleDateFormat bartDateFormat =  
	        new SimpleDateFormat("yyyy-MM-dd");  
	       String dateStringToParse = "date";  
	       try {  
	        java.util.Date date1 = bartDateFormat.parse(dateStringToParse);  
	        java.sql.Date sqlDate = new java.sql.Date(date1.getTime());
	        System.out.println(sqlDate.getTime());  
	       }  
	       catch (Exception ex) {  
	        System.out.println(ex.getMessage());  
	       }
	
	 if(dis.toString().equals("discount"))
	 {	    
	     java.sql.Date sd;
	     sd = new java.sql.Date(date.getTime());
	     String sql="SELECT discount as a from discount where id=1";
	     Query q = gs().createSQLQuery(sql);
	     result=q.toString();q.
	  
	     //price=Double.valueOf(q.toString()).doubleValue();
	     //price=Double.valueOf(q.toString())*price;
         }
	 else if(dis.toString().equals("children"))
	 {
	     String sql1="SELECT children as b from discount where id=1";
	     Query q1 = gs().createSQLQuery(sql1);
	    // price=Double.valueOf(q.toString())*price;
	     
	 }
	 else if(dis.toString().equals("adult"))
	 {
	     String sql2="SELECT adult as c from discount where id=1";
	     Query q2 = gs().createSQLQuery(sql2);
	     //price=Double.valueOf(q.toString())*price;
	 }
	 else if(dis.toString().equals("golden"))
	 {
	     String sql3="SELECT golden as d from discount where id=1";
	     Query q3 = gs().createSQLQuery(sql3);
	    // price=Double.valueOf(q.toString())*price;
	 }
	 else if(dis.toString().equals("silver"))
	 {
	     String sql4="SELECT silver from discount where id=1";
	     Query q4 = gs().createSQLQuery(sql4);
	     //price=Double.valueOf(q.toString())*price;
	 }
	 return result;
    }*/
    //获取全部折扣类型
    public List<String[]> search(){
	List<String[]> result =new ArrayList();
	
	java.util.Date  date=new java.util.Date();
	java.sql.Date  data1=new java.sql.Date(date.getTime());
	String sql2="SELECT * from discount where ?>=starttime and ?<=endtime ";
	Query q2 = gs().createSQLQuery(sql2);
	q2.setParameter(0, data1);
	q2.setParameter(1, data1);	
        return result=q2.list();
        
        
        
	
	
    }
}
