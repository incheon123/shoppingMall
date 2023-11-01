package com.svc;

import java.sql.Connection;

import com.beans.User;
import com.dao.RegisterDAO;
import com.jdbc.Dao;

public class RegisterService {
	public User register(String user_id, String user_pw, String user_name, String user_email,
			String user_ptel, String user_htel, String user_addr, String user_gender, String user_birth) {
		
		Dao dao = Dao.getDao();
		
		RegisterDAO registerDao = RegisterDAO.getInstance();
		Connection conn = dao.getConnection();
		registerDao.setConnection(conn);
		
		User user = registerDao.insertRegiInfo(user_id, user_pw, user_name, user_email, user_ptel, user_htel, user_addr, user_gender, user_birth);
		dao.close(conn);
		return user;
	}
}
