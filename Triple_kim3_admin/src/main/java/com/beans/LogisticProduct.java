package com.beans;

import java.util.StringTokenizer;

public class LogisticProduct {
	
	/**
	 * logistic_id             char(20),
    product_id              char(20),
    warehousing_date        varchar2(30),
    product_name            varchar(20),
    product_color           varchar(20),
    purchase_price          number, --매입가격
    total_quantity          number, --입고수량
    --category_name           varchar(20),
    is_new                  char(6)      check(is_new in('true', 'false')),
    gender                  char(8)      check(gender in('man', 'woman', 'both')),
    available_age           char(8)      check(available_age in('adult', 'child')),
    enroll                  char(6)      check(enroll in('true', 'false')),
	 */
	private String logistic_id;
	private String product_id;
	private String warehousing_date;
	private String product_name;
	private String product_color;
	private int purchase_price;
	private int total_quantity;
	private String is_new;
	private String gender;
	private String available_age;
	private String enroll;
	
	
	public String getLogistic_id() {
		return logistic_id;
	}
	public void setLogistic_id(String logistic_id) {
		this.logistic_id = logistic_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getWarehousing_date() {
		return warehousing_date;
	}
	public void setWarehousing_date(String warehousing_date) {
		this.warehousing_date = warehousing_date;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public int getPurchase_price() {
		return purchase_price;
	}
	public void setPurchase_price(int purchase_price) {
		this.purchase_price = purchase_price;
	}
	public int getTotal_quantity() {
		return total_quantity;
	}
	public void setTotal_quantity(int total_quantity) {
		this.total_quantity = total_quantity;
	}
	public String getIs_new() {
		return is_new;
	}
	public void setIs_new(String is_new) {
		this.is_new = is_new;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAvailable_age() {
		return available_age;
	}
	public void setAvailable_age(String available_age) {
		this.available_age = available_age;
	}
	public String getEnroll() {
		return enroll;
	}
	public void setEnroll(String enroll) {
		this.enroll = enroll;
	}
	@Override
	public String toString() {
		return "LogisticProduct [logistic_id=" + logistic_id + ", product_id=" + product_id + ", warehousing_date="
				+ warehousing_date + ", product_name=" + product_name + ", product_color="
				+ product_color + ", purchase_price=" + purchase_price + ", total_quantity=" + total_quantity
				+ ", is_new=" + is_new + ", gender=" + gender + ", available_age=" + available_age + ", enroll="
				+ enroll + "]";
	}
}
