package com.dao;

import java.sql.*;
import com.jdbc.Dao;


public class BasketDAO {
	private static BasketDAO basket;
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	private Dao dao = Dao.getDao();
	
	public static BasketDAO getInstance() {
		if(basket == null) {
			basket = new BasketDAO();
			return basket;
		}
		return basket;
	}
	private BasketDAO() {};
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public boolean insertByPid(int pid, int quantity){
		try {
			
			pstmt = conn.prepareStatement("insert into basket values(?, ?)" );
			pstmt.setInt(1, pid);
			pstmt.setInt(2, quantity);
			pstmt.execute();
			
			//성공적으로 삽입시
			return true;
			
		}catch(Exception e) {
			System.out.println("삽입 실패");
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
		}

		//삽입 실패
		return false;
	}
	
	public boolean selectPid(int pid) {
try {
			
			pstmt = conn.prepareStatement("select pid from basket");
			pstmt.execute();
			
			//성공적으로 삽입시
			return true;
			
		}catch(Exception e) {
			System.out.println("삽입 실패");
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
		}

		//삽입 실패
		return false;
	}
}
