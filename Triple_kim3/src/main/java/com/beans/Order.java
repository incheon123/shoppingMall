package com.beans;

import java.util.ArrayList;

public class Order {
	
	//주문자
	private String uid;
	private String uname;
	private String ptel;
	private String addr1;
	private String addr2;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPtel() {
		return ptel;
	}
	public void setPtel(String ptel) {
		this.ptel = ptel;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public void setProducts(ArrayList<OrderProduct> products) {
		this.products = products;
	}
	
	
	//주문상품정보
	private ArrayList<OrderProduct> products = new ArrayList<>();
	
	public void addProduct(OrderProduct product) {
		products.add(product);
	}
	public ArrayList<OrderProduct> getProducts(){
		return products;
	}
	
	//결제자정보
	private String payment_user;
	private String payment_method;
	private String payment_card_company;
	private String payment_num;
	private String payment_totalPrice;

	public String getPayment_user() {
		return payment_user;
	}
	public void setPayment_user(String payment_user) {
		this.payment_user = payment_user;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public String getPayment_card_company() {
		return payment_card_company;
	}
	public void setPayment_card_company(String payment_card_company) {
		this.payment_card_company = payment_card_company;
	}
	public String getPayment_num() {
		return payment_num;
	}
	public void setPayment_num(String payment_num) {
		this.payment_num = payment_num;
	}
	public String getPayment_totalPrice() {
		return payment_totalPrice;
	}
	public void setPayment_totalPrice(String payment_totalPrice) {
		this.payment_totalPrice = payment_totalPrice;
	}
}
