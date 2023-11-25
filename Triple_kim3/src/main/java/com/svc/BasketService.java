package com.svc;

import com.jdbc.Dao;
import java.sql.Connection;
import com.dao.BasketDAO;

public class BasketService {

	private static BasketService basket;
	private Dao dao = Dao.getDao();
	private BasketDAO basketDao = BasketDAO.getInstance();
	private Connection conn;
	
	public static BasketService getInstance() {
		if(basket == null) {
			basket = new BasketService();
			return basket;
		}
		return basket;
	}
	
	public boolean addProductById(String uid, String pid, int size, int quantity) {
		conn = dao.getConnection();
		basketDao.setConnection(conn);
		boolean result = basketDao.insertByPid(uid, pid, size, quantity);
		dao.close(conn);
		
		return result;
	}
	private BasketService() {};
	
}
