package com.db.eccar.model;

public class EccarDTO {
	int car_id;
	int brand_id;
	int model_id;
	String car_name;
	String brand_name;
	String model_name;
	int car_type;
	int price;
	int max_mileage;
	float zero_to_hundred;
	int power_kw;
	float km_kwh;
	
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public int getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public int getModel_id() {
		return model_id;
	}
	public void setModel_id(int model_id) {
		this.model_id = model_id;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public int getCar_type() {
		return car_type;
	}
	public void setCar_type(int car_type) {
		this.car_type = car_type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMax_mileage() {
		return max_mileage;
	}
	public void setMax_mileage(int max_mileage) {
		this.max_mileage = max_mileage;
	}
	public float getZero_to_hundred() {
		return zero_to_hundred;
	}
	public void setZero_to_hundred(float zero_to_hundred) {
		this.zero_to_hundred = zero_to_hundred;
	}
	public int getPower_kw() {
		return power_kw;
	}
	public void setPower_kw(int power_kw) {
		this.power_kw = power_kw;
	}
	public float getKm_kwh() {
		return km_kwh;
	}
	public void setKm_kwh(float km_kwh) {
		this.km_kwh = km_kwh;
	}
	@Override
	public String toString() {
		return "EccarDTO [car_id=" + car_id + ", brand_id=" + brand_id + ", model_id=" + model_id + ", car_name="
				+ car_name + ", brand_name=" + brand_name + ", model_name=" + model_name + ", car_type=" + car_type
				+ ", price=" + price + ", max_mileage=" + max_mileage + ", zero_to_hundred=" + zero_to_hundred
				+ ", power_kw=" + power_kw + ", km_kwh=" + km_kwh + ", getCar_id()=" + getCar_id() + ", getBrand_id()="
				+ getBrand_id() + ", getModel_id()=" + getModel_id() + ", getCar_name()=" + getCar_name()
				+ ", getBrand_name()=" + getBrand_name() + ", getModel_name()=" + getModel_name() + ", getCar_type()="
				+ getCar_type() + ", getPrice()=" + getPrice() + ", getMax_mileage()=" + getMax_mileage()
				+ ", getZero_to_hundred()=" + getZero_to_hundred() + ", getPower_kw()=" + getPower_kw()
				+ ", getKm_kwh()=" + getKm_kwh() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
