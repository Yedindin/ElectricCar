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
	int brand_first_id;
	int brand_second_id;
	String brand_first;
	String brand_second;
	int maxprice;
	int minprice;
	float calculated_min;
	float calculated_max;
	String subsidy_yn;
	int input_sigoongoo_id;
	String homepage_url;
	String AS_number;
	String brand_name;

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
	public String getBrand_first() {
		return brand_first;
	}
	public void setBrand_first(String brand_first) {
		this.brand_first = brand_first;
	}
	public String getBrand_second() {
		return brand_second;
	}
	public void setBrand_second(String brand_second) {
		this.brand_second = brand_second;
	}
	public int getMaxprice() {
		return maxprice;
	}
	public void setMaxprice(int maxprice) {
		this.maxprice = maxprice;
	}
	public int getMinprice() {
		return minprice;
	}
	public void setMinprice(int minprice) {
		this.minprice = minprice;
	}
	public float getCalculated_min() {
		return calculated_min;
	}
	public void setCalculated_min(float calculated_min) {
		this.calculated_min = calculated_min;
	}
	public float getCalculated_max() {
		return calculated_max;
	}
	public void setCalculated_max(float calculated_max) {
		this.calculated_max = calculated_max;
	}
	public String getSubsidy_yn() {
		return subsidy_yn;
	}
	public void setSubsidy_yn(String subsidy_yn) {
		this.subsidy_yn = subsidy_yn;
	}
	public int getInput_sigoongoo_id() {
		return input_sigoongoo_id;
	}
	public void setInput_sigoongoo_id(int input_sigoongoo_id) {
		this.input_sigoongoo_id = input_sigoongoo_id;
	}
	public int getBrand_first_id() {
		return brand_first_id;
	}
	public void setBrand_first_id(int brand_first_id) {
		this.brand_first_id = brand_first_id;
	}
	public int getBrand_second_id() {
		return brand_second_id;
	}
	public void setBrand_second_id(int brand_second_id) {
		this.brand_second_id = brand_second_id;
	}
	public String getHomepage_url() {
		return homepage_url;
	}
	public void setHomepage_url(String homepage_url) {
		this.homepage_url = homepage_url;
	}
	public String getAS_number() {
		return AS_number;
	}
	public void setAS_number(String aS_number) {
		AS_number = aS_number;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}	
	
	@Override
	public String toString() {
		return "SearchDTO [picture=" + picture + ", car_name=" + car_name + ", model_name=" + model_name + ", price="
				+ price + ", zero_to_hundred=" + zero_to_hundred + ", max_mileage=" + max_mileage + ", car_type="
				+ car_type + ", km_kwh=" + km_kwh + ", power_kw=" + power_kw + ", amount=" + amount
				+ ", brand_first_id=" + brand_first_id + ", brand_second_id=" + brand_second_id + ", brand_first="
				+ brand_first + ", brand_second=" + brand_second + ", maxprice=" + maxprice + ", minprice=" + minprice
				+ ", calculated_min=" + calculated_min + ", calculated_max=" + calculated_max + ", subsidy_yn="
				+ subsidy_yn + ", input_sigoongoo_id=" + input_sigoongoo_id + ", homepage_url=" + homepage_url
				+ ", AS_number=" + AS_number + ", brand_name=" + brand_name + "]";
	}

}
