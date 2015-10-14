package com.zq.www.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zq.www.mis.dao.TuserDAO;
import com.zq.www.mis.entity.Tuser;



//测试dao
//1.打断点，调试
//2.写测试类
public class ZzwTestTuserDAO {
	//加载配置文件
	ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml","hibernate-spring.xml");
	
	
	//默认命名 NewsDAO->newsDAO，
       //也可自定义命名 @Repository(value="mydao")
	TuserDAO dao = ctx.getBean("tuserDAO", TuserDAO.class);  
	//NewsDAO dao = ctx.getBean("newsDAO", NewsDAO.class);  
	
	
	@Test
	public void test() {
	         //添加T_user的模块测试
		//System.out.println(dao.listall().size());
		Tuser user=new Tuser();
		user.setIdcard("123456789");
		user.setName("zengzhiwwei");
		user.setPhone("66556655");
		user.setPsw("mh370");
		user.setType("银牌会员");
		user.setSex("男");
		user.setAccount("123456789a");
		dao.save(user);
	}
}
