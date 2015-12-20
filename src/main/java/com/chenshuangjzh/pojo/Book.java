package com.chenshuangjzh.pojo;

import java.io.Serializable;


public class Book implements Serializable{

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String code;
	private String name;
	private String author;
	private String publish;
	private Integer total;
	private Integer nowcount;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getNowcount() {
		return nowcount;
	}
	public void setNowcount(Integer nowcount) {
		this.nowcount = nowcount;
	}
	
	
}
