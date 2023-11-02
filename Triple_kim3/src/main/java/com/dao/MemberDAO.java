package com.dao;

import com.beans.User;
import com.dao.*;
import com.jdbc.Dao;
import java.sql.*;

public class MemberDAO {
	private static MemberDAO memberdao;
	private Dao dao = Dao.getDao();
	private Connection conn;

	private User user = null;
	private PreparedStatement pstmt = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	public static MemberDAO getInstance() {
		if(memberdao == null)
			return new MemberDAO();
		
		return memberdao;
	}
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public User selectAccount(User login_info){
		
		try {
			pstmt = conn.prepareStatement("select * from 회원 where 아이디 = ? AND 비밀번호 = ?");
			pstmt.setString(1,  login_info.getId());
			pstmt.setString(2,  login_info.getPw());
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
	public User insertRegiInfo(User user_info) {
		
		try {
			pstmt = conn.prepareStatement("insert into 회원 values(?,?,?,?,?,?,?,?,?, '', '', '')");
			pstmt.setString(1,  user_info.getId());
			pstmt.setString(2,  user_info.getPw());
			pstmt.setString(3,  user_info.getName());
			pstmt.setString(4,  user_info.getEmail());
			pstmt.setString(5,  user_info.getPhnTelNum());
			pstmt.setString(6,  user_info.getHmTelNum());
			pstmt.setString(7,  user_info.getAddr());
			pstmt.setString(8,  user_info.getGender());
			pstmt.setString(9,  user_info.getBirth());
			pstmt.executeUpdate();
			
			
			ResultSet temp = selectUserId(user_info.getId());
			if(temp.next()) {
				user = new User();
				user.setId(temp.getString(1));
				user.setPw(temp.getString(2));
				user.setName(temp.getString(3));
				user.setEmail(temp.getString(4));
				user.setPhnTelNum(temp.getString(5));
				user.setHmTelNum(temp.getString(6));
				user.setAddr(temp.getString(7));
				user.setGender(temp.getString(8));
				user.setBirth(temp.getString(9));
				
				user.setDelete(temp.getString(10));
				user.setDeleteDate(temp.getString(11));
				user.setPoint(temp.getInt(12));
//				user.setLastLoginTime(rs.getString(12));
			}
		}catch(Exception e) {
			System.out.println("insert failed");
			e.printStackTrace();
		}finally {
			try {
				dao.close(pstmt);
				dao.close(rs);
			}catch(Exception e) {
				System.out.println("close failed");
				e.printStackTrace();
			}
		}
		
		
		return user;
	}
	
	public ResultSet selectUserId(String user_id) {
		try {
			pstmt = conn.prepareStatement("select * from 회원 where 아이디 = ?");
			pstmt.setString(1,  user_id);
			rs = pstmt.executeQuery();
		}catch(Exception e) {
			System.out.println("select failed");
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	
	/**
	 * 회원가입하려는 사용자의 아이디가 중복되는지 확인하는 메소드
	 * @param user_id
	 * @return boolean
	 */
	public boolean checkDuplicateId(String user_id) {
		try {
			pstmt = conn.prepareStatement("select case when count(*) = 1 then 'true' else 'false' end as result from 회원 where 아이디 = ? ");
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			rs.next();
			if(rs.getString(1).equals("true")) return true;
		}catch(Exception e) {
			System.out.println("실행 에러");
			e.printStackTrace();
		}
		return false;
	}
}
