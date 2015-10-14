package com.zq.www.mis.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.HttpKit;
import com.zq.www.mis.dao.TuserDAO;
import com.zq.www.mis.entity.Aircompany;
import com.zq.www.mis.entity.Tuser;

//业务处理Action

//action是多实例的，对每一个请求都会new一个action,所以不必担心，参数会冲突
@SuppressWarnings("serial")
@Results( { 
   
    @Result(name = "show", location = "/BacksAdmin/ordermd/Tuser.jsp"),
    @Result(name = "add", location = "tuser!show.action" ,type = "redirect"),
    @Result(name = "delete", location = "tuser!show.action" ,type = "redirect"),
    @Result(name = "tz", location = "/BacksAdmin/ordermd/update.jsp"),
    @Result(name = "update", location = "tuser!show.action" ,type = "redirect"),
    @Result(name = "check", location = "/BacksAdmin/ordermd/Tuser.jsp" ),
    @Result(name = "loginsuccess", location = "/before/f-index.jsp" ),
    @Result(name = "deletes", location = "tuser!show.action" ,type = "redirect")
    
		
		  })
public class TuserAction extends BaseAction {

	// ///////////////////////////////////////////////////////////////引入的DAO
	//spring自动注入
	@Autowired
	private TuserDAO tdao;

	// ///////////////////////////////////////////////////////////////属性参数
	private List<Tuser> userlist;

	// 拿实体类当组合参数，实际上是它的属性帮我们传参了，常用
	private Tuser tue;
	
	private String ajaxtext;
	private String uphone;         //非会员手机号码
	private  static String rnum;         //生成的动态密码
	private String dtmm;          //输入的动态密码
	
	

	
	
	
	// ///////////////////////////////////////////////////////////////业务逻辑方法
 
	//Tuser展示页面
	public String show() throws Exception
	{
	    
	    userlist=tdao.listall();
	    return "show";
	}
	//添加一条Tuser记录
	public String add() throws Exception
	{
	    tdao.save(tue);
	    return "add";
	}
	//删除一条记录
	public String delete() throws Exception
	{
	    System.out.println(tue.getId());
	    tdao.delete(tue.getId());
	    return "delete";
	}
	//跳转到修改页面，修改页面和保存页面时一个页面
	public String tz() throws Exception
	{
	    tue=tdao.get(tue.getId());
	    return "tz";
	}
	//更新一条记录
	public String update() throws Exception
	{
	    tdao.save(tue);
	    return "update";
	    
	}
	//多条件查询
	public String check() throws Exception
	{
	    userlist=tdao.searchByTD(tue.getName(), tue.getIdcard());
	    System.out.println("xwlist");
	    return "check";
	}
	//后台Tuser多个删除
	public String deletes() throws Exception
	{
            tue=new Tuser();
	    System.out.println(ajaxtext);
	    int flag=1;//标识符
	    String[] a=ajaxtext.split(",");
	
	  
	    for(int i=1;i<a.length;i++)
	    {
		System.out.println("拆开的值是:"+a[i]);
		//System.out.println(Integer.parseInt(a[i].trim()));
		Integer num=Integer.parseInt(a[i]);
		System.out.println("转换类型之后："+num);
		tue.setId(Integer.parseInt(a[i]));
		System.out.println("aaa"+tue.getId());
		tdao.delete(tue.getId());
	    }
	    return "deletes";
	}
//	//验证account是否已存在
//	 public String  verifyAccount() throws Exception{	
//		int flag=0;//判断是否已存在用户的标志，默认不存在
//		String account =tue.getAccount();//用户名
//		
//		userlist = tdao.listall();
//		for (int i = 0; i < userlist.size(); i++) {
//		        Tuser ae2= userlist.get(i);
//			String[] s = new String[1];
//			s[0]=(ae2.getAccount());
//			if(s[0].equals(account))
//			flag=1;
//		}
//		if(flag==1)
//		this.getResponse().getWriter().print(false);//存在就给前台返回一个false
//		else
//		this.getResponse().getWriter().print(true);//不存在就给前台返回一个true
//	         return null;
//	    
//	    }
	  //验证身份是否已存在
		 public String  verifyIdcard() throws Exception{	
			int flag=0;//判断是否已存在用户的标志，默认不存在
			String sfz =tue.getIdcard();//身份证
			System.out.println(sfz);
			userlist = tdao.listall();
			for (int i = 0; i < userlist.size(); i++) {
			        Tuser ae2= userlist.get(i);
				String[] s = new String[1];
				s[0]=(ae2.getIdcard());
				if(s[0]!=null&&s[0]!="")
				if(s[0].equals(sfz))
				{
				flag=1;
				break;
				}
				
			}
			System.out.println("sfz"+flag);
			if(flag==1)
			this.getResponse().getWriter().print(false);//存在就给前台返回一个false
			else
			this.getResponse().getWriter().print(true);//不存在就给前台返回一个true
		         return null;
		    
		    }
		 
