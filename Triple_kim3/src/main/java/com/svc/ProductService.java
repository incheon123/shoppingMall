package com.svc;

import java.sql.*;
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
		return product;
	}
}