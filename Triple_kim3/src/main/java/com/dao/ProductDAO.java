package com.dao;

import java.sql.*;

import com.beans.*;
import com.jdbc.*;
import java.util.*;

public class ProductDAO {
	private Dao dao = Dao.getDao();
	private static ProductDAO productdao;
	private Connection conn;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Product product = null;
	private Products products = null;
	
	public static ProductDAO getInstance() {
		if(productdao == null) return new ProductDAO();
		return productdao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	
	public Products selectHighPurchaseProducts() {
		try {
			pstmt = conn.prepareStatement(
					"SELECT * FROM " 
					+ "("				
					+ "SELECT p.product_id, lp.product_name, lp.product_color, p.logistic_id, lp.gender, lp.available_age, p.price,"
					+ "p.product_point, p.sail, p.total_score, p.img_url, p.purchase_count, p.review_count, p.short_desc, p.detail_desc,"
					+ "p.super_category, p.sub_category "
					+ "FROM product p, logistic_product lp "
					+ "WHERE p.logistic_id = lp.logistic_id AND p.supply_product_id = lp.product_id AND p.supply_product_date = lp.warehousing_date "
					+ "ORDER BY p.purchase_count DESC"
					+ ") "
					+ "WHERE ROWNUM <= 30"
					);
			rs = pstmt.executeQuery();
			
			products = new Products();
			while(rs.next()) {
				
				product = new Product();
				product.setPid(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setPcolor(rs.getString(3));
				product.setLogi_id(rs.getString(4));
				product.setGender(rs.getString(5));
				product.setAvailable_age(rs.getString(6));
				product.setPrice(rs.getInt(7));
				product.setPoint(rs.getInt(8));
				product.setSail(rs.getInt(9));
				product.setTotal_score(rs.getInt(10));
				product.setImg_url(rs.getString(11));
				product.setPurchase_count(rs.getInt(12));
				product.setReview_count(rs.getInt(13));
				product.setShort_desc(rs.getString(14));
				product.setDetail_desc(rs.getString(15));
				product.setSuper_category(rs.getInt(16));
				product.setSub_category(rs.getInt(17));
				
				products.addProductToMainPage(product);
			}
		}catch(Exception e) {
			System.out.println("select * from product Error");
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return products;
	}
	
	public Product selectProductById(String product_id) throws Exception{
		Product product;
		
		pstmt = conn.prepareStatement(
				"SELECT "
			    + "p.product_id, lp.product_name, lp.product_color, p.logistic_id, lp.gender, lp.available_age, p.price,"
			    + "p.product_point, p.sail, p.total_score, p.img_url, p.purchase_count, p.review_count, p.short_desc, p.detail_desc,"
			    + "p.super_category, p.sub_category "
				+ "from product p, logistic_product lp "
				+ "where p.product_id = ? "
				+ "AND p.logistic_id = lp.logistic_id "
				+ "AND p.supply_product_id = lp.product_id "
				+ "AND p.supply_product_date = lp.warehousing_date"
				);
		pstmt.setString(1, product_id);
		
		rs = pstmt.executeQuery();
		
		product = new Product();
		
		if(rs.next()) {
			
			product.setPid(rs.getString(1));
			product.setPname(rs.getString(2));
			product.setPcolor(rs.getString(3));
			product.setLogi_id(rs.getString(4));
			product.setGender(rs.getString(5));
			product.setAvailable_age(rs.getString(6));
			product.setPrice(rs.getInt(7));
			product.setPoint(rs.getInt(8));
			product.setSail(rs.getInt(9));
			product.setTotal_score(rs.getInt(10));
			product.setImg_url(rs.getString(11));
			product.setPurchase_count(rs.getInt(12));
			product.setReview_count(rs.getInt(13));
			product.setShort_desc(rs.getString(14));
			product.setDetail_desc(rs.getString(15));
			product.setSuper_category(rs.getInt(16));
			product.setSub_category(rs.getInt(17));
			
			product.setSizes(selectSizeByProductId(product_id));
		}
		dao.close(pstmt);
		dao.close(rs);
		return product; 
	}
	
	private ArrayList<ArrayList<Integer>> selectSizeByProductId(String pid) {
		ArrayList<ArrayList<Integer>> sizes = new ArrayList<>();;
		ArrayList<Integer> slist = null;
		try {
			
			pstmt = conn.prepareStatement(
					"SELECT "
					+ "product_size, remain_quantity "
					+ "FROM "
					+ "product_size "
					+ "WHERE product_id = ? "
					+ "ORDER BY product_size "
					);
			pstmt.setString(1, pid);
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
				//sizes 맵에 사이즈 : 재고량 형식으로 집어넣는다.
				slist = new ArrayList<>();
				slist.add(rs.getInt("product_size"));
				slist.add(rs.getInt("remain_quantity"));
				sizes.add(slist);
			}
			
//			Collections.sort(sizes, Collections.reverseOrder());
			for(ArrayList<Integer> item : sizes) {
				
				System.out.println(item.get(0) + " : " + item.get(1));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return sizes;
	}
}
