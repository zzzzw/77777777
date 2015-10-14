package com.zq.www.mis.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.News;

/**
 * For News Manager
 * 
 * @author gamei
 */
@Repository
public class NewsManagerDAO extends BaseDAO<News>{
	
	public void upentity(News entity, Integer id) {
	    //String title,String content,String image
	   // String hqlString="updata news as n set n.title='  "+title+" ' ,n.content= ' "+content+" ' ,n.image= ' "+image+" ' where n.id= ' "+id+" ' ";                   
	    String hqlString="update news as n set n.title='  "+entity.getTitle()+" ' ,n.content= ' "+entity.getContent()+" ' ,n.image= ' "+entity.getImage()+" ' where n.id= ' "+id+" ' ";                   
	}

	public List<News> querymainnews() {
	    // 查询进5条新闻、
	    String sql="select * from news order by id desc limit 5";
	    Query q=gs().createSQLQuery(sql);
	    return q.list();
  
	}

}
