package com.beans;

import java.util.*;

public class BasketProducts {
	private ArrayList<BasketProduct> product = new ArrayList<>();
	private ArrayList<BasketProduct2> product2 = new ArrayList<>();
	
	
	public ArrayList<BasketProduct> getProduct() {
		return product;
	}
	public void addProduct(BasketProduct product) {
		this.product.add(product);
	}
	public ArrayList<BasketProduct2> getProduct2() {
		return product2;
	}
	public void addProduct2(BasketProduct2 product2) {
		this.product2.add(product2);
	}
	
	
}
