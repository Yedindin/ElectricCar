package com.db.eccar.model;

public class StationDTO {

	int station_id;
	String station_name;
	int fast_yn;
	int normal_yn;
	int address_id;
	String address_name;
	
	public int getStation_id() {
		return station_id;
	}
	public void setStation_id(int station_id) {
		this.station_id = station_id;
	}
	public String getStation_name() {
		return station_name;
	}
	public void setStation_name(String station_name) {
		this.station_name = station_name;
	}
	public int getFast_yn() {
		return fast_yn;
	}
	public void setFast_yn(int fast_yn) {
		this.fast_yn = fast_yn;
	
	}
	public int getNormal_yn() {
		return normal_yn;
	}
	public void setNormal_yn(int normal_yn) {
		this.normal_yn = normal_yn;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	@Override
	public String toString() {
		return "StationDTO [station_id=" + station_id + ", station_name=" + station_name + ", fast_yn=" + fast_yn
				+ ", normal_yn=" + normal_yn + ", address_id=" + address_id + ", getStation_id()=" + getStation_id()
				+ ", getStation_name()=" + getStation_name() + ", getFast_yn()=" + getFast_yn() + ", getNormal_yn()="
				+ getNormal_yn() + ", getAddress_id()=" + getAddress_id() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
}
