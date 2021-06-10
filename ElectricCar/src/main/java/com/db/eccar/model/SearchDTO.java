package com.db.eccar.model;

public class SearchDTO {
	String picture;
	String car_name;
	String model_name;
	int price;
	float zero_to_hundred;
	int max_mileage;
	int car_type;
	float km_kwh;
	int power_kw;
	int amount;
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public float getZero_to_hundred() {
		return zero_to_hundred;
	}
	public void setZero_to_hundred(float zero_to_hundred) {
		this.zero_to_hundred = zero_to_hundred;
	}
	public int getMax_mileage() {
		return max_mileage;
	}
	public void setMax_mileage(int max_mileage) {
		this.max_mileage = max_mileage;
	}
	public int getCar_type() {
		return car_type;
	}
	public void setCar_type(int car_type) {
		this.car_type = car_type;
	}
	public float getKm_kwh() {
		return km_kwh;
	}
	public void setKm_kwh(float km_kwh) {
		this.km_kwh = km_kwh;
	}
	public int getPower_kw() {
		return power_kw;
	}
	public void setPower_kw(int power_kw) {
		this.power_kw = power_kw;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "SearchDTO [picture=" + picture + ", car_name=" + car_name + ", model_name=" + model_name + ", price="
				+ price + ", zero_to_hundred=" + zero_to_hundred + ", max_mileage=" + max_mileage + ", car_type="
				+ car_type + ", km_kwh=" + km_kwh + ", power_kw=" + power_kw + ", amount=" + amount + "]";
	}
	
}
