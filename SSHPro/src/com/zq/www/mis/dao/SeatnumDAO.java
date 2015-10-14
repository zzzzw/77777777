package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import com.zq.www.common.BaseDAO;
import com.zq.www.mis.entity.Plane;
import com.zq.www.mis.entity.Seatnum;
/**
 *
 * 
 * @author wuzhenting
 */
@Repository
public class SeatnumDAO extends BaseDAO<Seatnum>{
    
    
    //后台操作座位数zzw
    public void save1(Seatnum seatnum, SeatnumDAO seatDAO,String radio1){
	
	
	if(radio1.equals("商务舱"))
	{
	    int a=seatnum.getSwcnum().intValue();
	    System.out.print(a);
	    int b=a-1;
	    seatnum.setSwcnum(b);
	    seatDAO.save(seatnum);
	
	}
	else if(radio1.equals("头等舱"))
	{
	    int b=seatnum.getTdcnum().intValue();
	    b--;
	    seatnum.setTdcnum(b);
	    seatDAO.save(seatnum);
	}
	else if(radio1.equals("经济舱"))
	{
	    int c=seatnum.getJjcnum().intValue();
	    c--;
	    seatnum.setJjcnum(c);
	    seatDAO.save(seatnum);
	}
	else if(radio1.equals("特惠舱"))
	{
	    int d=seatnum.getThcnum().intValue();
	    d--;
	    seatnum.setThcnum(d);
	    seatDAO.save(seatnum);
	    //seatDAO.save1(seatnum.getTdcnum(),seatnum.getLname(),radio1);
	}
    }
    
    public String getSeatNum(String lname,Date planedate,String seattype)
    {
	String num;
	String sql="select "+seattype+"num from seatnum where lname=? and planedate=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, lname);
	q.setParameter(1, planedate);
	num=q.list().get(0).toString();
	return num;	
    }
    public void updateNum(String lname,Date planedate,String seattype)
    {
	Integer num=Integer.parseInt(getSeatNum(lname, planedate, seattype))-1;
	String sql="update seatnum set "+seattype+"num="+num+" where lname=? and planedate=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, lname);
	q.setParameter(1, planedate);
	q.executeUpdate();
    }
   

}
