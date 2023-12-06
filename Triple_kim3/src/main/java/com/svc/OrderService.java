package com.svc;

import com.beans.*;
import java.sql.*;
import java.util.ArrayList;

import com.jdbc.*;
import com.dao.*;


public class OrderService {
	private Dao jdbc = Dao.getDao();
	private Connection conn;
	private OrderDAO orderDao = new OrderDAO();
	
	//오더서비스클래스에 오더 dto 넘기기
	//1. 상품 포인트 계산해서 사용자 계정에 포인트 지급 o
	//2. 구매한 상품 수량에 맞춰 재고량 업데이트( 지금 같은 경우는 제거하기) o
	//3. 주문번호, 결제번호 발행하기 x
	//4. 주문테이블에 주문정보 집어넣기 o
	//5 결제테이블에 결제정보 집어넣기 o
	//6 사용자에게 주문성공페이지 띄우고 정보 집어넣기 x
	//7 장바구니에서 주문한 상품 제거 o
	
	public OrderResult order(Order product) {
		
		conn = jdbc.getConnection();
		orderDao.setConnection(conn);
		
		OrderResult processResult = orderDao.processOrder(product);
		jdbc.close(conn);
		
		return processResult;
	}
	public OrderResult getOrder(String oid) {
		OrderResult result = null;
		
		conn = jdbc.getConnection();
		orderDao.setConnection(conn);
		result = orderDao.getOrder(oid);
		jdbc.close(conn);
		
		return result;
	}
	
	public OrderResult getOrders(String uid){
		OrderResult result = null;
		
		conn = jdbc.getConnection();
		orderDao.setConnection(conn);
		result = orderDao.getOrders(uid);
		jdbc.close(conn);
		
		return result;
	}
}
