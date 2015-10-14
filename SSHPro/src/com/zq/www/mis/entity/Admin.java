package com.zq.www.mis.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="admin")
public class Admin implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String psw;
    private String account;
    private String type;
    private String name;
    private String image;

    // Constructors

    /** default constructor */
    public Admin() {
    }

    /** full constructor */
    public Admin(String psw, String account, String type) {
	this.psw = psw;
	this.account = account;
	this.type = type;
    }

    // Property accessors

    public Integer getId() {
	return this.id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getPsw() {
	return this.psw;
    }

    public void setPsw(String psw) {
	this.psw = psw;
    }

    public String getAccount() {
	return this.account;
    }

    public void setAccount(String account) {
	this.account = account;
    }

    public String getType() {
	return this.type;
    }

    public void setType(String type) {
	this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    

}