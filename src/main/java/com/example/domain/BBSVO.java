package com.example.domain;

import java.util.Date;

public class BBSVO {
	private int id;
	private String title;
	private String content;
	private Date wdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	@Override
	public String toString() {
		return "BBSVO [id=" + id + ", title=" + title + ", content=" + content + ", wdate=" + wdate + "]";
	}

}
