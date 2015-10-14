package com.zq.www.mis.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Plane entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="plane")
public class Plane implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String lname;
    private Integer tdcnum;
    private Integer swcnum;
    private Integer jjcnum;
    private Integer thcnum;
    private Double tdcprice;
    private Double swcprice;
    private Double jjcprice;
    private Double thcprice;
    private String planetype;
    private String imgurl;
    private String status;

    // Constructors

    /** default constructor */
    public Plane() {
    }

    /** minimal constructor */
    public Plane(Integer id) {
	this.id = id;
    }

    /** full constructor */
    public Plane(Integer id, String lname, Integer tdcnum, Integer swcnum,
	    Integer jjcnum, Integer thcnum, Double tdcprice, Double swcprice,
	    Double jjcprice, Double thcprice, String planetype) {
	this.id = id;
	this.lname = lname;
	this.tdcnum = tdcnum;
	this.swcnum = swcnum;
	this.jjcnum = jjcnum;
	this.thcnum = thcnum;
	this.tdcprice = tdcprice;
	this.swcprice = swcprice;
	this.jjcprice = jjcprice;
	this.thcprice = thcprice;
	this.planetype = planetype;
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

    public Double getTdcprice() {
	return this.tdcprice;
    }

    public void setTdcprice(Double tdcprice) {
	this.tdcprice = tdcprice;
    }

    public Double getSwcprice() {
	return this.swcprice;
    }

    public void setSwcprice(Double swcprice) {
	this.swcprice = swcprice;
    }

    public Double getJjcprice() {
	return this.jjcprice;
    }

    public void setJjcprice(Double jjcprice) {
	this.jjcprice = jjcprice;
    }

    public Double getThcprice() {
	return this.thcprice;
    }

    public void setThcprice(Double thcprice) {
	this.thcprice = thcprice;
    }

    public String getPlanetype() {
	return this.planetype;
    }

    public void setPlanetype(String planetype) {
	this.planetype = planetype;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}