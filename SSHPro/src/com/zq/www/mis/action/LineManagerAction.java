package com.zq.www.mis.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.sun.org.apache.commons.beanutils.Converter;
import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.AirCompanyManagerDAO;
import com.zq.www.mis.dao.LineManagerDAO;
import com.zq.www.mis.dao.PlaneDAO;
import com.zq.www.mis.dao.SeatManagerDAO;
import com.zq.www.mis.entity.Aircompany;
import com.zq.www.mis.entity.Line;
import com.zq.www.mis.entity.Plane;
import com.zq.www.mis.entity.Seatnum;

/**
 * 该类用于后台航班信息管理模块的页面跳转
 * 
 * @author gamei;
 * 
 */
@SuppressWarnings("serial")
@Results( {
	@Result(name = "airlist", location = "/BacksAdmin/airinfo/airlist.jsp"),
	@Result(name = "updatesuccess", location = "line-manager!queryLineToday.action?tips=1", type = "redirect"),
	@Result(name = "deletesuccess", location = "line-manager!queryLineToday.action?tips=2", type = "redirect"),
	@Result(name = "deletefalse", location = "line-manager!queryLineToday.action?tips=4", type = "redirect"),
	@Result(name = "addsuccess", location = "line-manager!queryLineToday.action?tips=3", type = "redirect"),
	@Result(name = "success", location = "line-manager!queryLineToday.action", type = "redirect"),
	@Result(name = "airdetail", location = "/BacksAdmin/airinfo/airdetail.jsp"),
	@Result(name = "airgengxin", location = "/BacksAdmin/airinfo/gengxin.jsp")
	

})
public class LineManagerAction extends BaseAction  {

    @Autowired
    private LineManagerDAO linedao;
    @Autowired
    private PlaneDAO planedao;
    @Autowired
    private SeatManagerDAO seatdao;
    @Autowired
    private AirCompanyManagerDAO aircomdao;
    

    private Integer seatid;
    private Integer lineid;
    private Integer planeid;
    private Integer companyid;
    
    private String tips="0"; //该字段用来前台判断提示信息
    private String linename;
    private List<String[]> hblist; // 存放查询出来的航班信息
    private List<Plane> planelist;// 存放查出飞机实体信息
    private List<Aircompany> companylist; //存放航空公司信息
    private Line l=new Line();// 存放航班信息
    private Plane p=new Plane();// 存放飞机信息
    private Aircompany aircom=new Aircompany();//存放公司信息
    private Seatnum seat;
    private String build = "0";// 是否生成未来五天的售票信息 1为确定
    private int k=0;//判断是否为更新航班信息  1为更新航班信息
    private String querydate;//此查询条件的日期，需要转化为date类型

    // 查询今天的所有航班信息
    public String queryLineToday() {

	java.util.Date day = new java.util.Date();// 获得当前时间
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String dateNowStr = sdf.format(day);
	hblist = linedao.searchLineByDate(dateNowStr); // 这里需要把util的Date转化为sql的Date
	System.out.println(hblist.size());
	if("1".equals(tips))
	    tips="更新航班成功！";
	else if("2".equals(tips))
	    tips="删除航班成功！";
	else if("3".equals(tips))
	    tips="添加航班成功！";
	else if("4".equals(tips))
	    tips="无法删除航班,已被预订！";
	else
	    tips="以下是今日航班！";
	
	ServletActionContext.getRequest().setAttribute("tips", tips);
	return "airlist";
    }

