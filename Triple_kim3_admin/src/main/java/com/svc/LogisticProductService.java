package com.svc;

import com.jdbc.Jdbc;
import java.sql.*;
import com.dao.*;
import com.beans.*;
public class LogisticProductService {
	private Jdbc jdbc = Jdbc.getDao();
	private Connection conn;
	private LogisticProductDao productdao = LogisticProductDao.getInstance();
	
	public LogisticProducts getLogisticProduct(String enroll) {
		conn = jdbc.getConnection();
		productdao.setConnection(conn);
		LogisticProducts lp = productdao.selectLogisticProduct(enroll);
		jdbc.close(conn);
		return lp;
	}
}
