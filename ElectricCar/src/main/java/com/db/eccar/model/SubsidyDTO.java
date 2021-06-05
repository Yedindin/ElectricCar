package com.db.eccar.model;

public class SubsidyDTO {
	int subsidy_id;
	int amount;
	int address_id;
	
	public int getSubsidy_id() {
		return subsidy_id;
	}
	public void setSubsidy_id(int subsidy_id) {
		this.subsidy_id = subsidy_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	
	@Override
	public String toString() {
		return "SubsidyDTO [subsidy_id=" + subsidy_id + ", amount=" + amount + ", address_id=" + address_id
				+ ", getSubsidy_id()=" + getSubsidy_id() + ", getAmount()=" + getAmount() + ", getAddress_id()="
				+ getAddress_id() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
}
