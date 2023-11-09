package com.svc;

import java.sql.*;
import com.dao.*;
import com.jdbc.*;
import com.beans.*;

public class ProductService {
	private Connection conn;
	private Dao dao = Dao.getDao();
	private ProductDAO productdao = ProductDAO.getInstance();
	
	public Products getHighPurchaseRatingProducts() {
		conn = dao.getConnection();
		productdao.setConnection(conn);
		Products products = productdao.selectHighPurchaseProducts();
		dao.close(conn);
		return products;
	}
}