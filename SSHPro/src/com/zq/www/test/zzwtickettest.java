package com.zq.www.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zq.www.mis.dao.TicketDAO;




//测试dao
//1.打断点，调试
//2.写测试类
public class zzwtickettest {
	//加载配置文件
	ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml","hibernate-spring.xml");
	
	
	//默认命名 NewsDAO->newsDAO，
       //也可自定义命名 @Repository(value="mydao")
	TicketDAO dao = ctx.getBean("ticketDAO", TicketDAO.class);  
	//NewsDAO dao = ctx.getBean("newsDAO", NewsDAO.class);  
	
	
	@Test
	public void test() {
	    
	    
	    List<String[]> result=new ArrayList();
	    result=dao.price();
	    System.out.println(result.size());
	    /*for (String[] o : result) {
		System.out.println(o[0].toString() + "," + o[1].toString());

	    }*/
	    /*for(String[] a:result)
	    {
		for(int i=1;i<a.length;i++)
		{
		    System.out.print(a[i]+",");
		}
	    }*/
	 
	  
	   
	
	    
		
	}
}
