package com.zq.www.mis.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.News;

//业务逻辑DAO

//spring自动注入
@Repository
public class NewsDAO extends BaseDAO<News> {

	
	public List<News> listTen()
	{
	    List<News> result = new ArrayList();
		String sql = "select id,title from news LIMIT 10";
		Query q = gs().createSQLQuery(sql);
		
		result = q.list();
		return result;
	}
	
	// 查询新闻
	public List<News> searchByTD(String title, Date pubdate) {

		List<News> result = new ArrayList();
		String hql = "from News n where 1=1 ";

		List<Object> obj = new ArrayList<Object>();

		if (title != null && !title.equals("")) {
			hql += "and n.title like ? "; // 组合hql
			obj.add("%" + title + "%"); // 组合参数
		}
		if (pubdate != null && !pubdate.equals("")) {
			hql += "and n.pubdate=?";
			obj.add(pubdate);
		}

		result = this.getListByHQL(hql, obj); // 使用basedao封装的getListByHQL

		return result;

	}
}
