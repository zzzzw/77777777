package com.zq.www.mis.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Tuser entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="tuser")
public class Tuser implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String idcard;
    private String name;
    private String sex;
    private String phone;
    private String psw;
    private String type;
    private String account;
    private String ckid;

    // Constructors

    /** default constructor */
    public Tuser() {
    }

    /** full constructor */
    public Tuser(String idcard, String name, String sex, String phone,
	    String psw, String type, String account, String ckid) {

	this.idcard = idcard;
	this.name = name;
	this.sex = sex;
	this.phone = phone;
	this.psw = psw;
	this.type = type;
	this.account = account;
	this.ckid = ckid;
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

    public String getName() {
	return this.name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getSex() {
	return this.sex;
    }

    public void setSex(String sex) {
	this.sex = sex;
    }

    public String getPhone() {
	return this.phone;
    }

    public void setPhone(String phone) {
	this.phone = phone;
    }

    public String getPsw() {
	return this.psw;
    }

    public void setPsw(String psw) {
	this.psw = psw;
    }

    public String getType() {
	return this.type;
    }

    public void setType(String type) {
	this.type = type;
    }

    public String getAccount() {
	return this.account;
    }

    public void setAccount(String account) {
	this.account = account;
    }

    public String getCkid() {
	return this.ckid;
    }

    public void setCkid(String ckid) {
	this.ckid = ckid;
    }

}