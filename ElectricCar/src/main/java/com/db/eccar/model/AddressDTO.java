package com.db.eccar.model;

public class AddressDTO {
	
	int address_id;
	int sigoongoo_id;
	int special_do_id;
	String special_do_name;
	String sigoongoo_name;
	
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public int getSigoongoo_id() {
		return sigoongoo_id;
	}
	public void setSigoongoo_id(int sigoongoo_id) {
		this.sigoongoo_id = sigoongoo_id;
	}
	public int getSpecial_do_id() {
		return special_do_id;
	}
	public void setSpecial_do_id(int special_do_id) {
		this.special_do_id = special_do_id;
	}
	public String getSpecial_do_name() {
		return special_do_name;
	}
	public void setSpecial_do_name(String special_do_name) {
		this.special_do_name = special_do_name;
	}
	public String getSigoongoo_name() {
		return sigoongoo_name;
	}
	public void setSigoongoo_name(String sigoongoo_name) {
		this.sigoongoo_name = sigoongoo_name;
	}
	@Override
	public String toString() {
		return "AddressDTO [address_id=" + address_id + ", sigoongoo_id=" + sigoongoo_id + ", special_do_id="
				+ special_do_id + ", special_do_name=" + special_do_name + ", sigoongoo_name=" + sigoongoo_name
				+ ", getAddress_id()=" + getAddress_id() + ", getSigoongoo_id()=" + getSigoongoo_id()
				+ ", getSpecial_do_id()=" + getSpecial_do_id() + ", getSpecial_do_name()=" + getSpecial_do_name()
				+ ", getSigoongoo_name()=" + getSigoongoo_name() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}
