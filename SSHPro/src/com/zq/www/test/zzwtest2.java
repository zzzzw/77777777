package com.zq.www.test;

import java.sql.Time;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zq.www.mis.dao.TorderDAO;
import com.zq.www.mis.entity.Torder;


//测试dao
//1.打断点，调试
//2.写测试类
public class zzwtest2 {
	//加载配置文件
	ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml","hibernate-spring.xml");
	
	
	//默认命名 NewsDAO->newsDAO，
       //也可自定义命名 @Repository(value="mydao")
	TorderDAO dao = ctx.getBean("torderDAO", TorderDAO.class);  
	//NewsDAO dao = ctx.getBean("newsDAO", NewsDAO.class);  
	
	
	@Test
	public void test() {
	         //添加Torder的模块测试
		//System.out.println(dao.listall().size());
	    Torder order=new Torder();
	    order.setContacter("曾志伟");
	    order.setLid(13);
	    order.setOrdernum("m123456");
	    order.setPhone("15766228259");
	    order.setPid(55);
	    order.setPrice(6666.0);
	    order.setSeat("头等舱");
	    order.setStatus("未支付");
	    order.setUid(123);
	    order.setStarttime(Time.valueOf("20:12:36"));
	    dao.save(order);
	    
	   
	
	    
		
	}
}
