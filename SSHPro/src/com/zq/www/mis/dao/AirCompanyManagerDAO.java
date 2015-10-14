package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Aircompany;
/**
 * �������ں��չ�˾��̨������ݴ���
 * 
 * @author gamei
 */
@Repository
public class AirCompanyManagerDAO extends BaseDAO<Aircompany>{
    
	public void deleteByName(Integer id)
	{
		int hkgsid=id;
		//查出相应id的航空公司名字
		String sql1 = "select name from aircompany where id=? ";
		Query q1 = gs().createSQLQuery(sql1);
		q1.setParameter(0,hkgsid);
		String hkgsname=(String) q1.list().get(0);
		System.out.print("hkgsname"+hkgsname);
		//关联删除相应机票里的记录
		String sql2 = "delete from ticket where apname=? ";
		Query q2 = gs().createSQLQuery(sql2);
		q2.setParameter(0, hkgsname);
		q2.executeUpdate();
		//删除航空公司
		String sql3 = "delete from aircompany where id=? ";
		Query q3 = gs().createSQLQuery(sql3);
		q3.setParameter(0, hkgsid);
		q3.executeUpdate();
		
	}
	//将datatable的显示起始数与结束数传入进行分页查询
	public List<Aircompany> orderByServer(int iDisplayStart, int iDisplayLength) 
	{
		List<Aircompany> result;
		String sql1="select * from aircompany limit ? , ?";//第一个问号是起始num，第二个是结束num
		Query q1 = gs().createSQLQuery(sql1);
		q1.setParameter(0,iDisplayStart);
		q1.setParameter(1,iDisplayLength);
		return result=q1.list();
		
	}
	//返回分页查询的条数
	public int ordercount()
	{
	    int count=0;
	    String sql1="select * from aircompany";
	Query q1 = gs().createSQLQuery(sql1);
	List<Aircompany> list=q1.list();
	     count = Integer.parseInt(String.valueOf(list.size()));
		System.out.println(count);
	    
	    return count;
	    
	}

    

}
