package com.zq.www.mis.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Seatnum entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="seatnum")
public class Seatnum implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String lname;
    private Date planedate;
    private Integer tdcnum;
    private Integer swcnum;
    private Integer jjcnum;
    private Integer thcnum;

    // Constructors

    /** default constructor */
    public Seatnum() {
    }

    /** full constructor */
    public Seatnum(String lname, Date planedate, Integer tdcnum,
	    Integer swcnum, Integer jjcnum, Integer thcnum) {
	this.lname = lname;
	this.planedate = planedate;
	this.tdcnum = tdcnum;
	this.swcnum = swcnum;
	this.jjcnum = jjcnum;
	this.thcnum = thcnum;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getLname() {
	return this.lname;
    }

    public void setLname(String lname) {
	this.lname = lname;
    }

    public Date getPlanedate() {
	return this.planedate;
    }

    public void setPlanedate(Date planedate) {
	this.planedate = planedate;
    }

    public Integer getTdcnum() {
	return this.tdcnum;
    }

    public void setTdcnum(Integer tdcnum) {
	this.tdcnum = tdcnum;
    }

    public Integer getSwcnum() {
	return this.swcnum;
    }

    public void setSwcnum(Integer swcnum) {
	this.swcnum = swcnum;
    }

    public Integer getJjcnum() {
	return this.jjcnum;
    }

    public void setJjcnum(Integer jjcnum) {
	this.jjcnum = jjcnum;
    }

    public Integer getThcnum() {
	return this.thcnum;
    }

    public void setThcnum(Integer thcnum) {
	this.thcnum = thcnum;
    }

}