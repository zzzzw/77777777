package com.zq.www.mis.entity;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Line entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="line")
public class Line implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String startplace;
    private String endplace;
    private Time starttime;
    private Time endtime;
    private String linename;
    private String endcity;
    private String startcity;
    private Integer pid;
    private Date planedate;
    private Integer distance;

    // Constructors

    /** default constructor */
    public Line() {
    }

    /** full constructor */
    public Line(String startplace, String endplace, Time starttime,
	    Time endtime, String name, String endcity, String startcity,
	    Integer pid, Date planedate, Integer distance) {
	this.startplace = startplace;
	this.endplace = endplace;
	this.starttime = starttime;
	this.endtime = endtime;
	this.linename = name;
	this.endcity = endcity;
	this.startcity = startcity;
	this.pid = pid;
	this.planedate = planedate;
	this.distance = distance;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getStartplace() {
	return this.startplace;
    }

    public void setStartplace(String startplace) {
	this.startplace = startplace;
    }

    public String getEndplace() {
	return this.endplace;
    }

    public void setEndplace(String endplace) {
	this.endplace = endplace;
    }

    public Time getStarttime() {
	return this.starttime;
    }

    public void setStarttime(Time starttime) {
	this.starttime = starttime;
    }

    public Time getEndtime() {
	return this.endtime;
    }

    public void setEndtime(Time endtime) {
	this.endtime = endtime;
    }



    public String getLinename() {
        return linename;
    }

    public void setLinename(String linename) {
        this.linename = linename;
    }

    public String getEndcity() {
	return this.endcity;
    }

    public void setEndcity(String endcity) {
	this.endcity = endcity;
    }

    public String getStartcity() {
	return this.startcity;
    }

    public void setStartcity(String startcity) {
	this.startcity = startcity;
    }

    public Integer getPid() {
	return this.pid;
    }

    public void setPid(Integer pid) {
	this.pid = pid;
    }

    public Date getPlanedate() {
	return this.planedate;
    }

    public void setPlanedate(Date planedate) {
	this.planedate = planedate;
    }

    public Integer getDistance() {
	return this.distance;
    }

    public void setDistance(Integer distance) {
	this.distance = distance;
    }

}