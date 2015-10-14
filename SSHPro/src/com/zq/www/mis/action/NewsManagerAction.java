package com.zq.www.mis.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.NewsManagerDAO;
import com.zq.www.mis.entity.Admin;
import com.zq.www.mis.entity.News;



/**
 * For News Manager
 * 
 * @author gamei
 */
@Results({
		@Result(name = "listall", location = "/BacksAdmin/news/newslist.jsp"),
		@Result(name = "save-admin", location = "news!showAdminList.action", type = "redirect"),
		
		@Result(name = "Add", location = "/BacksAdmin/news/Add_v2.jsp"),
		@Result(name = "Delete", location = "/BacksAdmin/news/Delete.jsp"),
		@Result(name = "Modify", location = "/BacksAdmin/news/Modify.jsp"),
		@Result(name = "Find", location = "/BacksAdmin/news/Find.jsp"),
		@Result(name = "list", location = "news-manager!queryall.action", type = "redirect"),
		
		})
public class NewsManagerAction extends BaseAction {
	
	@Autowired
	NewsManagerDAO dao;
	private List<News> list;
	private List<News> NewsList;
	private News entity=new News();
	public  String imagename=" ";
	private File myFile;

	//展示所有新闻
	public String queryall(){
		list=dao.listall();
		return "listall";
	}
	      
	/*
	 * 转一下去Add.jsp页面
	 * */
	public String Anews() throws Exception{
	    return "Add";
	}
	public String Dnews() throws Exception {
	    NewsList =  dao. listall();
	  return "Delete";
	}
	public String Mnews() throws Exception {
	 NewsList =dao.listall();
	  return "Modify";
	}
	public String Fnews() throws Exception {
	   NewsList = dao.listall();
	  return "Find";
	}

	public String Add() throws Exception{
	    
	    if(myFile!=null) {
	     imagename=execute();
	    }else {
		imagename="null";
	    }
	    java.util.Date utilDate=new Date();
	    java.sql.Date sqlDate=new java.sql.Date(utilDate.getTime());     //java.util.Date 时间转换为java.sql.Date时间
	    Admin admin=  (Admin) ServletActionContext.getRequest().getSession().getAttribute("user");
	    entity.setClicknumber(0);
	    entity.setAuthor(admin.getName());
	    entity.setTitle(entity.getTitle());
	    entity.setAuthor(entity.getAuthor());
	    entity.setPubdate(sqlDate);
	    entity.setContent(entity.getContent());
	   entity.setImage(imagename);
	    entity.setType(entity.getType());
	 
	    dao.save(entity);
	    return "list";
	}

	
	public String Delete() throws Exception {
	    String a =getRequest().getParameter("fa");
    	if (a.equals("0")) {
    	 NewsList =  dao. listall();
    	    return "Delete";
    	}else {	
    	       String[] sourceStrArray=a.split(",");
    	 	for (int i = 0; i < sourceStrArray.length; i++) {
    	 	    Integer  sourceInteger=Integer.parseInt(sourceStrArray[i]);
			   if((sourceInteger!=0)&&(sourceInteger!=null)) {
    	 	   dao.delete(sourceInteger);
			   }
    	 	}
    	 	 NewsList =  dao. listall();
    		return "Delete";
    	    }
	}
	
	public String Modify() throws Exception {
	    
	    if(myFile!=null) {
		 imagename=execute();
	    }else {                              //由于思考不周，忘记了如果我不修改新闻插图时候，entity.image的值就是null，根本赋值不了，对象就无法建立起来，所以不断报错，说对象不存在。才出现了自己写upentity()代码的一幕。
		imagename=entity.getImage();
	    }
	    entity.setId(entity.getId());
	    entity.setTitle(entity.getTitle());
	    entity.setContent(entity.getContent());
	   entity.setImage(imagename);

	   dao.update(entity);  
	  NewsList =dao.listall();
	  return "Modify";
	}
	
	public String Find() throws Exception {
	   NewsList = dao.listall();
	  return "Find";
	}
	   
	
	
	
	
	
	/*
	 * Start--文件上传
	 * */
	  private static final long serialVersionUID = 572146812454l ;
	    private static final int BUFFER_SIZE = 16 * 1024 ;
	
	//    private File myFile;
	    private String contentType;
	    private String fileName;
	    private String imageFileName;
	    private String caption;
	   
	    private static void copy(File src, File dst) {
	        try {
	           InputStream in = null ;
	           OutputStream out = null ;
	            try {                
	               in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);
	               out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);
	                byte [] buffer = new byte [BUFFER_SIZE];
	                while (in.read(buffer) > 0 ) {
	                   out.write(buffer);
	               } 
	           } finally {
	                if ( null != in) {
	                   in.close();
	               } 
	                if ( null != out) {
	                   out.close();
	               } 
	           } 
	       } catch (Exception e) {
	           e.printStackTrace();
	       } 
	   } 
	   
	    private static String getExtention(String fileName) {
	        int pos = fileName.lastIndexOf( "." );
	        return fileName.substring(pos);
	   }  
	    
	   @Override
	    public String execute()     {        
	       imageFileName = new Date().getTime() + getExtention(fileName);
	       File imageFile = new File(ServletActionContext.getServletContext().getRealPath("/BacksAdmin/news/image") + "/" +imageFileName);
	     
	       String   path=ServletActionContext.getServletContext().getRealPath("/BacksAdmin/news/image"); 
	       File file=new File(path);
	               if(!file.exists()){
	                file.mkdirs();
	                
	               }
	       
	       copy(myFile, imageFile);
	         return imageFileName;
	   }   
	
	    public void setMyFileContentType(String contentType) {
	        this .contentType = contentType;
	   } 
	    public void setMyFileFileName(String fileName) {
	        this .fileName = fileName;
	   } 
	    public void setMyFile(File myFile) {
	        this .myFile = myFile;
	   } 
	    public String getImageFileName() {
	        return imageFileName;
	   } 
	    public String getCaption() {
	        return caption;
	   } 
	    public void setCaption(String caption) {
	        this .caption = caption;
	   } 
	
	
	
	/*
	 * End--文件上传
	 * */
	
	
	
	
	
	public List<News> getList() {
		return list;
	}
	
	public void setList(List<News> list) {
		this.list = list;
	}
	
	public List<News> getNewsList() {
	    return NewsList;
	}

	public void setNewsList(List<News> newsList) {
	    NewsList = newsList;
	}

	public News getEntity() {
	    return entity;
	}

	public void setEntity(News entity) {
	    this.entity = entity;
	}
	public File getMyFile() {
	    return myFile;
	}

	
}
