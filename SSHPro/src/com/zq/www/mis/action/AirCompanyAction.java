package com.zq.www.mis.action;

import java.util.HashMap;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zq.www.common.BaseAction;

import com.zq.www.mis.dao.AirCompanyManagerDAO;

import com.zq.www.mis.entity.Aircompany;
import com.zq.www.mis.entity.Tuser;

//struts注解
@SuppressWarnings("serial")

public class AirCompanyAction  extends BaseAction {

	// ///////////////////////////////////////////////////////////////引入的DAO
	//spring自动注入
	@Autowired
	private AirCompanyManagerDAO adao;

	// ///////////////////////////////////////////////////////////////属性参数
	private List<Aircompany> companylist;
	private List<Aircompany> companylist2;
	private List <String[]> aclist;

	// 拿实体类当组合参数，实际上是它的属性帮我们传参了，常用
	private Aircompany ae;
	private Aircompany ae2;


	// ///////////////////////////////////////////////////////////////业务逻辑方法
	
	
	//航空公司信息显示（多条）
	public String showHkxx() throws Exception{
	    companylist = adao.listall();
	    this.ajaxSendJson(companylist, false);
	    
	    return null;
   
	}
	//航空公司信息显示（多条，服务器分页）
	public String showHkxx2() throws Exception{
	    String sEcho = getRequest().getParameter("sEcho");
	        int iDisplayStart =Integer.parseInt(getRequest().getParameter("iDisplayStart"));
	        int iDisplayLength = Integer.parseInt(getRequest().getParameter("iDisplayLength"));
	
	        companylist2 =adao.orderByServer(iDisplayStart,iDisplayLength);
	        int count =0;
	        count =adao.ordercount();
	       
//	        //属性初始化
//	        String aid[]=new String[companylist2.size()];
//	        String aname[]=new String[companylist2.size()];
//	        String aaddress[]=new String[companylist2.size()];
//	        String aphone[]=new String[companylist2.size()];
//	        String alid[]=new String[companylist2.size()];
//	        String asummary[]=new String[companylist2.size()];
//	        String alogourl[]=new String[companylist2.size()];
//	        
//	        String ckb[]=new String[companylist2.size()];
//	        String updatebtn[]=new String[companylist2.size()];
//	       // String json=null;
//	        //aclist;
//	        //String [][] newlist=new String [count][];
//	       
//	        for (int i = 0; i < companylist2.size(); i++) {
//	                Aircompany ae3=companylist2.get(i);
//		        aid[i]= String .valueOf(ae3.getId());
//		        aname[i]=ae3.getName();
//		        aaddress[i]=ae3.getAddress();
//		        aphone[i]=ae3.getPhone();
//		        asummary[i]=ae3.getSummary();
//		        alid[i]=ae3.getLid();
//		        alogourl[i]=ae3.getLogourl();
//		        ckb[i]="<td><input type='checkbox' name='ckb' value="+ae3.getId()+"/></td>";
//		        updatebtn[i]="<td><input type='button' class='btn btn-warning' data-toggle='modal' data-target='#myModal' value='修改' name='updatehkgsxx' id="+ae2.getId()+"/></td>";
//		      //  json =  "{\"sEcho\":"+sEcho+",\"iTotalRecords\":"+count+",\"iTotalDisplayRecords\":"+count+",\"aaData\":"+aaData+"}";		    
//	        }
//	        aclist.add(aid);
//	        aclist.add(aname);
//	        aclist.add(aaddress);
//	        aclist.add(aphone);
//	        aclist.add(asummary);
//	        aclist.add(alid);
//	        aclist.add(alogourl);
//	        aclist.add(ckb);
//	        aclist.add(updatebtn);
	        
	        
	        HashMap map = new HashMap();
	        map.put("aaData",companylist2);//表格数据
	        map.put("iTotalRecords",count);
	        map.put("iTotalDisplayRecords", count);
	        map.put("sEcho",sEcho);
	        
	            System.out.println("a"+sEcho);
		    System.out.println("b"+iDisplayStart);
		    System.out.println("c"+iDisplayLength);
	        
	        this.getResponse().getWriter().write(JSON.toJSONString(map));
		return null;
	   
	
   
	}
	
	
	
