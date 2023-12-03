package com.dao;

import com.beans.*;
import java.sql.*;
import java.util.ArrayList;

import com.jdbc.*;
import com.dao.*;
import com.lib.*;
import com.lib.*;

public class InquiryDAO {
	
	private Connection conn;
	private Dao dao = Dao.getDao();
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public int insertInquiry(Inquiry inquiry) {
		int result = 0;
		try {
			pstmt = conn.prepareStatement(
					"INSERT INTO inquiry "
					+ "values(?, ?, sysdate, ?, ?, ?, ?, ?) "
					);
			
			System.out.println("iid " + inquiry.getIid());
			System.out.println("uid " + inquiry.getUid());
			System.out.println("title " + inquiry.getTitle());
			System.out.println("desc " + inquiry.getDesc());
			System.out.println("type " + inquiry.getType());
			System.out.println("status " + inquiry.getStatus());
			System.out.println("delete " + inquiry.getDelete());
			
			
			pstmt.setString(1, inquiry.getIid());
			pstmt.setString(2, inquiry.getUid());
			pstmt.setString(3, inquiry.getTitle());
			pstmt.setString(4, inquiry.getDesc());
			pstmt.setString(5, inquiry.getType());
			pstmt.setString(6, inquiry.getStatus());
			pstmt.setString(7, inquiry.getDelete());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(conn);
		}
		
		return result;
	}
	
	public ArrayList<Inquiry> selectInquirys(){
		ArrayList<Inquiry> list = new ArrayList<>();
		Inquiry inquiry;
		try {
			pstmt = conn.prepareStatement(
					""
					);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				inquiry = new Inquiry();
				
				inquiry.setIid(rs.getString("inquiry_id"));
				inquiry.setUid(rs.getString("user_id"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
		}
		return list;
	}
}
