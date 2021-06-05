package com.db.eccar.model;

public class AppDTO {
	int app_id;
	String app_name;
	String description;
	String img;
	
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	public String getApp_name() {
		return app_name;
	}
	public void setApp_name(String app_name) {
		this.app_name = app_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "AppDTO [app_id=" + app_id + ", app_name=" + app_name + ", description=" + description + ", img=" + img
				+ ", getApp_id()=" + getApp_id() + ", getApp_name()=" + getApp_name() + ", getDescription()="
				+ getDescription() + ", getImg()=" + getImg() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}
