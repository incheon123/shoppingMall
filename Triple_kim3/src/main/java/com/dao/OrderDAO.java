package com.dao;

import com.beans.*;
import java.sql.*;
import java.util.ArrayList;

import com.jdbc.*;
import com.dao.*;
import com.lib.*;

public class OrderDAO {
	
	private Dao dao = Dao.getDao();
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	private OrderId oid = new OrderId();
	private PaymentId pyid = new PaymentId();
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	//주문함수
	public OrderResult processOrder(Order product) {
		OrderResult orderResult = new OrderResult();
		String order_id = oid.generateOrderId();
		PaymentId pyid = new PaymentId();
		String payment_id = pyid.generatePaymentId();
		
		int total = getOrderPrice(product);
		
		try {
			
			conn.prepareStatement("savepoint order_point").execute();
			conn.prepareStatement(
					"insert into user_order values('" + order_id + "' , '" + product.getUid() + "' , '" + product.getAddr1() + " " + product.getAddr2() +"' , to_char(sysdate, 'yymmdd'), '" + total + "', '주문성공', '" + getOrderDeliveryPrice(product) + "', 0)"
					).executeUpdate();
			
			//order_detail에 값을 집어넣으면 trigger 자동 실행.
			//triger는 sqldeveloper에 먼저 집어넣었음
			for(int i = 0; i < product.getProducts().size(); i++) {
				pstmt = conn.prepareStatement(
						"insert into order_detail values(?, ?, ?, ?, ?, ?)"
						);
				pstmt.setString(1, order_id);
				pstmt.setString(2, product.getProducts().get(i).getPid());
				pstmt.setInt(3, product.getProducts().get(i).getPsize());
				pstmt.setInt(4, product.getProducts().get(i).getQuantity());
				pstmt.setInt(5, product.getProducts().get(i).getPrice());
				pstmt.setString(6, "false");
				
				pstmt.executeUpdate();
			}
			
			
			
			pstmt = conn.prepareStatement("insert into payment values(?, ?, ?, to_char(sysdate, 'yymmdd'), ?, ?, ?, ?, ?)");
			
			
			pstmt.setString(1, payment_id);
			pstmt.setString(2, order_id);
			pstmt.setString(3, product.getUid());
			pstmt.setInt(4, getOrderPrice(product));
			pstmt.setString(5, product.getPayment_method());
			pstmt.setString(6, product.getPayment_num());
			pstmt.setString(7, product.getPayment_card_company());
			pstmt.setString(8, product.getUname());
			
			pstmt.executeUpdate();
			
			conn.prepareStatement("commit work").execute();
			
			orderResult.setOrder(getOrderById(order_id));
			orderResult.setPayment(getPaymentById(payment_id));
			orderResult.setProducts(getProductsById(order_id));
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
		}
		return orderResult;
	}
	public ArrayList<OrderProduct> getProductsById(String order_id){
		
		ArrayList<OrderProduct> products = new ArrayList<OrderProduct>();
		OrderProduct product;
		try {
			pstmt = conn.prepareStatement(
					"select \n"
					+ "p.product_id, concat(lp.product_name, concat(' ', lp.product_color)) as product_name, od.quantity, od.product_size, p.sail, p.price - (p.price * (p.sail * 0.01)) as totalOrderPrice, od.price \n"
					+ "from order_detail od, product p, logistic_product lp\n"
					+ "where od.order_id = ?\n"
					+ "    AND od.product_id = p.product_id\n"
					+ "    AND p.logistic_id = lp.logistic_id\n"
					+ "    AND p.supply_product_id = lp.product_id"
					);
			pstmt.setString(1, order_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				product = new OrderProduct();
				
				product.setPid(rs.getString("product_id"));
				product.setPname(rs.getString("product_name"));
				product.setQuantity(rs.getInt("quantity"));
				product.setPsize(rs.getInt("product_size"));
				product.setSail(rs.getInt("sail"));
				product.setPrice(rs.getInt("price"));
				product.setTotalProductPrice(rs.getInt("totalOrderPrice"));
				
				System.out.println(product);
				
				products.add(product);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return products;
	}
	public Payment getPaymentById(String payment_id) {
		Payment payment = null;
		System.out.println("pid : " + payment_id);
		try {
			pstmt = conn.prepareStatement(
					"select "
					+ "* "
					+ "FROM payment "
					+ "WHERE payment_id = ?"
					);
			pstmt.setString(1, payment_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				payment = new Payment();
				payment.setPayment_id(rs.getString("payment_id"));
				payment.setTotal(rs.getInt("payment_price"));
				payment.setPayment_username(rs.getString("payment_username"));
				payment.setPayment_card_number(rs.getString("payment_card_num"));
				System.out.println(payment);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return payment;
	}
	public Order getOrderById(String order_id) {
		Order order = new Order();
		try {
			pstmt = conn.prepareStatement(
					"select "
					+ "order_id, order_user, address, "
					+ "concat(concat(concat(substr(order_date, 0, 2), '년 '),  concat(substr(order_date, 3, 2), '월 ')), concat(substr(order_date, 4,2), '일')) as order_date, "
					+ "concat(total_price, '원'), order_status, delivery_price, used_point "
					+ "FROM user_order "
					+ "WHERE order_Id = ?"
					);
			pstmt.setString(1, order_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				order.setOrder_id(rs.getString("order_id"));
				order.setOrder_date(rs.getString("order_date"));
				order.setAddr1(rs.getString("address"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return order;
	}
	//최종 배달비를 계산한다
	private int getOrderDeliveryPrice(Order product) {
		if(getOrderPrice(product) >= 100000) {
			return 0;
		}
		return 3000;
	}
	
	//최종 결제가격을 결정한다
	private int getOrderPrice(Order product) {
		int total = 0;
		for(int i = 0; i < product.getProducts().size(); i++) {
			total += product.getProducts().get(i).getTotalProductPrice();
		}
		return total;
	}
	
	public OrderResult getOrders(String uid) {
		OrderResult orders = new OrderResult();
		Order order = null;
		ArrayList<Order> order_list = new ArrayList<>();
		Payment payment = null;
		String order_id = null;
		try {
			pstmt = conn.prepareStatement(
					"SELECT "
					+ "order_id, concat(concat(concat(substr(order_date, 0, 2), '년'),  concat(substr(order_date, 3, 2), '월')), concat(substr(order_date, 5, 2), '일')) as order_date, address "
					+ "FROM user_order "
					+ "WHERE order_user = ? "
					);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				order = new Order();
				payment = new Payment();
				
				order_id = rs.getString("order_id");
				
				order.setOrder_id(rs.getString("order_id"));
				order.setOrder_date(rs.getString("order_date"));
				order.setAddr1(rs.getString("address"));
				
				order_list.add(order);
			}
			orders.setOrders(order_list);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dao.close(pstmt);
			dao.close(rs);
		}
		
		return orders;
	}
	
}
