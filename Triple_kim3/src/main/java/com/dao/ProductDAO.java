package com.dao;

import java.sql.*;

import com.beans.*;
import com.jdbc.*;

public class ProductDAO {
	private Dao dao = Dao.getDao();
	private static ProductDAO productdao;
	private Connection conn;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Product product = null;
	private Products products = null;
	
	public static ProductDAO getInstance() {
		if(productdao == null) return new ProductDAO();
		return productdao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	
	public Products selectHighPurchaseProducts() {
		try {
			pstmt = conn.prepareStatement("select * from product where purchase_count >= 200");
			rs = pstmt.executeQuery();
			
			products = new Products();
			while(rs.next()) {
				
				product = new Product();
				product.setProduct_id(rs.getInt(1));
				product.setProduct_name(rs.getString(2));
				product.setCompany_id(rs.getInt(3));
				product.setPrice(rs.getInt(4));
				product.setMin_size(rs.getInt(5));
				product.setMax_size(rs.getInt(6));
				product.setMm(rs.getInt(7));
				product.setShort_desc(rs.getString(8));
				product.setDetail_desc(rs.getString(9));
				product.setProduct_point(rs.getInt(10));
				product.setPurchase_count(rs.getInt(11));
				product.setSail(rs.getInt(12));
				product.setAvailable_age(rs.getString(13));
				product.setGender(rs.getString(14));
				product.setProduct_category_id(rs.getInt(15));
				product.setCategory_id(rs.getInt(16));
				product.setImg_url(rs.getString(17));
				
				products.addProductToMainPage(product);
			}
		}catch(Exception e) {
			System.out.println("select * from product Error");
			dao.close(pstmt);
			dao.close(rs);
			e.printStackTrace();
		}
		
		return products;
	}
}
