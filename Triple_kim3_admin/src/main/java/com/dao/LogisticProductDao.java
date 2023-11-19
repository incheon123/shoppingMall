package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.StringTokenizer;

import com.jdbc.Jdbc;
import java.sql.*;
import com.beans.*;


public class LogisticProductDao {
	private static LogisticProductDao lp;
	private Jdbc jdbc = Jdbc.getDao();
	private Connection conn;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public static LogisticProductDao getInstance() {
		
		if(lp == null) {
			lp = new LogisticProductDao();
			return lp;
		}
		return lp;
		
	}
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public LogisticProducts selectLogisticProduct(String enroll) {
		LogisticProduct logi_product;
		LogisticProducts logi_products = new LogisticProducts();
		try {
			String sql = "select * from logistic_product where enroll = '" + enroll + "'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				logi_product = new LogisticProduct();
				
				logi_product.setLogistic_id(rs.getString(1));
				logi_product.setProduct_id(rs.getString(2));
				logi_product.setWarehousing_date(rs.getString(3));
				logi_product.setProduct_name(rs.getString(4));
				logi_product.setProduct_color(rs.getString(5));
				logi_product.setPurchase_price(rs.getInt(6));
				logi_product.setTotal_quantity(rs.getInt(7));
				logi_product.setIs_new(rs.getString(8));
				logi_product.setGender(rs.getString(9));
				logi_product.setAvailable_age(rs.getString(10));
				
				logi_products.addLogisticProduct(logi_product);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return logi_products;
	}
}
