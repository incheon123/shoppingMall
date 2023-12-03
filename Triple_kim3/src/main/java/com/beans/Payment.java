package com.beans;

public class Payment {
	private String payment_id;
	private int total;
	private String payment_username;
	private String payment_card_number;
	
	
	
	public String getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getPayment_username() {
		return payment_username;
	}
	public void setPayment_username(String payment_username) {
		this.payment_username = payment_username;
	}
	public String getPayment_card_number() {
		return payment_card_number;
	}
	public void setPayment_card_number(String payment_card_number) {
		this.payment_card_number = payment_card_number;
	}
	
	
}
