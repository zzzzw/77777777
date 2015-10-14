package com.zq.www.mis.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.support.RequestContext;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.EmployeeManagementDAO;
import com.zq.www.mis.entity.Admin;




//业务处理Action

//action是多实例的，对每一个请求都会new一个action,所以不必担心，参数会冲突
//redirect是表示重定向，而不是转发，这样子就可以避免在刷新时候又插入一堆数据。
//redirect不能随便用，否则数据传不到页面，也就无法在jsp页面遍历，因此得到为空的操作。
//删、改、查动作不要用重定向，否则数据就会丢失的。
@SuppressWarnings("serial")
@Results( { @Result(name = "Add", location = "/BacksAdmin/Employee/Add.jsp" ,type="redirect"),
		     @Result(name = "Delete", location = "/BacksAdmin/Employee/Delete.jsp"),
		     @Result(name = "Modify", location = "/BacksAdmin/Employee/Modify.jsp"),
		     @Result(name = "Select", location = "/BacksAdmin/Employee/Select.jsp"),
		     @Result(name = "Addcsv", location = "/BacksAdmin/Employee/Add.jsp" ,type="redirect"),
		     @Result(name = "Login", location = "/login_back.jsp"),
		     @Result(name = "Index", location = "/BacksAdmin/index.jsp" ,type="redirect"),
		     @Result(name = "Setting", location = "/BacksAdmin/Employee/Setting.jsp")
		     
		
		})

/*
 * @author MWL
 * */

public class EmployeeAction extends BaseAction {

	//引入的DAO
	//spring自动注入
	@Autowired
	private EmployeeManagementDAO<Admin> dao;

	// 属性参数
	private List<Admin> EmployeeList;

	// 拿实体类当组合参数，实际上是它的属性帮我们传参了，常用
	private Admin entity;

	private Admin employee = new Admin();
	 private String lujing;
	    Integer yn=0;   // 判断用的
	 private String message;
	 public  String imagename=" ";
	 
	 
	 ////////////////////内部类//////////////////////////////////////////////////////////////////////////////////////////
	 /*
	  * 内部类继承father类
	  * */
//	 class fileup extends Fileupload{
//	     public String upload() {
//		return super.upload();
//	    }
//	 }
//	 
	 ///////////////////////////end/////////////////////////////////////////////////////////////////////////////
	 

//         //管理员登录      //第一次编写
//        public String Login() throws Exception {
//            //整个实体都给你返回来了
//            Admin employ = dao.getAdminByUsernamepass(entity);
//            //1代表登录成功，用户名和密码都成功匹配。
//	      if(employ!=null) {
//		  //entity=dao.get(Integer.parseInt(employ.getAccount()));
//		  ServletActionContext.getRequest().getSession().setAttribute("user", employ);//设置session
//		    return "Index";
//		}
//		else {
//		    return "Login";
//		}
//	    }    
        





		//第二次编写
        //管理员登录
        public String Login() throws Exception {
            //整个实体都给你返回来了
            Admin employee = dao.getAdminByUsernamepass(entity);
            //1代表登录成功，用户名和密码都成功匹配。
	      if(employee!=null) {
		  ServletActionContext.getRequest().getSession().setAttribute("user", employee);//设置session
		    return "Index";
		}
		else {
		    return "Login";
		}
	   }    
        
    
        public String Logout() throws Exception {
        //    ServletActionContext.getRequest().getSession(false);//防止创建session
          //清空session
            ServletActionContext.getContext().getSession().clear();
            //使HttpSession失效
            ServletActionContext.getRequest().getSession().invalidate();
	    return "Login";
	}
        
      
        
        
        
