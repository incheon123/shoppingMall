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
	
	public boolean insertByPid(String uid, String pid, int size, int quantity){
		try {
			
			pstmt = conn.prepareStatement("INSERT INTO CART values(?, ?, ?, ?)" );
			
			pstmt.setString(1, uid);
			pstmt.setString(2, pid);
			pstmt.setInt(3, size);
			pstmt.setInt(4, quantity);
			
			
			//추가하기전에 pk위반사항 검사하고 위반되면 에러보내기
			
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
