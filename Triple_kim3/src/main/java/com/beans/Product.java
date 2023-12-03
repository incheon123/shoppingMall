package com.beans;

import java.util.*;

public class Product {
	private String pid;
	private String pname;
	private String pcolor;
	private String logi_id;
	private String gender;
	private String available_age;
	private int price;
	private int point;
	private int sail;
	private int total_score;
	private String img_url;
	private int purchase_count;
	private int review_count;
	private String short_desc;
	private String detail_desc;
	private int super_category;
	private int sub_category;
	private ArrayList<ArrayList<Integer>> sizes;
	private String product_of_cart;
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPname() {
		return pname;
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
	public String getLogi_id() {
		return logi_id;
	}
	public void setLogi_id(String logi_id) {
		this.logi_id = logi_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getSail() {
		return sail;
	}
	public void setSail(int sail) {
		this.sail = sail;
	}
	public int getTotal_score() {
		return total_score;
	}
	public void setTotal_score(int total_score) {
		this.total_score = total_score;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public int getPurchase_count() {
		return purchase_count;
	}
	public void setPurchase_count(int purchase_count) {
		this.purchase_count = purchase_count;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public String getShort_desc() {
		return short_desc;
	}
	public void setShort_desc(String short_desc) {
		this.short_desc = short_desc;
	}
	public String getDetail_desc() {
		return detail_desc;
	}
	public void setDetail_desc(String detail_desc) {
		this.detail_desc = detail_desc;
	}
	public int getSuper_category() {
		return super_category;
	}
	public void setSuper_category(int super_category) {
		this.super_category = super_category;
	}
	public int getSub_category() {
		return sub_category;
	}
	public void setSub_category(int sub_category) {
		this.sub_category = sub_category;
	}
	public ArrayList<ArrayList<Integer>> getSizes() {
		return sizes;
	}
	public void setSizes(ArrayList<ArrayList<Integer>> sizes) {
		this.sizes = sizes;
	}
	public String isProduct_of_cart() {
		return product_of_cart;
	}
	public void setProduct_of_cart(String product_of_cart) {
		this.product_of_cart = product_of_cart;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pcolor=" + pcolor + ", logi_id=" + logi_id + ", gender="
				+ gender + ", available_age=" + available_age + ", price=" + price + ", point=" + point + ", sail="
				+ sail + ", total_score=" + total_score + ", img_url=" + img_url + ", purchase_count=" + purchase_count
				+ ", review_count=" + review_count + ", short_desc=" + short_desc + ", detail_desc=" + detail_desc
				+ ", super_category=" + super_category + ", sub_category=" + sub_category + ", sizes=" + sizes
				+ ", product_of_cart=" + product_of_cart + "]";
	}
	
	
	
	
}
