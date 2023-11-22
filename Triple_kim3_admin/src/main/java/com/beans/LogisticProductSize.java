package com.beans;

public class LogisticProductSize {
	private String logistic_id;
	private String product_id;
	private String warehousing_date;
	private int product_size;
	private int quantity;
	
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
	public int getProduct_size() {
		return product_size;
	}
	public void setProduct_size(int product_size) {
		this.product_size = product_size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Override
	public String toString() {
		return "LogisticProductSize [logistic_id=" + logistic_id + ", product_id=" + product_id + ", warehousing_date="
				+ warehousing_date + ", product_size=" + product_size + ", quantity=" + quantity + "]";
	}
	
	
}	
