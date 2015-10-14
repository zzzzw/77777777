package com.zq.www.mis.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Aircompany;
import com.zq.www.mis.entity.Discount;

/**
 * 该类用于后台主面板管理模块的信息处理
 * 2015/9/19
 * @author gamei;
 * 
 */
@Repository
public class MainManagerDAO extends BaseDAO<Discount>{
    //查询主面板第一行三条数据
    public String[] queryfirst() {
	//查询当天销售额
	String sql1="SELECT SUM(t.price) FROM torder t WHERE t.starttime BETWEEN ? AND ? AND t.`status`='等待付款'";
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String before=sdf.format(this.getbeforeDay(new Date()));
	before+=" 23:59:59";
	String next=sdf.format(this.getNextDay(new Date()));
	next+=" 0:0:0";
	Query q1=gs().createSQLQuery(sql1);
	q1.setParameter(0, before);
	q1.setParameter(1, next);
	String xiaoshou="";
	if(q1.list().get(0)==null)
	    xiaoshou="859654";//虚拟数据
	else
	 xiaoshou=q1.list().get(0).toString();
	
	//查询当天的折扣信息
	String sql2="SELECT * FROM discount d WHERE d.starttime<=? AND d.endtime>=?";
	Query q2=gs().createSQLQuery(sql2).addEntity(Discount.class);
	String today=sdf.format(new Date());
	q2.setParameter(0, today);
	q2.setParameter(1, today);
	Discount dis=(Discount) q2.list().get(0);
	System.out.println(dis.getGolden());
	
	//查询有多少个用户
	String sql3="SELECT COUNT(t.id) FROM tuser t";
	Query q3=gs().createSQLQuery(sql3);
	 q3.list().get(0);
	System.out.println("sum:"+ q3.list().get(0));
	
	//数据封装
	String data[]=new String [6];
	data[0]=xiaoshou;
	data[1]=dis.getGolden().toString();
	data[2]=dis.getSilver().toString();
	data[3]=dis.getDiscount().toString();
	data[4]=dis.getAdult().toString();
	data[5]=q3.list().get(0).toString();
	
	for (int i = 0; i < data.length; i++) {
	    System.out.println(data[i]);
	}
	return data;
    }
    //得到当前时间的前一天
    public static Date getbeforeDay(Date date) {  
        Calendar calendar = Calendar.getInstance();  
        calendar.setTime(date);  
        calendar.add(Calendar.DAY_OF_MONTH, -1);  
        date = calendar.getTime(); 
        return date;  
    }    
  //得到当前时间的后一天
    public static Date getNextDay(Date date) {  
        Calendar calendar = Calendar.getInstance();  
        calendar.setTime(date);  
        calendar.add(Calendar.DAY_OF_MONTH, 1);  
        date = calendar.getTime();  
        return date;  
    }
    
    //得到航空公司不同月份的销售额
    @SuppressWarnings("unchecked")
    public Map defaultquery() {
	
	//查出航空公司
	String sql="SELECT * FROM aircompany ";
	Query q=gs().createSQLQuery(sql).addEntity(Aircompany.class);
	List<Aircompany> listcompany=q.list();
	Map map=this.jisuantongji(listcompany);
//	map.put("1", "东方航空");
//	map.put("2","1,30,2,40,3,40,4,60,5,50,6,70,7,80,8,90,9,100,10,100,11,90,12,80");
//	map.put("3", "南方航空");
//	map.put("4","1,40,2,40,3,50,4,70,5,80,6,70,7,80,8,90,9,80,10,90,11,90,12,80");
//	map.put("5", "西方航空");
//	map.put("6","1,40,2,40,3,50,4,70,5,50,6,70,7,80,8,60,9,100,10,100,11,90,12,100");
//	map.put("7", "北方航空");
//	map.put("8","1,20,2,40,3,50,4,70,5,80,6,60,7,80,8,80,9,80,10,90,11,20,12,90");
	return map;
    }
    
    public Map jisuantongji(List<Aircompany> list) {
	
	double max=0;//用来记录最大销售额
	Map map=new HashMap<String,Object>();
	for(int i=1,p=1;i<=list.size();i++) {
	    map.put(String.valueOf(p), list.get(i-1).getName());
	    p=p+1;
	    //获得当前年
	    Calendar a=Calendar.getInstance();
	    String year= String.valueOf(a.get(Calendar.YEAR));//得到年
	    String mon= String.valueOf(a.get(Calendar.MONTH));//得到月
	    String sum="";
	    for(int k=1;k<=Integer.valueOf(mon);k++) {  
		if(k==1)
		sum=sum+k;
		else
		sum=sum+","+k;
		String start=year+"-"+k+ "-1";
	    	String end=year+"-"+(k+1)+ "-1";
	    
		//查询1到12月份的销售额
		String sql="SELECT SUM(ticket.price) FROM ticket WHERE ticket.buydate>=? AND ticket.buydate<? AND ticket.apname=?";
		Query q=gs().createSQLQuery(sql);
		q.setParameter(0, start);
		q.setParameter(1, end);
		q.setParameter(2, list.get(i-1).getName());
		String s= String.valueOf(q.list().get(0));
		if("null".equals(s)) {
		    			sum=sum+",0";
				     }
		else {
		sum=sum+","+s;	
		if(max<Double.valueOf(s))
		    max=Double.valueOf(s);
		
		}
	    }
	    map.put(String.valueOf(p), sum);
	    p=p+1;
	    System.out.println(sum);
	}
	map.put("max", max);
	
	return map;
    }
    
    
    
    //得到不同会员类型的统计
    @SuppressWarnings("unchecked")
    public Map defaultleaguer() {
	Map map=new HashMap<String,Object>();
	
	int golden=leaguer("金牌会员");
	int silver=leaguer("银牌牌会员");
	int common=leaguer("普通会员");
	int sum =golden+silver+common; //总数
	
	double g=(golden*1.0)/sum;
	double s=(silver*1.0)/sum;
	double c=(common*1.0)/sum;
	
	String sg=this.FormatPercent(g, 0);
	String ss=this.FormatPercent(s, 0);
	String sc=this.FormatPercent(c, 0);
	
	int result_g=Integer.parseInt(sg.substring(0, sg.length()-1));
	int result_s=Integer.parseInt(sg.substring(0, ss.length()-1));
	int result_c=Integer.parseInt(sg.substring(0, sc.length()-1));
	
	map.put("1", result_g);
	map.put("2", result_s);
	map.put("3", result_c);
	
	return map;
    }
    
    //获取一个double类型数值的百分比
    //example: FormatPercent(0.33333333,0) = 33%
    public String FormatPercent(double number,int newValue)
    {
        java.text.NumberFormat nf = java.text.NumberFormat.getPercentInstance();
        nf.setMinimumFractionDigits(newValue);
        return nf.format(number);
    }
    
    //查询不同会员的数量
    public int leaguer(String s) {
	String sql="SELECT COUNT(t.id) FROM tuser t where type=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, s);
	String r= q.list().get(0).toString();
	return Integer.parseInt(r);
    }

}





