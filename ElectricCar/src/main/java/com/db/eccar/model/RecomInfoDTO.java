package com.db.eccar.model;

import java.util.Date;

public class RecomInfoDTO {
	int post_id;
	int category_id;
	String category_name;
	String title;
	String url;
	String content;
	Date regdate;
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "RecomInfoDTO [post_id=" + post_id + ", category_id=" + category_id + ", category_name=" + category_name
				+ ", title=" + title + ", url=" + url + ", content=" + content + ", regdate=" + regdate
				+ ", getPost_id()=" + getPost_id() + ", getCategory_id()=" + getCategory_id() + ", getCategory_name()="
				+ getCategory_name() + ", getTitle()=" + getTitle() + ", getUrl()=" + getUrl() + ", getContent()="
				+ getContent() + ", getRegdate()=" + getRegdate() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}
