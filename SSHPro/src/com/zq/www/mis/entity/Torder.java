package com.zq.www.mis.entity;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Torder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="torder")
public class Torder implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private Integer uid;
    private Integer lid;
    private String seat;
    private Integer pid;
    private Double price;
    private Date starttime;
    private String status;
    private String phone;
    private String contacter;
    private String ordernum;
    private Integer remaintime;

    // Constructors

    /** default constructor */
    public Torder() {
    }

    /** full constructor */
    public Torder(Integer uid, Integer lid, String seat, Integer pid,
	    Double price, Date starttime, String status, String phone,
	    String contacter, String ordernum) {
	this.uid = uid;
	this.lid = lid;
	this.seat = seat;
	this.pid = pid;
	this.price = price;
	this.starttime = starttime;
	this.status = status;
	this.phone = phone;
	this.contacter = contacter;
	this.ordernum = ordernum;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public Integer getUid() {
	return this.uid;
    }

    public void setUid(Integer uid) {
	this.uid = uid;
    }

    public Integer getLid() {
	return this.lid;
    }

    public void setLid(Integer lid) {
	this.lid = lid;
    }

    public String getSeat() {
	return this.seat;
    }

    public void setSeat(String seat) {
	this.seat = seat;
    }

    public Integer getPid() {
	return this.pid;
    }

    public void setPid(Integer pid) {
	this.pid = pid;
    }

    public Double getPrice() {
	return this.price;
    }

    public void setPrice(Double price) {
	this.price = price;
    }



    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public String getStatus() {
	return this.status;
    }

    public void setStatus(String status) {
	this.status = status;
    }

    public String getPhone() {
	return this.phone;
    }

    public void setPhone(String phone) {
	this.phone = phone;
    }

    public String getContacter() {
	return this.contacter;
    }

    public void setContacter(String contacter) {
	this.contacter = contacter;
    }

    public String getOrdernum() {
	return this.ordernum;
    }

    public void setOrdernum(String ordernum) {
	this.ordernum = ordernum;
    }

    public Integer getRemaintime() {
        return remaintime;
    }

    public void setRemaintime(Integer remaintime) {
        this.remaintime = remaintime;
    }

}