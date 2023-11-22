package com.dao;

import java.sql.*;
import java.util.ArrayList;
import com.jdbc.*;
import com.beans.*;
import com.dao.*;
import module.*;

public class ProductDao {
	private Jdbc jdbc = Jdbc.getDao();
	private Connection conn;
	private static ProductDao productdao;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private ProductDao() {}
	public static ProductDao getInstance() {
		if(productdao == null) {
			productdao = new ProductDao();
			return productdao;
		}
		return productdao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public void insertProduct(Product product) {
		
		//공급상품의 모든 사이즈를 찾으면 인서트 하기 전에 product_id 생성
		try {
			
			//삽입
			pstmt = conn.prepareStatement("insert into product "
			+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" );
			
			pstmt.setString(1, product.getPid());
			pstmt.setString(2, product.getLogi_id());
			pstmt.setString(3, product.getSupply_product_id());
			pstmt.setString(4, product.getSupply_product_date());
			pstmt.setInt(5, product.getPrice());
			pstmt.setInt(6, product.getPoint());
			pstmt.setInt(7, product.getSail());
			pstmt.setInt(8, product.getTotal_score());
			pstmt.setString(9, product.getImg_url());
			pstmt.setInt(10, product.getPurchase_count());
			pstmt.setInt(11, product.getReview_count());
			pstmt.setString(12, product.getShort_desc());
			pstmt.setString(13, product.getDetail_desc());
			pstmt.setInt(14, product.getSuper_category());
			pstmt.setInt(15, product.getSub_category());
			
			pstmt.executeUpdate();
			
			insertProductSizes(product);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			jdbc.close(pstmt);
		}
	}
	
	public void insertProductSizes(Product product) throws Exception {
		
		ArrayList<LogisticProductSize> result = productdao.getInstance().selectProductSizes(product.getLogi_id(), 
				product.getSupply_product_id(), product.getSupply_product_date());
		
		for(int i = 0; i < result.size(); i++) {
			pstmt = conn.prepareStatement("insert into product_size "
					+ "values(?, ?, 'false', ?)");
			
			pstmt.setString(1, product.getPid());
			pstmt.setInt(2, result.get(i).getProduct_size());
			pstmt.setInt(3, result.get(i).getQuantity());
			
			pstmt.executeUpdate();
		}
		
		jdbc.close(pstmt);
	}
	
	//반환값은 추후에 product_size(dto)로 반환한다
	public ArrayList<LogisticProductSize> selectProductSizes(String logi_id, String pid, String wd){
		ArrayList<LogisticProductSize> list = null;
		LogisticProductSize lps;
		
		try {
			list = new ArrayList<>();
			
			
			pstmt = conn.prepareStatement("select replace(logistic_id, '-', ''), product_id, "
					+ "replace(replace(replace(warehousing_date, '.', ''), ':', ''), ' ', '') warehousing_date, product_size, quantity from logistic_product_size where logistic_id = ? AND product_id = ? AND warehousing_date = ?");
			pstmt.setString(1, logi_id);
			pstmt.setString(2, pid);
			pstmt.setString(3, wd);
			rs = pstmt.executeQuery();
			
			//모든 사이즈를 list에 담는다.
			while(rs.next()) {
				lps = new LogisticProductSize();
				
				lps.setLogistic_id(rs.getString(1));
				lps.setProduct_id(rs.getString(2));
				lps.setWarehousing_date(rs.getString(3));
				lps.setProduct_size(rs.getInt(4));
				lps.setQuantity(rs.getInt(5));
				
				list.add(lps);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			jdbc.close(pstmt);
			jdbc.close(rs);
		}
		
		
		return list;
		
	}
}