        //管理员登录2
//        public String Logining() throws Exception {
//            String username=entity.getAccount().replace(" ", "");
//            String password=entity.getPsw().replace(" ", "");
//            String hqlString = "select a.psw from com.zq.www.mis.entity.Admin as a  where a.account='"+entity.getAccount()+"'";
//  	     List<Admin> aa=dao.getPswByHQL(hqlString);
// 	    for (int j = 0; j < aa.size(); j++) {
// 		if (password.equals(aa.get(j))) {
// 		   return "Add";
//		}else {
//		    return "Login";
//		}
//	    }
// 	    return null;
//        }    
//        
        
	/*
	 * 转一下去Add.jsp页面
	 * */
	public String A() throws Exception{
	    return "Add";
	}
	   public String Find() throws Exception {
	       EmployeeList =  dao. listem();
		return "Delete";
	    }
	   public String Find1() throws Exception {
	       EmployeeList =dao. listem();
		return "Modify";
	    }
	   public String Find2() throws Exception {
	       EmployeeList = dao. listem();
		return "Select";
	    }
	   
	   
        
	//后台插入数据
	//前提是：先获取数据库员工账号信息，与即将插入账号匹配，相同时，string置为y,否者置为n，当string为n，时候插入entity数据信息。
	public String Add() throws Exception{
	    
	    String imagename=execute();
	    String[] ac=entity.getAccount().split(",");
	    String[] ps=entity.getPsw().split(",");
	    String[] ty=entity.getType().split(",");
	    String[] na=entity.getName().split(",");
    
       for (int i = 0; i <ac.length; i++) {
           List aa=dao.getaccount();
           String string="n";
    	//如果传个空格进来就设置string为y，当string是y时候就不做存储的动作，否则当string是n的时候就做存储的动作。
	for (int j = 0; j < aa.size(); j++) {
		   if(ac[i].replace(" ","").equals(aa.get(j))||(ac[i]==null)||(ac[i].equals(" "))|| (ps[i].equals(" "))|| (ps[i]==null)) {
	      string="y";
	      break;
	   }
	       }
      if(string.equals("n")) {
	entity=Toentity(ac[i].replace(" ",""), ps[i].replace(" ",""), ty[i].replace(" ",""), na[i].replace(" ", ""));
	 entity.setImage(imagename);
	 dao.add(entity);
	    }
	  }
	return "Add";
     }


	   
	   //删除数据
	   public String Delete() throws Exception {
	       String a =getRequest().getParameter("fa");
        	if (a.equals("0")) {
        	    EmployeeList =  dao. listem();
        	    return "Delete";
        	}else {	
        	       String[] sourceStrArray=a.split(",");
        	 	for (int i = 0; i < sourceStrArray.length; i++) {
        	 	    Integer  sourceInteger=Integer.parseInt(sourceStrArray[i]);
			   if((sourceInteger!=0)&&(sourceInteger!=null)) {
        	 	   dao.delete(sourceInteger);
			   }
        	 	}
        	       EmployeeList =  dao. listem();
        		return "Delete";
        	    }
	   }
	    
	   
	   //修改数据
	   public String Modify() throws Exception {
	       String id =getRequest().getParameter("fa");
        	if (id.equals("0")) {
        	    EmployeeList =  dao. listem();
        	    return "Modify";
        	}else {	
	    	    String[] sourceStrArray=id.split(",");
	       	    String[] ac=entity.getAccount().split(",");
	    	    String[] ps=entity.getPsw().split(",");
	    	    String[] ty=entity.getType().split(",");
        	    	for (int i = 0; i < sourceStrArray.length; i++) {
        	    	    int num=0;
        	 	    Integer  sourceInteger=Integer.parseInt(sourceStrArray[i].replace(" ",""));
		        	  String hqlString="select a.account from com.zq.www.mis.entity.Admin as a";
		           	   List aa=dao.getListByHQL(hqlString,null);
		        	String string="n";
		        	//判断准备修改的账号是否与之前的有冲突（重合，和已注册的某个账号的一样。）
				    for (int j = 0; j < aa.size(); j++) {
					if((ac[i].replace(" ","")).equals(aa.get(j))) {
					 string="y";
					 num++;
					}
				    }
				    if(string.equals("n")||(num==1)) {
					//sourceInteger是id, ac[i]是账号, ps[i]是密码, ty[i]是类型。
					employee=toStringAdmin(sourceInteger, ac[i], ps[i], ty[i]);
					dao.update(employee);
				    }
		    	    }
		      EmployeeList =  dao. listem();
			return "Modify";
	    }
	}
	   
	   
	   
	   
	   
