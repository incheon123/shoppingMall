package com.svc;

import java.sql.*;
import java.util.ArrayList;

import com.dao.*;
import com.jdbc.*;
import com.beans.*;

public class ProductService {
	private Connection conn;
	private Dao dao = Dao.getDao();
	private ProductDAO productdao = ProductDAO.getInstance();
	
	//메인 페이지에서 사용하는 메소드
	//가장 높은 판매량의 상품을 순서대로 가져와 반환한다
	public Products getHighPurchaseRatingProducts() {
		conn = dao.getConnection();
		productdao.setConnection(conn);
		Products products = productdao.selectHighPurchaseProducts();
		dao.close(conn);
		return products;
	}
	
	public Product getProductById(String product_id) throws Exception{
		
		conn = dao.getConnection();
		productdao.setConnection(conn);
		Product product = productdao.selectProductById(product_id);
		
		dao.close(conn);
		return product;
	}
	
	//전체상품
	public Products getTotalProducts(String gender, String age, String sbcg) {
		
		conn = dao.getConnection();
		productdao.setConnection(conn);
		Products result = productdao.selectProducts(gender, age, sbcg);
		dao.close(conn);
		
		return result;
	}
	
	//전체 상품이 아닌 경우
	public Products getProducts(String gender, String age, String spcg, String sbcg) {
		conn = dao.getConnection();
		productdao.setConnection(conn);
		
		Products result = productdao.selectProducts(gender, age, spcg, sbcg);
		
		dao.close(conn);
		
		return result;
	}
	
	public ArrayList<ProductCategory> getCategorys(String spcg){
		conn = dao.getConnection();
		productdao.setConnection(conn);
		
		ArrayList<ProductCategory> cate = productdao.getCategory(spcg);
		
		dao.close(conn);
		
		return cate;
	}
}