package com.zq.www.mis.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.LineDAO;
import com.zq.www.mis.entity.Line;

@SuppressWarnings("serial")
@Results( { 
@Result(name = "selectpass", location = "/before/order/jsp/selectpass.jsp"),
@Result(name = "search", location = "/before/flight/search.jsp"),
    @Result(name = "news-admin-input", location = "/news/news-admin-input.jsp")		
		  })
public class LineAction extends BaseAction{
     
    @Autowired
    private LineDAO linedao;
    private String sfz;//始发站
    private String ddz;//到达站
    private String cfrq;//出发日期
    private Line entity;//航班实体
    private List<String[]> hblist;//航班列表
    private List<String[]> ydlinemsg;//预订机票信息
    private String seattype;//预订的座位类型 tdc:头等舱，swc:商务舱，jjc:经济舱,thc:特惠舱
    
    
    public String czhb() throws Exception {	
	hblist=linedao.searchLine(sfz, ddz, cfrq);
	ajaxSendJson(hblist,true);
	return null;
    }
    
    public String czhb2() throws Exception {	
	hblist=linedao.searchLine(sfz, ddz, cfrq);
	return "search";
    }
    
    public String ydjp() throws Exception {	
	System.out.println(entity.getId());
	ydlinemsg= linedao.ydlinemsg(entity.getId());
	return "selectpass";
    }
   
    public LineDAO getLinedao() {
        return linedao;
    }

    public void setLinedao(LineDAO linedao) {
        this.linedao = linedao;
    }

    public String getSfz() {
        return sfz;
    }
    public void setSfz(String sfz) {
        this.sfz = sfz;
    }
    public String getDdz() {
        return ddz;
    }
    public void setDdz(String ddz) {
        this.ddz = ddz;
    }
    public String getCfrq() {
        return cfrq;
    }
    public void setCfrq(String cfrq) {
        this.cfrq = cfrq;
    }
    public List<String[]> getHblist() {
        return hblist;
    }
    public void setHblist(List<String[]> hblist) {
        this.hblist = hblist;
    }

    public Line getEntity() {
        return entity;
    }

    public void setEntity(Line entity) {
        this.entity = entity;
    }

    public List<String[]> getYdlinemsg() {
        return ydlinemsg;
    }

    public void setYdlinemsg(List<String[]> ydlinemsg) {
        this.ydlinemsg = ydlinemsg;
    }

    public String getSeattype() {
        return seattype;
    }

    public void setSeattype(String seattype) {
        this.seattype = seattype;
    }


    
    
    

}
