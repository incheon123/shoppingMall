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
	
	public boolean addProductById(int pid, int quantity) {
		conn = dao.getConnection();
		basketDao.setConnection(conn);
		boolean result = basketDao.insertByPid(pid, quantity);
		dao.close(conn);
		
		return result;
	}
	private BasketService() {};
	
}
