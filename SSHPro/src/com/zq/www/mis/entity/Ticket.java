package com.zq.www.mis.entity;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Ticket entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="ticket")
public class Ticket implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String idcard;
    private String sex;
    private String lname;
    private String startplace;
    private String endplace;
    private Time starttime;
    private Time endtime;
    private Date startdate;
    private String apname;
    private String seattype;
    private double price;
    private Date buydate;

    // Constructors

    /** default constructor */
    public Ticket() {
    }

    /** full constructor */
    public Ticket(String idcard, String sex, String lname, String startplace,
	    String endplace, Time starttime, Time endtime, Date startdate,
	    String apname, String seattype) {
	this.idcard = idcard;
	this.sex = sex;
	this.lname = lname;
	this.startplace = startplace;
	this.endplace = endplace;
	this.starttime = starttime;
	this.endtime = endtime;
	this.startdate = startdate;
	this.apname = apname;
	this.seattype = seattype;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getIdcard() {
	return this.idcard;
    }

    public void setIdcard(String idcard) {
	this.idcard = idcard;
    }

    public String getSex() {
	return this.sex;
    }

    public void setSex(String sex) {
	this.sex = sex;
    }

    public String getLname() {
	return this.lname;
    }

    public void setLname(String lname) {
	this.lname = lname;
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

    public Date getStartdate() {
	return this.startdate;
    }

    public void setStartdate(Date startdate) {
	this.startdate = startdate;
    }

    public String getApname() {
	return this.apname;
    }

    public void setApname(String apname) {
	this.apname = apname;
    }

    public String getSeattype() {
	return this.seattype;
    }

    public void setSeattype(String seattype) {
	this.seattype = seattype;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getBuydate() {
        return buydate;
    }

    public void setBuydate(Date buydate) {
        this.buydate = buydate;
    }
    

}