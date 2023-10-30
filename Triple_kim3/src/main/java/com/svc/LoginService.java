package com.svc;

import com.jdbc.*;
import com.beans.*;
import com.dao.*;
import java.sql.Connection;

public class LoginService {
	
	public User getLoginUser(String id, String pw) {
		Dao dao = Dao.getDao();
		LoginDAO loginDao = LoginDAO.getInstance();
		Connection conn = dao.getConnection();
		loginDao.setConnection(conn);
		User user = loginDao.selectAccount(id, pw);
		dao.close(conn);
		return user;
	}
}