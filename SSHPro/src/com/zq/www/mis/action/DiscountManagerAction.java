package com.zq.www.mis.action;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.DiscountManagerDAO;
import com.zq.www.mis.entity.Discount;

/**
 * 该类用于后台折扣信息管理模块的页面跳转
 * 
 * @author gamei;
 * 
 */
@Results( {
	@Result(name = "test", location = "/BacksAdmin/discount/test.jsp"),
	@Result(name = "list", location = "/BacksAdmin/discount/calendar1.jsp", type = "redirect")

})
public class DiscountManagerAction extends BaseAction {

    @Autowired
    DiscountManagerDAO dao;

    public Integer id;
    public Discount dis;
    public String selectdate;
    public String starttime;
    public String endtime;
    public String result;
    public String tips="信息提示：无 ！";

    // Ajax查询所有的折扣
    public void queryall() {
	List<Discount> list = dao.listall();
	
	tips="显示所有折扣！";
	Map application =ServletActionContext.getContext().getApplication();
	application.put("tips", tips);
	try {
	    BaseAction.ajaxSendJson(list, true);
	} catch (Exception e) {
	    e.printStackTrace();
	}
	
    }

    public String querybyid() {

	dis = dao.get(id);

	return "test";

    }

    public String savedis() {

	if (dis.getId() == null) {
	    //添加折扣
	    if(dao.indate(dis))
	    dao.add(dis);
	    else {
		tips="日期不能重叠,添加失败！";
		Map application =ServletActionContext.getContext().getApplication();
		application.put("tips", tips);
	    }
	}	
	else {
	    //更新折扣
	    Discount d = dao.get(dis.getId());
	    d.setAdult(dis.getAdult());
	    d.setChildren(dis.getChildren());
	    d.setDescription(dis.getDescription());
	    d.setGolden(dis.getGolden());
	    d.setSilver(dis.getSilver());
	    d.setStarttime(dis.getStarttime());
	    d.setEndtime(dis.getEndtime());
	    d.setDiscount(dis.getDiscount());
	    
	    if(dao.indate(d))
		dao.save(d);
	    else {
		tips="日期不能重叠,添加失败！";
		Map application =ServletActionContext.getContext().getApplication();
		application.put("tips", tips);
	    }
	}
	return "list";
    }
    //折扣拖拉拽更新
    public void change() throws ParseException {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	Date date1 = sdf.parse(starttime);
	Date date2=null;
	if("".equals(endtime))
	    date2=date1;
	else
	 date2 = sdf.parse(endtime);
	Discount d = dao.get(id);
	d.setStarttime(date1);
	d.setEndtime(date2);

	if(dao.indate(d))
	    dao.save(d);
	else {
	    try {
		BaseAction.ajaxSendJson("error", false);
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	}
	
    }
    //通过拖拉添加折扣
    public void addbyUI() throws ParseException {

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date date1 = sdf.parse(starttime);
	Discount d = new Discount();
	d.setDescription(dis.getDescription());
	d.setStarttime(date1);
	d.setEndtime(date1);
	String a[] = result.split(",");
	d.setAdult(Double.parseDouble(a[0]));
	d.setChildren(Double.parseDouble(a[1]));
	d.setGolden(Double.parseDouble(a[2]));
	d.setSilver(Double.parseDouble(a[3]));
	d.setDiscount(Double.parseDouble(a[4]));
	if(dao.indateforUI(d))
	{
	dao.save(d);
	// 向前台给回ID,不然其他操作如：（拖拉无法实现）
		try {
		    BaseAction.ajaxSendJson(d.getId(), false);
		} catch (Exception e) {
		    e.printStackTrace();
		}
	}
	else {
	    try {
		BaseAction.ajaxSendJson(1, false);
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	}

	

    }

    public String deletebyid() {

	dao.delete(id);

	return "list";
    }

    public String test() {

	return "test";
    }

    public Integer getId() {
	return id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public Discount getDis() {
	return dis;
    }

    public void setDis(Discount dis) {
	this.dis = dis;
    }

    public String getSelectdate() {
	return selectdate;
    }

    public void setSelectdate(String selectdate) {
	this.selectdate = selectdate;
    }

    public String getStarttime() {
	return starttime;
    }

    public void setStarttime(String starttime) {
	this.starttime = starttime;
    }

    public String getEndtime() {
	return endtime;
    }

    public void setEndtime(String endtime) {
	this.endtime = endtime;
    }

    public String getResult() {
	return result;
    }

    public void setResult(String result) {
	this.result = result;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }
    

}