		//验证用户是否已存在
		 public String  verifyTuser() throws Exception{	
			int flag=0;//判断是否已存在用户的标志，默认不存在
			String yhm =tue.getAccount();//用户名
			
			userlist = tdao.listall();
			for (int i = 0; i < userlist.size(); i++) {
			       Tuser tue2= userlist.get(i);
				String[] s = new String[1];
				s[0]=(tue2.getAccount());
				if(s[0]!=null&&s[0]!="")
				if(s[0].equals(yhm))
				{
				flag=1;
				break;
				}
				
			}
			System.out.println("yhm"+flag);
			if(flag==1)
			this.getResponse().getWriter().print(false);//存在就给前台返回一个false
			else
			this.getResponse().getWriter().print(true);//不存在就给前台返回一个true
		         return null;
		    
		    }
		 
		//验证手机是否已存在
		 public String  verifyPhone() throws Exception{	
			int flag=0;//判断是否已存在用户的标志，默认不存在
			
			System.out.println("verifyPhone"+uphone);
			
			userlist = tdao.listall();
			for (int i = 0; i < userlist.size(); i++) {
			       Tuser tue2= userlist.get(i);
				String[] s = new String[2];
				s[0]=(tue2.getPhone());
				s[1]=(tue2.getType());
				System.out.println("类型"+s[1]);
				if(s[0]!=null&&s[0]!=""&&s[1]!=null&&s[1]!="")
				if(s[0].equals(uphone)&&!s[1].equals("非会员"))
				{
				flag=1;
				break;
				}
			}
			if(flag==1)
			this.getResponse().getWriter().print(false);//存在就给前台返回一个false
			else
			this.getResponse().getWriter().print(true);//不存在就给前台返回一个true
		         return null;
		    
		    }
	


	//这里是一个测试登陆
	    public String logintest() throws IOException {
		String account=tue.getAccount();
		String psw=tue.getPsw();
		if(account.equals("admin")&&psw.equals("123")) {
		    getRequest().getSession().setAttribute("username", account);
		    getRequest().getSession().setAttribute("uid", 3);
		    getResponse().sendRedirect(getRequest().getContextPath()+"/before/flight/search.jsp");
		}else {
		    getResponse().sendRedirect(getRequest().getContextPath()+"/before/user/fail-test.jsp");
		}
		return null;
		
	    }
	
	//退出时清除session
	public String noSession() throws Exception{
	    int flag=1;//标识符
	 
	    this.getSession().removeAttribute("uid");//session保存登录信息
	    this.getSession().removeAttribute("account"); 
	    this.getResponse().getWriter().write(JSON.toJSONString(flag));	
	    return null;
	}
	
	
	
	
	//显示个人信息
	public String showGrxx() throws Exception{
//	    Integer grid=(Integer) this.getSession().getAttribute("id");//获取session的id
//	    System.out.println("aaa"+grid);
	    tue=tdao.get(tue.getId());
	    this.ajaxSendJson(tue, false);	
	    
	    return null;
	}
	
	//修改个人信息
	public String updateGrxx() throws Exception{
	    int flag=1;//标识符
	 
	    System.out.print(tue.getId());
	    tdao.update(tue);//更新
	    this.getResponse().getWriter().write(JSON.toJSONString(flag));	
	    return null;
	}
	
	
	
	
	 
