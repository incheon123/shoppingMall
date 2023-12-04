package com.dao;

import com.beans.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;

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
	
	public ArrayList<Inquiry> selectInquirys(int startNo, int endNo){
		ArrayList<Inquiry> list = new ArrayList<>();
		Inquiry inquiry;
		
		System.out.println(startNo);
		System.out.println(endNo);
		try {
			pstmt = conn.prepareStatement(
					"select * "
					+ "from (SELECT ROWNUM AS rownumber, X.* "
					+ "FROM (select * from inquiry WHERE is_delete = 'false' ORDER BY inquiry_date DESC) X ) E "
					+ "WHERE E.rownumber between ? AND ? "
					+ "ORDER BY E.rownumber ASC"
					);
			pstmt.setInt(1, startNo);
			pstmt.setInt(2, endNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				inquiry = new Inquiry();
				
				inquiry.setRownum(rs.getInt("rownumber"));
				inquiry.setIid(rs.getString("inquiry_id"));
				inquiry.setUid(rs.getString("writer"));
				inquiry.setDate(rs.getString("inquiry_date"));
				inquiry.setTitle(rs.getString("title"));
				inquiry.setDesc(rs.getString("inquiry_desc"));
				inquiry.setType(rs.getString("inquiry_type"));
				inquiry.setStatus(rs.getString("inquiry_status"));
				inquiry.setDelete(rs.getString("is_delete"));
				
				list.add(inquiry);
				System.out.println(inquiry);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
		}
		
		return list;
	}
	
	public int getSize() {
		int result = 0;
		try {
			pstmt = conn.prepareStatement(
					"SELECT count(*) i_length "
					+ "FROM inquiry "
					+ "WHERE is_delete = 'false' "
					);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt("i_length");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return result;
	}
	
	public Inquiry getInquiry(String iid) {
		Inquiry inquiry = null;
		
		try {
			pstmt = conn.prepareStatement(
					"SELECT * "
					+ "FROM inquiry "
					+ "WHERE inquiry_id = ?"
					);
			pstmt.setString(1, iid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				inquiry = new Inquiry();
				
				inquiry.setUid(rs.getString("writer"));
				inquiry.setType(rs.getString("inquiry_type"));
				inquiry.setTitle(rs.getString("title"));
				inquiry.setDesc(rs.getString("inquiry_desc"));
				inquiry.setDate(rs.getString("inquiry_date"));
				inquiry.setStatus(rs.getString("inquiry_status"));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return inquiry;
	}
}
