package com.dao;

import java.sql.*;
import com.jdbc.*;
import com.beans.User;

public class RegisterDAO {
	Connection conn;
	private Dao dao = Dao.getDao();
	private static RegisterDAO registerDAO = null;
	
	public static RegisterDAO getInstance() {
		if(registerDAO == null)
			return new RegisterDAO();
		return registerDAO;
	}
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public User insertRegiInfo(String user_id, String user_pw, String user_name, String user_email,
			String user_ptel, String user_htel, String user_addr, String user_gender, String user_birth) {
		User user = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into 회원 values(?,?,?,?,?,?,?,?,?, '', '', '')");
			pstmt.setString(1,  user_id);
			pstmt.setString(2,  user_pw);
			pstmt.setString(3,  user_name);
			pstmt.setString(4,  user_email);
			pstmt.setString(5,  user_ptel);
			pstmt.setString(6,  user_htel);
			pstmt.setString(7,  user_addr);
			pstmt.setString(8,  user_gender);
			pstmt.setString(9,  user_birth);
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			
			if(rs.next()) {
				user = new User();
				user.setId(rs.getString(1));
				user.setPw(rs.getString(2));
				user.setName(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setPhnTelNum(rs.getString(5));
				user.setHmTelNum(rs.getString(6));
				user.setAddr(rs.getString(7));
				user.setGender(rs.getString(8));
				user.setBirth(rs.getString(9));
				
				user.setDelete(rs.getString(10));
				user.setDeleteDate(rs.getString(10));
				user.setPoint(rs.getInt(11));
				user.setLastLoginTime(rs.getString(12));
			}
		}catch(Exception e) {
			System.out.println("insert failed");
			e.printStackTrace();
		}finally {
			try {
				dao.close(pstmt);
				dao.close(rs);
				dao.close(conn);
			}catch(Exception e) {
				System.out.println("close failed");
				e.printStackTrace();
			}
		}
		
		
		return user;
	}
}
