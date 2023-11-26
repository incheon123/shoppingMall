package com.beans;

public class BasketProduct {
	private String pname;
	private int price;
	private String pcolor;
	private String img_url;
	private int quantity;
	private int remain_quantity;
	private int sail;
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getRemain_quantity() {
		return remain_quantity;
	}
	public void setRemain_quantity(int remain_quantity) {
		this.remain_quantity = remain_quantity;
	}
	public int getSail() {
		return sail;
	}
	public void setSail(int sail) {
		this.sail = sail;
	}
}
