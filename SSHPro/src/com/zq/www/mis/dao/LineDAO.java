package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.common.DataZh;
import com.zq.www.mis.entity.Line;
@Repository
public class LineDAO extends BaseDAO<Line> {
    
    
    //查找适合的航线
    public List<String[]> searchLine(String sfz,String ddz,String cfrq){
	List<String[]> result =new ArrayList();
	List list=new ArrayList();
	String sql=" SELECT b.`name`,a.linename,a.startplace,a.starttime,a.endplace,a.endtime ,\r\n" + 
			"d.tdcprice,c.tdcnum,d.swcprice,c.swcnum,d.jjcprice,c.jjcnum,d.thcprice,c.thcnum,\r\n" + 
			"d.planetype,a.id,b.logourl"+
			" from line a,aircompany b ,seatnum c,plane d\r\n" + 
			" WHERE a.pid=b.id and a.startcity=?\r\n" + 
			" AND endcity=? AND a.planedate=? AND c.lname=a.linename"+
			" and  c.planedate=?"+
			" AND d.lname=a.linename";			
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, sfz);
	q.setParameter(1, ddz);
	q.setParameter(2, cfrq);
	q.setParameter(3, cfrq);
	result=q.list();
	return result;	
    }
    
    public List<String[]> ydlinemsg(Integer lid) {
	List<String[]> result=new ArrayList();
	String sql="SELECT b.`name`,a.linename,a.startcity,a.endcity,\r\n" + 
			" a.startplace,a.endplace,a.planedate,a.starttime,a.endtime " + 
			",a.id"+
			" from line a,aircompany b \r\n" + 
			" where a.id=? AND b.id=a.pid;";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, lid);
	result=q.list();
	return result;
	
    }
   
}