		//csv文件导入存储(员工信息)
		//解说：每行信息用逗号分隔开形成一个数组，然后这个小数组再拆开一个个元素与数据库的account列对比，有一样的就设置number为y，否则坚持是n；
		//只有number为n时候才可以进行数据插入才做。
		public String Addexcel() throws Exception{
		    try {
		    String file=lujing;
		    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		    String line = bufferedReader.readLine();
		    while ((line = bufferedReader.readLine()) != null) {
//			String hqlString="select a.account from com.zq.www.mis.entity.Admin as a";
//		    	 List aa=dao.getListByHQL(hqlString,null);
		    	List aa=dao.getaccount();
			 String[] columns = line.split(",");
			 String string="n";
		       String account=columns[0];
		             for (int j = 0; j < aa.size(); j++) {
		                  String again=account.replace(" ",""); 
				  if(again.equals(aa.get(j))) {
				  string="y";
				 }
			      }    
		                if(string.equals("n")) {
		                    //columns[0]是账号，columns[1]是密码，columns[2]是类型，columns[3]是名字。
		                    employee=toStr(columns[0], columns[1], columns[2], columns[3]);
	                	  dao.add(employee);
		                 }
		    }
		    } catch (Exception e) {
			// TODO: handle exception
			//System.out.println("ddddddddddaaaaaaaaaaaaaadddddddddddddddaaaaaaaaaaa");
			//String tips="alert('对不起，由于路径错误问题，您的操作没有成功。')";
		    }
		  //  return "Addcsv";
		    EmployeeList =  dao. listem();
		    return "Select";
		}
	
		
	   
	   //跳转个人页面设置
	   public String Setting () throws Exception{

	    return "Setting";
	}

	   
	   //修改个人信息
	   public String ModifyMyself() throws Exception {
	    String hqlString="select a.account from com.zq.www.mis.entity.Admin as a";
    	List aa=dao.getListByHQL(hqlString,null);
//    	   if(myFile!=null) {//如果你的jsp页面传来了图片（已经点击<input type="file">，准备要换掉DB中的图片），则myFile就不会为空，就为它取一个名字。
//    			 imagename=execute();
//    		    }else {      //如果你不点击<input type="file">换掉DB中的图片 ，那么imagename就是你现在数据库中的图片名称。
//    			imagename=entity.getImage();
//    		    }
        for (int j = 0; j < aa.size(); j++) {//循环查询数据库中和jsp页面传来的账号一样的账号，再进行对其属性一一修改。
			if(entity.getAccount().equals(aa.get(j))) {
			employee=toStringAdmin(entity.getId(), entity.getAccount(), entity.getPsw(), entity.getType());
			employee.setName(entity.getName());
			//employee.setImage(imagename);
			break;
			}
		}
        ServletActionContext.getRequest().getSession().setAttribute("user", employee);//设置session
		dao.update(employee);
        return "Setting";
	}
		   
	   //把数据传进去形成实体后再返回去给调用方法---Modify
	   public Admin toStringAdmin(Integer id,String account,String psw,String type) throws Exception {
	       entity.setId(id);
	       entity.setAccount(account.replace(" ",""));
	       entity.setPsw(psw.replace(" ",""));
	       entity.setType(type.replace(" ",""));
		return entity;
	}
	   
