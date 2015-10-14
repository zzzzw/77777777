package com.zq.www.test;


import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.mis.dao.OrderDAO;

public class MyJob implements  Job{
    
    @Autowired
    OrderDAO orderdao;
    public void work()  {  
       orderdao.updateRmnTime(2);
       orderdao.updateOrderstatus();
    }

    public void execute(JobExecutionContext arg0) throws JobExecutionException {
	       orderdao.updateRmnTime(2);
	
    }

}
