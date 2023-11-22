package com.beans;

public class Product {
	private String pid;
	private String logi_id;
	private String supply_product_id;
	private String supply_product_date;
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
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getLogi_id() {
		return logi_id;
	}
	public void setLogi_id(String logi_id) {
		this.logi_id = logi_id;
	}
	public String getSupply_product_id() {
		return supply_product_id;
	}
	public void setSupply_product_id(String supply_product_id) {
		this.supply_product_id = supply_product_id;
	}
	public String getSupply_product_date() {
		return supply_product_date;
	}
	public void setSupply_product_date(String supply_product_date) {
		this.supply_product_date = supply_product_date;
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
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", logi_id=" + logi_id + ", supply_product_id=" + supply_product_id
				+ ", supply_product_date=" + supply_product_date + ", price=" + price + ", point=" + point + ", sail="
				+ sail + ", total_score=" + total_score + ", img_url=" + img_url + ", purchase_count=" + purchase_count
				+ ", review_count=" + review_count + ", short_desc=" + short_desc + ", detail_desc=" + detail_desc
				+ ", super_category=" + super_category + ", sub_category=" + sub_category + "]";
	}
	
	
}
