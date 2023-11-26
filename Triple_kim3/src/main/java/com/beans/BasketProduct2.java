package com.beans;

public class BasketProduct2 {
	private String user_id;
	private String pid;
	private int size;
	private int quantity;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "BasketProduct2 [user_id=" + user_id + ", pid=" + pid + ", size=" + size + ", quantity=" + quantity
				+ "]";
	}
	
	
}
