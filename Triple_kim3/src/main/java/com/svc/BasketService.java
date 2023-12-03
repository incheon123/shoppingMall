package com.svc;

import com.jdbc.Dao;
import java.sql.Connection;
import com.dao.BasketDAO;
import com.beans.*;
import java.util.*;

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
	
	private BasketService() {};
	
	public boolean addProductById(String uid, String pid, int size, int quantity) {
		conn = dao.getConnection();
		basketDao.setConnection(conn);
		boolean result = basketDao.insertByPid(uid, pid, size, quantity);
		dao.close(conn);
		
		return result;
	}
	
	public BasketProduct getProduct(String user_id, String pid, int size) {
		conn = dao.getConnection();
		basketDao.setConnection(conn);
		BasketProduct result = basketDao.selectBasketProduct(user_id, pid, size);
		dao.close(conn);
		return result;
	}
	
	public ArrayList<BasketProduct2> getProductByUid(String user_id) {
		conn = dao.getConnection();
		basketDao.setConnection(conn);
		BasketProducts result = basketDao.selectBasketProduct2(user_id);
		dao.close(conn);
		return result.getProduct2();
	}
	
	public ArrayList<String> getProductByUserId(String user_id){
		conn = dao.getConnection();
		basketDao.setConnection(conn);
		ArrayList<String> result = basketDao.selectBasketProduct(user_id);
		dao.close(conn);
		return result;
	}
}
