package com.zq.www.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zq.www.mis.dao.PassengerDAO;
import com.zq.www.mis.entity.Passenger;



//测试dao
//1.打断点，调试
//2.写测试类
public class ZzwTestPassengerDAO {
	//加载配置文件
	ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml","hibernate-spring.xml");
	
	
	//默认命名 NewsDAO->newsDAO，
       //也可自定义命名 @Repository(value="mydao")
	PassengerDAO dao = ctx.getBean("passengerDAO", PassengerDAO.class);  
	//NewsDAO dao = ctx.getBean("newsDAO", NewsDAO.class);  
	
	
	@Test
	public void test() {
	    //passenger模块的测试
		//System.out.println(dao.listall().size());
		Passenger ps=new Passenger();
		
		ps.setIdcard("123456123456");
		ps.setName("张三李四");
		dao.save(ps);
	}
}