	   //把数据传进去形成实体后再返回去给调用方法---Add
	   public Admin toStr(String account,String psw,String type,String name) throws Exception {
	       entity.setAccount(account.replace(" ",""));
		entity.setPsw(psw.replace(" ",""));
		entity.setType(type.replace(" ",""));
		entity.setName(name.replace(" ", ""));
		return entity;
	}
	   
	 
	   public Admin Toentity(String account,String password,String type,String name) throws Exception {
		entity.setAccount(account);
		entity.setPsw(password);
		entity.setType(type);
		entity.setName(name);
		return entity;
	    }
	   
//		 //用ajax判断账号是否存在
//	        public void AjaxloginUsername() throws Exception {
//		    String user=this.getRequest().getParameter("username").replace(" ","");  //除去空格	    
//		     List aa=dao.getaccount();
//		    for (int j = 0; j < aa.size(); j++) {
//			if(user.equals(aa.get(j))) {
//				 yn=1;
//				}
//		    }
//		   BaseAction.ajaxSendJson(yn);	//写到前台login.jsp     //yn为1时候表示账号存在，yn为0时候表示账号不存在。
//		}
//
//		 //用ajax判断密码是否正确
//	        public void AjaxloginPassword() throws Exception {
//	            System.out.println("dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd的值是："+entity.getAccount());
//		    String password=this.getRequest().getParameter("password").replace(" ","");  //除去空格	   
//		  //  System.out.println("dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd的值是："+entity.getAccount());
//		     List aa=dao.getpassword(entity.getAccount());
//		    for (int j = 0; j < aa.size(); j++) {
//			if(password.equals(aa.get(j))) {
//				 yn=1;
//				}
//		    }
//		   BaseAction.ajaxSendJson(yn);	//写到前台login.jsp     //yn为1时候表示账号存在，yn为0时候表示账号不存在。
//		}

	   
	        
	        /*
		 * Start--文件上传
		 * */
		  private static final long serialVersionUID = 572146812454l ;
		    private static final int BUFFER_SIZE = 16 * 1024 ;
		
		    private File myFile;
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
		       imageFileName = new Date().getTime() + getExtention(fileName);      ///ImageUpload     ///BacksAdmin/Employee/image
		       File image= new File(ServletActionContext.getServletContext().getRealPath("/BacksAdmin/Employee/image") + "/" +imageFileName);
		       String   path=ServletActionContext.getServletContext().getRealPath("/BacksAdmin/Employee/image"); 
		       savefile(path);
		       copy(myFile, image);
		       
		       File image1 = new File(ServletActionContext.getServletContext().getRealPath("/ImageUpload") + "/" +imageFileName);
		       String   path1=ServletActionContext.getServletContext().getRealPath("/ImageUpload"); 
		       savefile(path1);
		       copy(myFile, image1); 
		       
		       return imageFileName;
		   }   
		   
		   
		   //抠出来的：如果文件夹不存在就创建文件夹
		   public void savefile( String path)  {
		       File file=new File(path);
		       if(!file.exists()){
		                file.mkdirs();
		       }
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
		
	        

	public List<Admin> getEmployeeList() {
	    return EmployeeList;
	}

	public void setEmployeeList(List<Admin> employeeList) {
	    EmployeeList = employeeList;
	}

	public Admin getEntity() {
	    return entity;
	}

	public void setEntity(Admin entity) {
	    this.entity = entity;
	}

	public Admin getEmployee() {
	   return employee;
	}
	public void setEmployee(Admin employee) {
	    this.employee = employee;
	}
	 public EmployeeManagementDAO<Admin> getDao() {
	    return dao;
	}
	public void setDao(EmployeeManagementDAO<Admin> dao) {
	  this.dao = dao;
	}
	public String getLujing() {
	    return lujing;
	}
	public void setLujing(String lujing) {
	    this.lujing = lujing;
	}
	public String getMessage() {
	    return message;
	}
	public void setMessage(String message) {
	    this.message = message;
	}
	public File getMyFile() {
		return myFile;
	}
	
	
	
	
}
