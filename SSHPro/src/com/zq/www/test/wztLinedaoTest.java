package com.zq.www.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zq.www.mis.dao.LineDAO;
import com.zq.www.mis.dao.NewsDAO;


public class wztLinedaoTest {
    ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml","hibernate-spring.xml");
	
	
	//默认命名 NewsDAO->newsDAO，
//也可自定义命名 @Repository(value="mydao")
	LineDAO dao = ctx.getBean("lineDAO", LineDAO.class);  
	
	public void test() {
	    dao.searchLine("深圳", "广州", "2015-08-12");
	}
}
