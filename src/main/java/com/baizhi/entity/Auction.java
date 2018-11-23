package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFilter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class Auction {
	
	
private Integer auction_id;
private String auction_name;
private Double auction_start_price;
private Double auction_upset;
@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
@JSONField(format = "yyyy-MM-dd HH:mm:ss")
private Date auction_start_time;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
private Date auction_end_time;
private String auction_pic;
private String auction_desc;


public Integer getAuction_id() {
	return auction_id;
}
public void setAuction_id(Integer auction_id) {
	this.auction_id = auction_id;
}
public String getAuction_name() {
	return auction_name;
}
public void setAuction_name(String auction_name) {
	this.auction_name = auction_name;
}
public Double getAuction_start_price() {
	return auction_start_price;
}
public void setAuction_start_price(Double auction_start_price) {
	this.auction_start_price = auction_start_price;
}
public Double getAuction_upset() {
	return auction_upset;
}
public void setAuction_upset(Double auction_upset) {
	this.auction_upset = auction_upset;
}
public Date getAuction_start_time() {
	return auction_start_time;
}
public void setAuction_start_time(Date auction_start_time) {
	this.auction_start_time = auction_start_time;
}
public Date getAuction_end_time() {
	return auction_end_time;
}
public void setAuction_end_time(Date auction_end_time) {
	this.auction_end_time = auction_end_time;
}
public String getAuction_pic() {
	return auction_pic;
}
public void setAuction_pic(String auction_pic) {
	this.auction_pic = auction_pic;
}
public String getAuction_desc() {
	return auction_desc;
}
public void setAuction_desc(String auction_desc) {
	this.auction_desc = auction_desc;
}
public Auction() {
	super();
	// TODO Auto-generated constructor stub
}
public Auction(Integer auction_id, String auction_name,
		Double auction_start_price, Double auction_upset,
		Date auction_start_time, Date auction_end_time, String auction_pic,
		String auction_desc) {
	super();
	this.auction_id = auction_id;
	this.auction_name = auction_name;
	this.auction_start_price = auction_start_price;
	this.auction_upset = auction_upset;
	this.auction_start_time = auction_start_time;
	this.auction_end_time = auction_end_time;
	this.auction_pic = auction_pic;
	this.auction_desc = auction_desc;
}
@Override
public String toString() {
	return "Auction [auction_id=" + auction_id + ", auction_name="
			+ auction_name + ", auction_start_price=" + auction_start_price
			+ ", auction_upset=" + auction_upset + ", auction_start_time="
			+ auction_start_time + ", auction_end_time=" + auction_end_time
			+ ", auction_pic=" + auction_pic + ", auction_desc=" + auction_desc
			+ "]";
}






}
