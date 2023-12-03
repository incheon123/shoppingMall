package com.beans;

import java.util.ArrayList;

import com.beans.*;

public class OrderResult {
	private Order order;
	private Payment payment;
	private ArrayList<OrderProduct> products;
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Payment getPayment() {
		return payment;
	}
	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	public ArrayList<OrderProduct> getProducts() {
		return products;
	}
	public void setProducts(ArrayList<OrderProduct> products) {
		this.products = products;
	}
	
}
