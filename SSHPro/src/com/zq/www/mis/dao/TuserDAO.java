package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Tuser;


//业务逻辑DAO

//spring自动注入
@Repository
public class TuserDAO extends BaseDAO<Tuser> 
{
    //Tuser的查询功能
    public List<Tuser> searchByTD(String name,String idcard)     {
	
	List<Tuser> result=new ArrayList();		
	String hql = "from Tuser t where 1=1 ";
		
	List<Object> obj = new ArrayList<Object>();
	try
	{
		if(name != null && !name.equals("")) {
			hql += "and t.name like ? ";  //组合hql
			obj.add("%" + name + "%");    //组合参数
		}
		if(idcard != null && !idcard.equals("")) {
			hql +="and t.idcard like ? ";
			obj.add("%" + idcard + "%");
		}
		
		result=this.getListByHQL(hql, obj);
	}
	catch(Exception e) {		     
	}
	finally{			
		
	}
	
	return result;
    }
    /*//查询新闻
	public List<News> searchByTD(String title,Date pubdate) {
		
		List<News> result=new ArrayList();		
		String hql = "from News n where 1=1 ";
			
		List<Object> obj = new ArrayList<Object>();
		try
		{
			if(title != null && !title.equals("")) {
				hql += "and n.title like ? ";  //组合hql
				obj.add("%" + title + "%");    //组合参数
			}
			if(pubdate != null && !pubdate.equals("")) {
				hql +="and n.pubdate=?";
				obj.add(pubdate);
			}
			
			result=this.getListByHQL(hql, obj);
		}
		catch(Exception e) {		     
		}
		finally{			
			gs().close();
		}
		
		return result;
		
	}
*/
}
