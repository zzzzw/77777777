package com.zq.www.mis.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Aircompany entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="aircompany")
public class Aircompany implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String name;
    private String address;
    private String phone;
    private String summary;
    private String lid;
    private String logourl;

    // Constructors

    /** default constructor */
    public Aircompany() {
    }

    /** full constructor */
    public Aircompany(String name, String address, String phone,
	    String summary, String lid,String logourl) {
	this.name = name;
	this.address = address;
	this.phone = phone;
	this.summary = summary;
	this.lid = lid;
	this.logourl = logourl;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getName() {
	return this.name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getAddress() {
	return this.address;
    }

    public void setAddress(String address) {
	this.address = address;
    }

    public String getPhone() {
	return this.phone;
    }

    public void setPhone(String phone) {
	this.phone = phone;
    }

    public String getSummary() {
	return this.summary;
    }

    public void setSummary(String summary) {
	this.summary = summary;
    }

    public String getLid() {
	return this.lid;
    }

    public void setLid(String lid) {
	this.lid = lid;
    }

    public void setLogourl(String logourl) {
	this.logourl = logourl;
    }

    public String getLogourl() {
	return logourl;
    }

}