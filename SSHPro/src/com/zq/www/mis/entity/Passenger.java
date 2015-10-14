package com.zq.www.mis.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Passenger entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="passenger")
public class Passenger implements java.io.Serializable {

    // Fields
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String name;
    private String idcard;
    private String phone;

    // Constructors

    /** default constructor */
    public Passenger() {
    }

    /** minimal constructor */


    public String getName() {
	return this.name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    

}