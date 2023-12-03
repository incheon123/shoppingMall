package com.dao;

import java.sql.*;
import com.jdbc.Dao;
import com.beans.*;
import java.util.*;

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
	public ArrayList<String> selectBasketProduct(String user_id){
		ArrayList<String> result = new ArrayList<String>();
		
		try {
			pstmt = conn.prepareStatement(
					"SELECT "
					+ "product_id "
					+ "FROM cart "
					+ "WHERE user_id = ?"
				);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result.add(rs.getString("product_id"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return result;
	}
	public BasketProduct selectBasketProduct(String user_id, String pid, int size) {
		
		BasketProduct basketProduct = null;
		try {
			pstmt = conn.prepareStatement(
					"SELECT "
					+ "p.product_id, lp.product_name, lp.product_color, p.price, p.img_url, c.product_quantity, ps.remain_quantity, p.sail, c.product_size "
					+ "FROM cart c, product p, logistic_product lp, product_size ps "
					+ "WHERE c.user_id = ? "
					+ "AND c.product_id = ?  "
					+ "AND p.product_id = ?  "
					+ "AND p.logistic_id = lp.logistic_id "
					+ "AND p.product_id = ps.product_id "
					+ "AND ps.product_size = ?"
					+ "AND p.supply_product_id = lp.product_id "
					+ "AND p.supply_product_date = lp.warehousing_date "
					);
			pstmt.setString(1, user_id);
			pstmt.setString(2, pid);
			pstmt.setString(3, pid);
			pstmt.setInt(4, size);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println("값있잖아 씨발새기야");
				basketProduct = new BasketProduct();
				basketProduct.setPid(rs.getString("product_id"));
				basketProduct.setPname(rs.getString("product_name"));
				basketProduct.setPcolor(rs.getString("product_color"));
				basketProduct.setPrice(rs.getInt("price"));
				basketProduct.setImg_url(rs.getString("img_url"));
				basketProduct.setQuantity(rs.getInt("product_quantity"));
				basketProduct.setSail(rs.getInt("sail"));
				basketProduct.setProduct_size(rs.getInt("product_size"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return basketProduct;
	}
	public BasketProducts selectBasketProduct2(String user_id){
		
		BasketProducts basketProducts = new BasketProducts();
		BasketProduct2 basketProduct2 = null;
		try {
			pstmt = conn.prepareStatement(
					"SELECT "
					+ "* "
					+ "FROM cart "
					+ "WHERE user_id = ?"
					);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				basketProduct2 = new BasketProduct2();
				basketProduct2.setUser_id(rs.getString("user_id"));
				basketProduct2.setPid(rs.getString("product_id"));
				basketProduct2.setSize(rs.getInt("product_size"));
				basketProduct2.setQuantity(rs.getInt("product_quantity"));
				
				basketProducts.addProduct2(basketProduct2);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return basketProducts;
	}
}
