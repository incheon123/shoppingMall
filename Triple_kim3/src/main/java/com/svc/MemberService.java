package com.svc;

import java.sql.Connection;

import com.beans.User;
import com.dao.MemberDAO;
import com.jdbc.Dao;

public class MemberService {
	private MemberDAO member = MemberDAO.getInstance();
	private Dao dao = Dao.getDao();
	private Connection conn;
	
	public User getLoginUser(User login_info) {
		conn = dao.getConnection();
		member.setConnection(conn);
		User user = member.selectAccount(login_info);
		dao.close(conn);
		return user;
	}
	
	public User register(User user_info) {
		conn = dao.getConnection();
		member.setConnection(conn);
		User user = member.insertRegiInfo(user_info);
		dao.close(conn);
		return user;
	}
	public boolean checkDuplicateId(String id) {
		conn = dao.getConnection();
		member.setConnection(conn);
		boolean isDuplicate = member.checkDuplicateId(id);
		dao.close(conn);
		if(isDuplicate) return true;
		return false;
	}
}