	//航空公司信息显示（单条）
	public String showSingleHkxx() throws Exception{
	    ae=adao.get(ae.getId());
	    
	    return null;
   
	}
	
	//修改航空公司信息
	public String updateHkxx() throws Exception{
	    int flag=1;//标识符
	 
	    System.out.print("update"+ae.getId());
	    adao.update(ae);//更新
	    this.getResponse().sendRedirect("/SSHPro/BacksAdmin/aircompany/search.jsp");
	    return null;
	}
	
	//删除航空公司信息(批量删除)
	public String deleteHkxx() throws Exception{
	    int flag=1;//标识符
	    ae2=new Aircompany();
	    String name=getRequest().getParameter("ajaxtext");
	    String[] strArray = null;   
	        strArray = name.split(",");
	        for(int i=1;i<strArray.length;i++)
	        {
	            System.out.println(strArray[i]);
	            System.out.print(Integer.parseInt(strArray[i].trim()));
	            ae2.setId(Integer.parseInt(strArray[i]));
	            System.out.println("aaa"+ae2.getId());
	      
	            adao.deleteByName(ae2.getId());
	        }
	    
	    this.getResponse().sendRedirect("/SSHPro/BacksAdmin/aircompany/search.jsp");


	    return null;
	}
	
	
	//验证用户是否已存在
	 public String  verifyAircompany() throws Exception{	
		int flag=0;//判断是否已存在用户的标志，默认不存在
		String gsmc =ae.getName();//用户名
		
		companylist = adao.listall();
		for (int i = 0; i < companylist.size(); i++) {
		       Aircompany ae2= companylist.get(i);
			String[] s = new String[1];
			s[0]=(ae2.getName());
			if(s[0]!=null&&s[0]!="")
			if(s[0].equals(gsmc))
			flag=1;
		}
		if(flag==1)
		this.getResponse().getWriter().print(false);//存在就给前台返回一个false
		else
		this.getResponse().getWriter().print(true);//不存在就给前台返回一个true
	         return null;
	    
	    }
	
	
	//增加航空公司信息
	 public String  addHkxx() throws Exception{	
		int flag=1;//判断是否已存在用户的标志
		
		String hbname=ae.getName();//航空公司名称
	
		companylist = adao.listall();
		for (int i = 0; i < companylist.size(); i++) {
		       Aircompany ae2= companylist.get(i);
			String[] s = new String[1];
			s[0]=(ae2.getName());
			if(s[0]!=null&&s[0]!="")
			if(s[0].equals(hbname))
			flag=0;
		}
		if(flag==1)
		{
		    adao.add(ae);
		   //添加成功
		}
		else
		    {} //该用户已存在 

		this.getResponse().getWriter().write(JSON.toJSONString(flag));
	         return null;
	    
	    }
	
	
	
	
	
	
	
	
	
	public List<Aircompany> getCompanylist() {
	    return companylist;
	}

	public void setCompanylist(List<Aircompany> companylist) {
	    this.companylist = companylist;
	}

	public Aircompany getAe() {
	    return ae;
	}

	public void setAe(Aircompany ae) {
	    this.ae = ae;
	}

	public void setAe2(Aircompany ae2) {
	    this.ae2 = ae2;
	}

	public Aircompany getAe2() {
	    return ae2;
	}
	
	public void setAclist(List <String[]> aclist) {
	    this.aclist = aclist;
	}
	public List <String[]> getAclist() {
	    return aclist;
	}
	public void setCompanylist2(List<Aircompany> companylist2) {
	    this.companylist2 = companylist2;
	}
	public List<Aircompany> getCompanylist2() {
	    return companylist2;
	};
    
    
}
