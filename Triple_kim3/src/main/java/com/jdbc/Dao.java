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

/*
 * 데이터베이스에 접속하려면 먼저 ojdbc lib 파일이 있어야됩니다.
 * 19c는 ojdbc10.jar 다운로드
 */
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
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 김택현의 리눅스 노트북 sid : xe
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			// 정록, 태규의 side : orcl (다르다면 최초 설치시 설정한 sid 입력하세요)
			//사용하실 때는 위에 김택현 주소를 주석처리하고 아래 주소를 주석해제해서 쓰세요
//			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			
			/*
			 * 자신의 데이터베이스에 만들어져 있는 계정을 사용하세요
			 * 아이디와 비밀번호는 통일합시다
			 * 아니면 위에처럼 자기 계정만들고 주석처리
			 */
			String id  = "kth";
			String pw = "123";
			
			System.out.println("db접속성공");
			try {
				conn = DriverManager.getConnection(url, id, pw);
				System.out.println("db계정일치");
			}catch(Exception e) {
				System.out.println("db계정불일치");
				e.printStackTrace();
			}
		}catch(Exception e) {
			System.out.println("DB접속실패");
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
	public void close(Connection conn) {
		try {
			if(conn != null) conn.close();
		}catch(SQLException ignored) {}
		System.out.println("conn종료");
	}
	public void close(ResultSet rs) {
		try {
			if(rs != null) rs.close();
		}catch(SQLException ignored) {}
		System.out.println("rs 종료");
	}
	public void close(Statement stmt) {
		try {
			if(stmt != null) stmt.close();
		}catch(SQLException ignored) {}
		System.out.println("stmt 종료");
	}
	public void close(PreparedStatement pstmt) {
		try {
			if(pstmt != null) pstmt.close();
		}catch(SQLException ignored) {}
		System.out.println("pstmt 종료");
	}
}