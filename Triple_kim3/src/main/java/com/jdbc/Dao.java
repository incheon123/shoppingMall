package com.jdbc;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.ResultSet;
import java.sql.PreparedStatement;


// Referenced Libraries로 참조가 안됨
// WEB-INF에서 참조해야 됌
public class Dao {
	private Connection conn;
	private static Dao dao;
	
	private Dao() {}
	public static Dao getDao() {
		if(dao == null) {
			dao = new Dao();
			return dao;
		}
		return dao;
	}
	
	public Connection getConnection() {
		try {
			
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String id  = "system";
			String pw = "1";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("db정상연결");
			
			try {
				conn = DriverManager.getConnection(url, id, pw);
				System.out.println("db계정일치");
			}catch(Exception e) {
				System.out.println("db계정불일치");
				e.printStackTrace();
			}
		}catch(Exception e) {
			System.out.println("DB연결실패");
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
	public void close(Connection conn) {
		try {
			if(conn != null) conn.close();
		}catch(SQLException ignored) {}
		System.out.println("프로그램 종료");
	}
	public void close(ResultSet rs) {
		try {
			if(rs != null) rs.close();
		}catch(SQLException ignored) {}
		System.out.println("프로그램 종료");
	}
	public void close(Statement stmt) {
		try {
			if(stmt != null) stmt.close();
		}catch(SQLException ignored) {}
		System.out.println("프로그램 종료");
	}
	public void close(PreparedStatement pstmt) {
		try {
			if(pstmt != null) pstmt.close();
		}catch(SQLException ignored) {}
		System.out.println("프로그램 종료");
	}
}