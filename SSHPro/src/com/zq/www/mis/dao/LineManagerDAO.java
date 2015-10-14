package com.zq.www.mis.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.zq.www.common.BaseDAO;
import com.zq.www.common.DigestUtil;
import com.zq.www.mis.entity.Line;

/**
 *
 * 
 * @author gamei
 */
@Repository
public class LineManagerDAO extends BaseDAO<Line> {
    
    
 
    public List<String[]> searchLineByDate(String day) {
	List<String[]> result = new ArrayList();
	String sql = "SELECT s.*,l.startplace,l.endplace,l.starttime,l.endtime,l.startcity,l.endcity,l.pid,l.distance FROM line l,seatnum s WHERE    l.linename=s.lname AND l.planedate=s.planedate AND l.planedate=?";
	Query q = gs().createSQLQuery(sql);
	q.setParameter(0, day);
	result = q.list();
	return result;

    }
    //
    public List<String[]> querybyproperty(Line l) {
	List<String[]> result = new ArrayList();
	Query q = null;
	String sql1="SELECT s.*,l.startplace,l.endplace,l.starttime,l.endtime,l.startcity,l.endcity,l.pid,l.distance FROM line l,seatnum s WHERE   l.linename=s.lname AND   s.planedate=l.planedate AND l.planedate=? AND l.startcity=? AND l.endcity=? ";
	String sql2="SELECT s.*,l.startplace,l.endplace,l.starttime,l.endtime,l.startcity,l.endcity,l.pid,l.distance FROM line l,seatnum s WHERE  s.planedate=? AND l.planedate=? AND l.linename=s.lname";
	String sql3="SELECT s.*,l.startplace,l.endplace,l.starttime,l.endtime,l.startcity,l.endcity,l.pid,l.distance FROM line l,seatnum s WHERE  l.startcity=? AND l.endcity=? AND l.linename=s.lname AND l.planedate=s.planedate";
	//
	if(l.getPlanedate()==null)
	{   
	   
	    if("".equals(l.getStartcity())) {
		System.out.println("+1");
		String all="SELECT s.*,l.startplace,l.endplace,l.starttime,l.endtime,l.startcity,l.endcity,l.pid,l.distance FROM line l,seatnum s WHERE  l.linename=s.lname AND   l.planedate=s.planedate  ";
		q=gs().createSQLQuery(all);
	    }
		
	    else {
		System.out.println("+2");
		 q = gs().createSQLQuery(sql3);
		 q.setParameter(0, l.getStartcity());
		 q.setParameter(1, l.getEndcity());
	    }
	}else {
	    if("".equals(l.getStartcity())||"".equals(l.getEndcity())) {
		System.out.println("+3");
		
		 q = gs().createSQLQuery(sql2);
		 q.setParameter(0, l.getPlanedate());
		 q.setParameter(1, l.getPlanedate());
	    }
		
	    else {
		
		System.out.println("+4");
		q=gs().createSQLQuery(sql1);
		q.setParameter(0, l.getPlanedate());
		q.setParameter(1, l.getStartcity());
		q.setParameter(2, l.getEndcity());
		
	    }
	    
	}
	
	result=q.list();
	return result;
    }
    
   
    public List<String[]> querybyid(Integer id) {
	String sql="SELECT s.*,l.id AS lineid,l.startplace,l.endplace,l.starttime,l.endtime,l.startcity,l.endcity,l.pid,l.distance,a.name,p.id AS planeid,p.tdcnum AS tdc,p.swcnum AS swc,p.jjcnum AS jjc,p.thcnum AS thc ,p.tdcprice,p.swcprice,p.jjcprice,p.thcprice,p.planetype FROM line l,seatnum s,aircompany a,plane p WHERE  l.linename=s.lname AND   l.planedate=s.planedate AND l.pid=a.id  AND l.linename=p.lname  AND s.id=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, id);
	return q.list();
    }
    
    public void updatebylinename(Line line) {
	String sql="UPDATE line SET startplace=?,endplace=?,distance=?,starttime=?,endtime=?,pid=? WHERE linename=?";
	
	
	
	SQLQuery q = gs().createSQLQuery(sql);
	q.setParameter(0, line.getStartplace());
	q.setParameter(1, line.getEndplace());
	q.setParameter(2, line.getDistance());
	q.setParameter(3, line.getStarttime());
	q.setParameter(4, line.getEndtime());
	q.setParameter(5, line.getPid());
	q.setParameter(6, line.getLinename());
	 q.executeUpdate();
	
	
	 
	 
	
	
    }
     
