package com.zq.www.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class wztQuartz {

    /**
     * @param args
     */
    public static void main(String[] args) {
	   ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml","hibernate-spring.xml");
	 //  ctx.getBean("startQuertz");

    }

}
