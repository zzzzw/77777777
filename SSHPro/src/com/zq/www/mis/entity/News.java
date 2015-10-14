package com.zq.www.mis.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;



@Entity
@Table(name="news")  
public class News {
   
	
   @Id
   @GenericGenerator(name = "generator", strategy = "identity")
   @GeneratedValue(generator = "generator")
   private Integer id;
   private String title;
   private Date pubdate;
   private String content;
   private String image;
   private String type;
   private Integer clicknumber;
   private String author;
   
   
   
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public Date getPubdate() {
	return pubdate;
}
public void setPubdate(Date pubdate) {
	this.pubdate = pubdate;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Integer getClicknumber() {
	return clicknumber;
}
public void setClicknumber(Integer clicknumber) {
	this.clicknumber = clicknumber;
}
public String getImage() {
    return image;
}
public void setImage(String image) {
    this.image = image;
}
public String getType() {
    return type;
}
public void setType(String type) {
    this.type = type;
}
public String getAuthor() {
    return author;
}
public void setAuthor(String author) {
    this.author = author;
}

   
   
   
   
}