    // AJAX查询所有未分配航线的航班，返回给添加或更新航班信息页面
    public void queryfreeplane() {

	planelist = planedao.queryfreeplanes();

	try {
	    BaseAction.ajaxSendJson(planelist);
	} catch (Exception e) {
	    e.printStackTrace();
	}

    }
    //AJAX 查询所有航空公司
    public void queryallcompany() {
	companylist=aircomdao.listall();
	 try {
	    BaseAction.ajaxSendJson(companylist);
	} catch (Exception e) {
	    e.printStackTrace();
	}
	
    }
    //判断航班是否已经存在
    public void haslinename() {
	
	int i=0;
	try {
	    i = linedao.hadline(linename);
	} catch (Exception e1) {
	   
	    e1.printStackTrace();
	}
	try {
	    if(i>0) {
	        BaseAction.ajaxSendJson("航班已存在", false);
	    }else {
	        BaseAction.ajaxSendJson("true", false);
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    // 保存或更新航班信息
    public String saveline() throws ParseException {

	// 设置航线的飞机编号以及时间
	l.setPid(companyid);
	java.util.Date day = new java.util.Date();// 获得当前时间
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String dateNowStr = sdf.format(day);
	java.util.Date nowday = sdf.parse(dateNowStr);
	l.setPlanedate(nowday);

	linedao.save(l);

	Plane plane = planedao.get(p.getId());
	plane.setLname(l.getLinename());
	plane.setJjcprice(p.getJjcprice());
	plane.setSwcprice(p.getSwcprice());
	plane.setTdcprice(p.getTdcprice());
	plane.setThcprice(p.getThcprice());
	plane.setStatus("完美");
	planedao.save(plane);

	seat = new Seatnum();
	seat.setLname(l.getLinename());
	seat.setPlanedate(nowday);
	seat.setJjcnum(plane.getJjcnum());
	seat.setSwcnum(plane.getSwcnum());
	seat.setTdcnum(plane.getTdcnum());
	seat.setThcnum(plane.getThcnum());
	seatdao.save(seat);
	System.out.println(build + "***********");
	// 是否生成未来五天的售票信息
	if ("1".equals(build)) {
	    for (int i = 1; i <= 5; i++) {
		Date d = this.afterNDay(i, nowday);
		l.setPlanedate(d);
		l.setId(null);
		seat.setPlanedate(d);
		seat.setId(null);
		linedao.save(l);
		seatdao.save(seat);
	    }

	}
	
	tips="添加航班成功！";
	ServletActionContext.getRequest().setAttribute("tips", tips);

	return "addsuccess";

    }
    
    //根据条件查询出航班信息
    public String querybyproperties() {
	
	hblist=linedao.querybyproperty(l);
	tips="根据条件查询航班！";
	return "airlist";
    }
    //点击详情按钮，根据id查处航班信息
    public String querybyid() {
	
	hblist=linedao.querybyid(seatid);
	
	if(k==0) {
	    return "airdetail";
	}
	 
	
	else {
	  
	    return "airgengxin"; 
	}
	
    }
    
    //更新航班信息
    public String updateline() {
	
	Line line=linedao.get(lineid);
	line.setStartplace(l.getStartplace());
	line.setEndplace(l.getEndplace());
	line.setStarttime(l.getStarttime());
	line.setEndtime(l.getEndtime());
	line.setPid(companyid);
	
	
	Plane plane=planedao.get(planeid);
	plane.setLname(line.getLinename());
	plane.setJjcprice(p.getJjcprice());
	plane.setSwcprice(p.getSwcprice());
	plane.setTdcprice(p.getTdcprice());
	plane.setThcprice(p.getThcprice());
	
	linedao.update(line);
	planedao.update(plane);
	
	
	
	//执行所有航班的更新
	if(build.equals("1")) {
	    linedao.updatebylinename(line);
	    
	    
	}
	tips="更新航班成功！";
	ServletActionContext.getRequest().setAttribute("tips", tips);
	return "updatesuccess";
    }
    public String deleteline() {
	//判断是否可以删除
	l=linedao.get(lineid);
	p=planedao.querybylinename(l.getLinename());
	seat=seatdao.get(seatid);
	
	if(seat.getJjcnum()<p.getJjcnum()||seat.getSwcnum()<p.getSwcnum()||seat.getTdcnum()<p.getTdcnum()||seat.getThcnum()<p.getThcnum())
	{
	    //无法删除
	    return "deletefalse";
	}else {
	linedao.delete(lineid);
	
	seatdao.delete(seatid);
	p.setStatus("空闲");
	planedao.save(p);
	
	ServletActionContext.getRequest().setAttribute("tips", tips);
	return "deletesuccess";
	}
	
	
	
    }
    
    

    // 给予第几天day ，获得第n天后的天Date
    public static Date afterNDay(int n, java.util.Date day)
	    throws ParseException {
	Calendar c = Calendar.getInstance();
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	c.setTime(day);
	c.add(Calendar.DATE, n);
	Date d2 = c.getTime();
	String s = df.format(d2);
	Date now = df.parse(s);
	return now;
    }

    public List<String[]> getHblist() {
	return hblist;
    }

    public void setHblist(List<String[]> hblist) {
	this.hblist = hblist;
    }

    public List<Plane> getPlanelist() {
	return planelist;
    }

    public void setPlanelist(List<Plane> planelist) {
	this.planelist = planelist;
    }

    public Line getL() {
	return l;
    }

    public void setL(Line l) {
	this.l = l;
    }

    public Plane getP() {
	return p;
    }

    public void setP(Plane p) {
	this.p = p;
    }

    public String getBuild() {
	return build;
    }

    public void setBuild(String build) {
	this.build = build;
    }

    public Seatnum getSeat() {
	return seat;
    }

    public void setSeat(Seatnum seat) {
	this.seat = seat;
    }

    public List<Aircompany> getCompanylist() {
        return companylist;
    }

    public void setCompanylist(List<Aircompany> companylist) {
        this.companylist = companylist;
    }

    public Aircompany getAircom() {
        return aircom;
    }

    public void setAircom(Aircompany aircom) {
        this.aircom = aircom;
    }

    public int getK() {
        return k;
    }

    public void setK(int k) {
        this.k = k;
    }

    public Integer getSeatid() {
        return seatid;
    }

    public void setSeatid(Integer seatid) {
        this.seatid = seatid;
    }

    public Integer getLineid() {
        return lineid;
    }

    public void setLineid(Integer lineid) {
        this.lineid = lineid;
    }

    public Integer getPlaneid() {
        return planeid;
    }

    public void setPlaneid(Integer planeid) {
        this.planeid = planeid;
    }

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public String getLinename() {
        return linename;
    }

    public void setLinename(String linename) {
        this.linename = linename;
    }
    
    
  
    
    
}
