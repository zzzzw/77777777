package com.zq.www.mis.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.zq.www.common.BaseAction;
import com.zq.www.mis.dao.PlaneDAO;
import com.zq.www.mis.entity.Plane;

/**
 * 
 * @author 吴振廷 wuzhenting
 *
 */
@SuppressWarnings("serial")
@Results( { 
    @Result(name = "add", location = "/BacksAdmin/plane/add.jsp"),
    @Result(name = "search", location = "/BacksAdmin/plane/search.jsp")
})
public class PlaneAction extends BaseAction {
    
    @Autowired
    PlaneDAO planedao;
    
    List<Plane> planelist;
    Plane plane;
    Integer[] pid;
    String success;
    //查找所有飞机
    public String czfj() {
	planelist=planedao.listall();
	return "search";
    }
    
    //显示飞机详细信息
    public void planeinfo() throws Exception{
    	plane=planedao.get(plane.getId());
    	ajaxSendJson(plane);
    }
    
    //删除飞机
    public String delplane() {
	for(Integer id:pid) {
	    planedao.delete(id);
	}
	return null;
    }

    //修改飞机信息
    public String editplane() {
	planedao.update(plane);
	return null;
    }
    
    public String addplane() {
	System.out.println("dd");
	planedao.save(plane);
	success="true";
	return "add";
    }
    
    public PlaneDAO getPlanedao() {
        return planedao;
    }

    public void setPlanedao(PlaneDAO planedao) {
        this.planedao = planedao;
    }

    public List<Plane> getPlanelist() {
        return planelist;
    }

    public void setPlanelist(List<Plane> planelist) {
        this.planelist = planelist;
    }

	public Plane getPlane() {
		return plane;
	}

	public void setPlane(Plane plane) {
		this.plane = plane;
	}

	public Integer[] getPid() {
	    return pid;
	}

	public void setPid(Integer[] pid) {
	    this.pid = pid;
	}

	public String getSuccess() {
	    return success;
	}

	public void setSuccess(String success) {
	    this.success = success;
	}






    
    
}
