package com.dao;

import com.beans.User;
import com.dao.*;
import com.jdbc.Dao;

import java.sql.*;

public class LoginDAO {
	private static LoginDAO loginDAO;
	private Dao dao = Dao.getDao();
	private Connection conn;
	
	private LoginDAO() {}
	
	public static LoginDAO getInstance() {
		if(loginDAO == null)
			return new LoginDAO();
		
		return loginDAO;
	}
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public User selectAccount(String user_id, String user_pw){
		User user = null;
		PreparedStatement pstmt=null;
		Statement stmt = null;
		
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from 회원 where 아이디 = ? AND 비밀번호 = ?");
			pstmt.setString(1,  user_id);
			pstmt.setString(2,  user_pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new User();
				user.setId(rs.getString(1));
				user.setPw(rs.getString(2));
				user.setName(rs.getString(3));
				user.setPhnTelNum(rs.getString(4));
				user.setHmTelNum(rs.getString(5));
				user.setAddr(rs.getString(6));
				user.setGender(rs.getString(7));
				user.setBirth(rs.getString(8));
				user.setDelete(rs.getString(9));
				user.setDeleteDate(rs.getString(10));
				user.setPoint(rs.getInt(11));
				user.setLastLoginTime(rs.getString(12));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				dao.close(pstmt);
				dao.close(rs);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return user;
	}
}