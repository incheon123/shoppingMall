package com.svc;

import com.jdbc.*;
import com.dao.*;
import com.beans.*;
import java.sql.*;

public class ProductService {
	private Jdbc jdbc = Jdbc.getDao();
	private Connection conn;
	private ProductDao productdao = ProductDao.getInstance();
	private LogisticProductDao logiProductdao = LogisticProductDao.getInstance();
	
	public void putProduct(Product product) {
		conn = jdbc.getConnection();
		productdao.setConnection(conn);
		productdao.insertProduct(product);
		jdbc.close(conn);
		return;
	}
	
	public void updateLogiProductEnroll(String cid, String pid, String date) {
		conn = jdbc.getConnection();
		logiProductdao.setConnection(conn);
		logiProductdao.updateLogiProductEnroll(cid, pid, date);
		jdbc.close(conn);
		return;
	}
}
