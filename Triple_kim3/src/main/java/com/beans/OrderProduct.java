package com.beans;

public class OrderProduct {
	private String pid;
	private String pname;
	private int quantity;
	private int psize;
	private int delivery;
	private int price;
	private int totalProductPrice;
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPsize() {
		return psize;
	}
	public void setPsize(int psize) {
		this.psize = psize;
	}
	public int getDelivery() {
		return delivery;
	}
	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalProductPrice() {
		return totalProductPrice;
	}
	public void setTotalProductPrice(int totalProductPrice) {
		this.totalProductPrice = totalProductPrice;
	}
	
	
}
