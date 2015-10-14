package com.zq.www.mis.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.NewsDAO;
import com.zq.www.mis.dao.NewsManagerDAO;
import com.zq.www.mis.entity.News;

//业务处理Action

//action是多实例的，对每一个请求都会new一个action,所以不必担心，参数会冲突
@SuppressWarnings("serial")
@Results( { @Result(name = "news-list", location = "/news/news-list.jsp"),
		@Result(name = "news-show", location = "/news/news-show.jsp"),
		@Result(name = "news-admin", location = "/news/news-admin.jsp"),
		@Result(name = "save-admin", location = "news!showAdminList.action" ,type="redirect"),
		@Result(name = "news-admin-input", location = "/news/news-admin-input.jsp")		
		  })
public class NewAction extends BaseAction {
        @Autowired
	NewsDAO dao;
	private List<News> list;
	private News entity=new News();
	

	//展示所有新闻
	public String showAll(){
		list=dao.listall();
		try {
		    this.ajaxSendJson(list, true);
		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}	
		return null;
	}


	public List<News> getList() {
	    return list;
	}


	public void setList(List<News> list) {
	    this.list = list;
	}


	public News getEntity() {
	    return entity;
	}


	public void setEntity(News entity) {
	    this.entity = entity;
	}
	      

	
	
	
	
}