	 //注册用户
	    public String  addTuser() throws Exception{	
		int flag=1;//判断是否已存在用户的标志,默认不存在
		int flag2=0;//判断是否已存在该手机用户,默认不存在
		int sjid = 0;//记录手机注册账号id
		String yhm=tue.getAccount();//用户名
		String phonenum=tue.getPhone();//手机号码
		tue.setType("普通会员");     //初始注册默认为普通会员
		userlist = tdao.listall();
		for (int i = 0; i < userlist.size(); i++) {
		       Tuser tue2= userlist.get(i);
			String[] s = new String[2];
			s[0]=(tue2.getAccount());
			s[1]=(tue2.getPhone());
			if(s[0]!=null&&s[0]!=""&&s[1]!=null&&s[1]!="")
			if(s[0].equals(yhm))
			flag=0;
			if(s[1].equals(phonenum)) //判断是否存在以手机注册的用户
			{
			    sjid=tue2.getId();    //记录匹配的手机注册用户的id
			    flag2=1;
			}
		}
		
		if(flag==1) //用户不存在的时候
		{
		    if(flag2==1)
			{
			   tdao.delete(sjid);//匹配到就删除手机注册的信息
			    
			} 
		    tdao.add(tue);
		   //注册成功
		
		}
		else
		    {} //该用户已存在 

		this.getResponse().getWriter().write(JSON.toJSONString(flag));
	         return null;
	    
	    }
	    
	    
	  //获取验证码并检验
//		public void checkCode() throws Exception{
//			String rand=getRequest().getSession().getAttribute("rand").toString();		
//				if (rand.equalsIgnoreCase(code)) {  //比较string，不区分大小写
//					getResponse().getWriter().write(JSON.toJSONString(true));
//				} else {
//					getResponse().getWriter().write(JSON.toJSONString(false));
//				}		
//		}

	    //用户登录
	    public String Tuserlogin() throws Exception{	
		int flag1=0;            //判断用户账号和密码的标识符
		int flag2=0;           //判断验证码的标识符
		int flag3=0;           //flag1和flag2的组合情况标识符
		int flag4=0;           //密码错误情况
		String verifycode= getRequest().getSession().getAttribute("verifycode").toString();  //自动生成验证码
		String yzm= getRequest().getParameter("yzm");                                        //自己输入的验证码
		System.out.println("输入的验证码为"+yzm);
		System.out.println("生成的验证码为"+verifycode);
		String loginaccount=tue.getAccount();
		String loginpsw=tue.getPsw();
		userlist = tdao.listall();
		for (int i = 0; i < userlist.size(); i++) {
		       Tuser tue2= userlist.get(i);
			String[] s = new String[2];
			s[0]=(tue2.getAccount());
			s[1]=(tue2.getPsw());
			if(s[0]!=null&&s[0]!=""&&s[1]!=null&&s[1]!="")
			if(s[0].equals(loginaccount)&&s[1].equals(loginpsw))
			{
			    this.getSession().setAttribute("uid", tue2.getId());//session保存登录信息
			    this.getSession().setAttribute("account", s[0]); 
			    flag1=1;//成功登录
			    break;
			}
			else if(s[0].equals(loginaccount)&&!s[1].equals(loginpsw))
			    flag4=2;//密码错误
			else if(!s[0].equals(loginaccount)&&s[1].equals(loginpsw))
	                    flag1=3;//该用户不存在
			else if(!s[0].equals(loginaccount)&&!s[1].equals(loginpsw))
			    flag1=3;//该用户不存在
		}
		if(yzm==""||loginaccount==""||loginpsw=="")
		    flag1=-1;
		
		if (verifycode.equalsIgnoreCase(yzm)) {  //比较string，不区分大小写
			flag2=1;
		} else {
			flag2=0;
		}
		
		//各种情况组合
		if(flag1==1&flag2==1)
		{
		    flag3=1;              //账号，密码，验证码均正确
		}
		else if(flag4==2)
		{
		    flag3=2;              //密码错误
		}
		 else if(flag1==1&&flag2==0)
		{
	            flag3=3;              //验证码错误
		}
		 else if(flag1==-1){
		     flag3=4;             //账号或密码或验证码为空
		     
		 }
		 else
		 {
		     flag3=5;             //用户不存在
		 }
		
		this.getResponse().getWriter().write(JSON.toJSONString(flag3));

		    return null;
	   
	    }
	    
	    
	    //生成动态密码
	    public String Dtmm() throws Exception{
		int flag=1;     //动态验证码标志
		int flag2=0;    //判断用户是否存在的
		
		System.out.println("a"+uphone);
		int randomnum=(int) (Math.random()*9000+1000);
		rnum=String.valueOf(randomnum);
		System.out.println(rnum);
		int []xx=new int[1];
		
            //先判断是否存在手机用户（非会员注册的用户）
		userlist = tdao.listall();
		for (int i = 0; i < userlist.size(); i++) {
		       Tuser tue2= userlist.get(i);
			String[] s = new String[1];
			s[0]=(tue2.getAccount());
			int [] yhid=new int[1];
			yhid[0]=(tue2.getId());
			if(s[0]==null&&s[0]=="")
			    s[0]="";
			if(s[0].equals(uphone))
			{
			flag2=1;
			xx[0]=yhid[0];
			break;
			}
			
		}
		
		
		//如果用户不存在，以手机号进行账户注册
		if(flag2==0) {
		if(uphone!=null||uphone!="")
		{
		    System.out.println("yes"+uphone);
		Tuser tuex=new Tuser();
		tuex.setIdcard("");
		tuex.setName("");
		tuex.setSex("");
		tuex.setType("非会员");
		tuex.setAccount(uphone);//非会员登录默认注册名为手机号码
		tuex.setPhone(uphone);
		tuex.setPsw(rnum);      //非会员登录默认注册密码为动态验证码
		tdao.add(tuex);
		}
		}
		else  //用户存在,则更新密码（最新的动态验证码）
		{
		    System.out.println("no");
		  Tuser tue3=tdao.get(xx[0]);
			tue3.setPsw(rnum);      //非会员登录默认注册密码为动态验证码
			tdao.save(tue3);
		}
		
		//短信发送功能
//		String postUrl="http://sms.jiangukj.com/SendSms.aspx";
//	        Map<String,String> map = new HashMap<String,String>();
//	        map.put("action","code");
//	        map.put("username","dxb736162010");
//	        map.put("userpass","dxb930929");
//	        map.put("mobiles",uphone);
//	        map.put("content",rnum);
//	        map.put("codeid", "3396");
//	        HttpKit.httpPost(postUrl, map);
		
		
		this.getResponse().getWriter().write(JSON.toJSONString(flag));
		
		return null;
		
	    }
	    