    //后台买票
    public List<String[]> buy(Integer lid,String radio1) {
	List<String[]> result=new ArrayList<String[]>();
	if(radio1.toString().equals("头等舱"))
	{
	    String sql="SELECT b.`name`,a.linename,\r\n" + 
		" a.startplace,a.endplace,a.planedate,a.starttime,a.endtime " + 
		",a.id,d.planetype,d.tdcprice"+
		" from line a,aircompany b,plane d\r\n" + 
		" where a.id=? AND b.id=a.pid AND d.lname=a.linename;"; 
	    Query q=gs().createSQLQuery(sql);
		q.setParameter(0, lid);
		result=q.list();
	}
	else if(radio1.toString().equals("商务舱"))
	{
	    String sql="SELECT b.`name`,a.linename,\r\n" + 
		" a.startplace,a.endplace,a.planedate,a.starttime,a.endtime " + 
		",a.id,d.planetype,d.swcprice"+
		" from line a,aircompany b,plane d\r\n" + 
		" where a.id=? AND b.id=a.pid AND d.lname=a.linename;";
	    Query q=gs().createSQLQuery(sql);
		q.setParameter(0, lid);
		result=q.list();
	}
	else if(radio1.toString().equals("经济舱"))
	{
	    String sql="SELECT b.`name`,a.linename,\r\n" + 
		" a.startplace,a.endplace,a.planedate,a.starttime,a.endtime " + 
		",a.id,d.planetype,d.jjcprice"+
		" from line a,aircompany b,plane d\r\n" + 
		" where a.id=? AND b.id=a.pid AND d.lname=a.linename;";
	    Query q=gs().createSQLQuery(sql);
		q.setParameter(0, lid);
		result=q.list();
	}
	else if(radio1.toString().equals("特惠舱"))
	{
	    String sql="SELECT b.`name`,a.linename,\r\n" + 
		" a.startplace,a.endplace,a.planedate,a.starttime,a.endtime " + 
		",a.id,d.planetype,d.thcprice"+
		" from line a,aircompany b,plane d\r\n" + 
		" where a.id=? AND b.id=a.pid AND d.lname=a.linename;";
	        Query q=gs().createSQLQuery(sql);
		q.setParameter(0, lid);
		result=q.list();
	}
	
	
	return result;
	
    }

    //查找适合的航线
    public List<String[]> searchLine(String sfz,String ddz,String cfrq){
	List<String[]> result =new ArrayList();
	List list=new ArrayList();
	String sql=" SELECT b.`name`,a.linename,a.startplace,a.starttime,a.endplace,a.endtime ,\r\n" + 
			"d.tdcprice,c.tdcnum,d.swcprice,c.swcnum,d.jjcprice,c.jjcnum,d.thcprice,c.thcnum,\r\n" + 
			"d.planetype,a.id,b.logourl,d.tdcnum as tdcnum1,d.swcnum as swcnum1,d.jjcnum as jjcnum1,d.thcnum as thcnum1,"+
			"c.id as cid ,c.planedate as cplanedate from line a,aircompany b ,seatnum c,plane d\r\n" + 
			" WHERE a.pid=b.id and a.startcity=? and  c.planedate=?\r\n" + 
			" AND a.endcity=? AND a.planedate=? AND c.lname=a.linename"+
			" AND d.lname=a.linename ";			
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, sfz);
	q.setParameter(1, cfrq);
	q.setParameter(2, ddz);
	q.setParameter(3, cfrq);
	result=q.list();
	return result;	
    }
    //支付接口方法
    public static String buildHmac(String p0_Cmd, String p1_MerId,
	    String p2_Order, String p3_Amt, String p4_Cur, String p5_Pid,
	    String p6_Pcat, String p7_Pdesc, String p8_Url, String p9_SAF,
	    String pa_MP, String pd_FrpId, String pr_NeedResponse,
	    String keyValue) {
	StringBuffer s = new StringBuffer();
	s.append(p0_Cmd);
	s.append(p1_MerId);
	s.append(p2_Order);
	s.append(p3_Amt);
	s.append(p4_Cur);
	s.append(p5_Pid);
	s.append(p6_Pcat);
	s.append(p7_Pdesc);
	s.append(p8_Url);
	s.append(p9_SAF);
	s.append(pa_MP);
	s.append(pd_FrpId);
	s.append(pr_NeedResponse);
	String sNewString = DigestUtil.hmacSign(s.toString(), keyValue);

	return sNewString;
    }
    public int hadline(String linename) throws Exception{
	String sql="SELECT * FROM line WHERE line.linename=?";
	Query q=gs().createSQLQuery(sql);
	q.setParameter(0, linename);
	int k=q.list().size();
	return k;
    }
    
    
}
