package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Torder;

@Repository
public class OrderDAO extends BaseDAO<Torder> {
    @Transactional
    public List<String[]> mypassenger(Integer uid){
	List<String[]> result=new ArrayList();
	String sql="SELECT c.id,c.phone, c.`name`,c.idcard \r\n" + 
			"from tuser a,pass_user b,passenger c \r\n" + 
			" where a.id=? AND b.pid=c.id AND b.uid=a.id";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, uid);
	result=q.list();
	return result;	
    }
    @Transactional
    public String planeprice(Integer lid,String seattype) {
	String price;
	String sql;
	sql="SELECT a."+seattype+"price from plane a,line b where b.id=? and a.lname=b.linename";
	System.out.println(sql);
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, lid);
	price= q.list().get(0).toString();
	return price;	
    }
    
    //根据订单号，查找所有订单，返回id，返回类型是List<String>
    @Transactional
    public List<String> searchByOdNum(String ordernum)
    {
    	List<String> result=null;
    	String sql="select a.id from torder a WHERE a.ordernum=?";
    	Query q=gs().createSQLQuery(sql);
    	q.setParameter(0, ordernum);
    	result=q.list();   	
    	return result;
    }
    //修改订单状态
    public void updateOrderStatus(String ordernum,String status)
    {
	String sql="update torder set status=? where ordernum=?";
	Query q=gs().createSQLQuery(sql);
    	q.setParameter(0, status);	
    	q.setParameter(1, ordernum);
    	q.executeUpdate();
    }
    
    //quartz更新订单状态
    public void updateOrderstatus() {
	String sql="update torder set status='订单失效' where remaintime=0";
	Query q=gs().createSQLQuery(sql);
    	q.executeUpdate();
    }
    
    //quartz实时更新订单剩余的有效时间
    @Transactional
    public void updateRmnTime(Integer time)
    {
	
    	String sql="update torder set remaintime=remaintime-"+time+" where remaintime>0 ";
    	Query q=gs().createSQLQuery(sql);
    	q.executeUpdate();
    }
    
    //获得订单剩余时间
    @Transactional
    public String getRmnTimeByOdNum(String ordernum)
    {
    	String remaintime;
    	String sql="select a.remaintime from torder a where a.ordernum=?";
    	Query q=gs().createSQLQuery(sql);
    	q.setParameter(0, ordernum);
    	remaintime=q.list().get(0).toString();
    	return remaintime;
    }

    //查找指定状态的订单
    public List<String[]> queryOrderByStatus(String orderstatus,Integer uid,boolean isAll){

	List<String[]> orderlist=new ArrayList();
	Query q=null;
	if(isAll)
	{
	    String sql="SELECT distinct a.`name`,b.linename,b.planedate,b.startplace,b.starttime,\r\n" + 
	    		"b.endplace,b.endtime,c.`status`,c.price,c.ordernum,c.starttime as ordertime,\r\n" + 
	    		"SUM(c.price) as allprice,c.remaintime\r\n"+
	    		"FROM aircompany a,line b,torder c\r\n" + 
	    		"WHERE c.uid=? AND c.lid=b.id and b.pid=a.id\t\n"+
	    		"group by ordernum";
	    q=gs().createSQLQuery(sql);
	    q.setParameter(0, uid);
	}
	else {
	    String sql="SELECT distinct a.`name`,b.linename,b.planedate,b.startplace,b.starttime,\r\n" + 
	    		"b.endplace,b.endtime,c.`status`,c.price,c.ordernum,c.starttime as ordertime, \r\n" + 
	    		"SUM(c.price) as allprice,c.remaintime\r\n"+
	    		"FROM aircompany a,line b,torder c\r\n" + 
	    		"WHERE c.uid=? AND c.lid=b.id and b.pid=a.id and c.status=? \t\n"+
	    		"group by ordernum";
	q=gs().createSQLQuery(sql);
		q.setParameter(0, uid);
		q.setParameter(1, orderstatus);
	}	
	orderlist=q.list();
	return orderlist;
    }
    
    //根据订单编号查找订单信息
    public List<String[]> queryOrderByOrdernum(String ordernum){
	List<String[]> ordermsg=new ArrayList();
	String sql="SELECT a.ordernum,a.status,SUM(a.price) FROM torder a \r\n" + 
			"WHERE a.ordernum=?\r\n" + 
			"GROUP BY a.price";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	ordermsg=q.list();
	return ordermsg;
    }
    
    //根据订单编号查找乘客信息
    public List<String[]> queryPassMsgByOrdernum(String ordernum){
	List<String[]> passmsg=new ArrayList();
	String sql="SELECT b.`name` ,b.idcard,a.price,b.id,a.status\r\n" + 
			"from torder a,passenger b \r\n" + 
			"WHERE a.ordernum=? and a.pid=b.id";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	passmsg=q.list();
	return passmsg;
    }
    
    //根据订单编号查找乘客，过滤掉申请退款和取消订单的乘客
    public List<String[]> PassFilterByOrdernum(String ordernum){
	List<String[]> passmsg=new ArrayList();
	String sql="SELECT b.`name` ,b.idcard,a.price,b.id,a.status\r\n" + 
			"from torder a,passenger b \r\n" + 
			"WHERE a.ordernum=? and a.pid=b.id AND a.status<>? and a.status<>?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	q.setParameter(1, "申请退款中...");
	q.setParameter(2, "订单取消");
	passmsg=q.list();
	return passmsg;
    }
    //根据订单编号查找航线
    public Integer queryLidByOrdernum(String ordernum) {
	Integer lid;
	String sql="select DISTINCT lid from torder where torder.ordernum=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	lid=(Integer)( q.list().get(0));
	return lid;
    }
    //根据订单编号查找订单状态
    public String queryStatusByOrdernum(String ordernum) {
	String status;
	String sql="select DISTINCT status from torder where ordernum=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	status=(String) q.list().get(0);
	return status;
    }
    //根据订单编号，查找订单信息航班号，日期，座位，价格
    public List<String[]> linemsgByOrdernum(String ordernum){
	List list=new ArrayList();
	String sql="SELECT DISTINCT b.linename,b.planedate,a.seat,SUM(a.price)\r\n" + 
			"			 from torder a,line b\r\n" + 
			"			WHERE ordernum=? AND a.lid=b.id \r\n" + 
			"GROUP BY ordernum";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	list=q.list();
	return list;
    }
    
    public List<String[]> linemsgByOrdernum2(String ordernum){
	List list=new ArrayList();
	String sql="SELECT DISTINCT b.linename,b.planedate,a.seat,SUM(a.price)\r\n" + 
			"			 from torder a,line b\r\n" + 
			"			WHERE ordernum=? AND a.lid=b.id and a.status<>'申请退款中...'\r\n" + 
			"GROUP BY ordernum";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	list=q.list();
	return list;
    }
    //根据订单编号和乘客id，取消订单或退票
    public void CancelOrRefund(String ordernum,String[] cklist) {
	
	String status=queryStatusByOrdernum(ordernum);	
	Query q;
	String sql;
	for(int i=0;i<cklist.length;i++)
	{
	    if(status.equals("等待付款"))
	    {
		sql="update torder set status='订单取消',remaintime=-1 where ordernum=? and pid=?";
		q=gs().createSQLQuery(sql);
		q.setParameter(0, ordernum);
		q.setParameter(1, Integer.parseInt(cklist[i]));
		q.executeUpdate();
	    }
	    else if(status.equals("已经付款")){
		sql="update torder set status='申请退款中...',remaintime=-1  where ordernum=? and pid=?";
		q=gs().createSQLQuery(sql);
		q.setParameter(0, ordernum);
		q.setParameter(1, cklist[i]);
		q.executeUpdate();
	    }
	    
	}
    }
    
    //根据航班号、日期、座位，查该航班指定位置的价格
    public Double priceByLMDS(String linename,String date,String seattype) {
	Double price;
	String sql;
	sql="SELECT sum(b."+seattype+"price) from line a,plane b\r\n" + 
			" WHERE a.linename=? AND a.planedate=? and a.pid=b.id group by linename";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, linename);
	q.setParameter(1, date);
	price=(Double) q.list().get(0);
	return price;
    }
    
    //根据订单编号查为退款的人数
    public Integer countByOrdernum(String ordernum) {
	Integer num;
	String sql="SELECT count(*) FROM torder WHERE ordernum=? and status<>'申请退款中...'";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, ordernum);
	num=Integer.parseInt(q.list().get(0).toString());
	return num;
    }
}
