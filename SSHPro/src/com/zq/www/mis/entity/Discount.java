package com.zq.www.mis.entity;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Discount entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="discount")
public class Discount implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private Double discount;
    private Double children;
    private Double adult;
    private Double golden;
    private Double silver;
    private Double common;
    /*private Timestamp starttime;
    private Timestamp endtime;*/
    private Date starttime;
    private Date endtime;
    private String description;

    // Constructors

    /** default constructor */
    public Discount() {
    }

    /** full constructor */
    public Discount(Double discount, Double children, Double adult,
	    Double golden, Double silver, Double common, Timestamp starttime,
	    Timestamp endtime) {
	this.discount = discount;
	this.children = children;
	this.adult = adult;
	this.golden = golden;
	this.silver = silver;
	this.common = common;
	this.starttime = starttime;
	this.endtime = endtime;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public Double getDiscount() {
	return this.discount;
    }

    public void setDiscount(Double discount) {
	this.discount = discount;
    }

    public Double getChildren() {
	return this.children;
    }

    public void setChildren(Double children) {
	this.children = children;
    }

    public Double getAdult() {
	return this.adult;
    }

    public void setAdult(Double adult) {
	this.adult = adult;
    }

    public Double getGolden() {
	return this.golden;
    }

    public void setGolden(Double golden) {
	this.golden = golden;
    }

    public Double getSilver() {
	return this.silver;
    }

    public void setSilver(Double silver) {
	this.silver = silver;
    }

    public Double getCommon() {
	return this.common;
    }

    public void setCommon(Double common) {
	this.common = common;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
   

}