	    //非会员登录（动态密码登录）
	    public String UTuserlogin() throws Exception{
		int flag=0;                    //判断标志
		int flag2=0;                   //判断是否已存在会员账号
		System.out.println(uphone);
		System.out.println(dtmm);
//		System.out.println(rnum);
		String sjnum=uphone;
		
		String []xx=new String[3];
		int zhid=0;                            //会员账号id
		userlist = tdao.listall();
		for (int i = 0; i < userlist.size(); i++) {
		       Tuser tue2= userlist.get(i);
			String[] s = new String[3];
			s[0]=(tue2.getPhone());
			s[1]=String.valueOf(tue2.getId());
			s[2]=(tue2.getPsw());
			if(s[0]!=null&&s[0]!=""&&s[1]!=null&&s[1]!=""&&s[2]!=null&&s[2]!="")
			if(s[0].equals(sjnum))
			{
			flag2=1;
			xx[0]=s[0];
			xx[1]=s[1];
			xx[2]=s[2];
			zhid=tue2.getId();    //记录相匹配的id
			break;
			}
			
			
		}
		System.out.print("密码"+xx[2]);
		if(flag2==0)             //不存在会员账号则以手机作为账号登录
		{
		  //session保存登录信息
		    this.getSession().setAttribute("uid", xx[1]);          //id
		    this.getSession().setAttribute("account", xx[0]);       //账户名
		    
		}
		else                     //存在会员账号则匹配信息登录
		{
		    Tuser tue3=tdao.get(zhid);
		  //session保存登录信息
		    this.getSession().setAttribute("uid", tue3.getId());          //id
		    this.getSession().setAttribute("account", tue3.getAccount());       //账户名
		    
		    
		}
		
		
		if(xx[2].equals(dtmm))   //如果动态密码匹配成功
		{
		    flag=1;
		    this.getResponse().getWriter().write(JSON.toJSONString(flag));   
		       
		}
		else
		{
		    this.getResponse().getWriter().write(JSON.toJSONString(flag));    
		}
		
		return null;	

	    }
	    
	    
	    
	    
	    
	  //getter、setter
	    public TuserDAO getTdao() {
	        return tdao;
	    }
	    public void setTdao(TuserDAO tdao) {
	        this.tdao = tdao;
	    }
	    public List<Tuser> getUserlist() {
	        return userlist;
	    }
	    public void setUserlist(List<Tuser> userlist) {
	        this.userlist = userlist;
	    }
	    public Tuser getTue() {
	        return tue;
	    }
	    public void setTue(Tuser tue) {
	        this.tue = tue;
	    }
	    public String getAjaxtext() {
	        return ajaxtext;
	    }
	    public void setAjaxtext(String ajaxtext) {
	        this.ajaxtext = ajaxtext;
	    }
	    public void setUphone(String uphone) {
		this.uphone = uphone;
	    }
	    public String getUphone() {
		return uphone;
	    }
	    public void setDtmm(String dtmm) {
		this.dtmm = dtmm;
	    }
	    public String getDtmm() {
		return dtmm;
	    }
	
	
	
	
	
	
	
	
}






