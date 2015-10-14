package com.zq.www.mis.action;

import java.io.BufferedInputStream;  
import java.io.BufferedOutputStream;  
import java.io.File;  
import java.io.FileInputStream;  
import java.io.FileOutputStream;  
import java.io.InputStream;  
import java.io.OutputStream;  
import java.util.Date;

import org.apache.struts2.ServletActionContext;  
import org.apache.struts2.convention.annotation.Action;  
import org.apache.struts2.convention.annotation.InterceptorRef;  
import org.apache.struts2.convention.annotation.InterceptorRefs;  
import org.apache.struts2.convention.annotation.Result;  
import org.apache.struts2.convention.annotation.Results;  
  
import com.opensymphony.xwork2.ActionSupport;  
import com.zq.www.common.BaseAction;
  
 
@Results({ @Result(name = "success", location = "/result.jsp"), 
    @Result(name = "null", location = "/BacksAdmin/news/Add.jsp")     
})  
public class FileUploadAction extends BaseAction {  
  
    private static final long serialVersionUID = 572146812454l ;
    private static final int BUFFER_SIZE = 16 * 1024 ;
   
    private File myFile;
    private String contentType;
    private String fileName;
    private String imageFileName;
    private String caption;
   
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
       File imageFile = new File(ServletActionContext.getServletContext().getRealPath("/ImageUpload") + "/" +imageFileName);
       copy(myFile, imageFile);
        return "null";
   }   

}  