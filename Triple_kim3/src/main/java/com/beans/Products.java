package com.beans;

import java.util.ArrayList;
import com.beans.Product;

public class Products {
	private ArrayList<Product> mainPageProducts;
	private ArrayList<Product> products;
	private ArrayList<ProductCategory> categorys;
	
	public Products() {
		mainPageProducts = new ArrayList<>();
		products = new ArrayList<>();
	}
	
	public void addProductToMainPage(Product product) {
		if(product != null)
			mainPageProducts.add(product);
	}
	public ArrayList<Product> getMainPageProducts(){
		return mainPageProducts;
	}
	
	public void addProductToProductPage(Product product) {
		products.add(product);
	}
	public ArrayList<Product> getProducts(){
		return mainPageProducts;
	}

	public ArrayList<ProductCategory> getCategorys() {
		return categorys;
	}

	public void setCategorys(ArrayList<ProductCategory> categorys) {
		this.categorys = categorys;
	}
	
}
