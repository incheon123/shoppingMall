package com.svc;

import com.beans.*;
import com.jdbc.*;
import com.dao.*;
import com.lib.*;
import java.sql.*;
import java.util.ArrayList;

public class InquiryService {
	private Connection conn;
	private Dao dao = Dao.getDao();
	private InquiryDAO idao = new InquiryDAO();
	
	public int insertInquiry(Inquiry inquiry) {
		inquiry.setIid(new InquiryId().generateInquiryId(new Today().getToday()));
		inquiry.setStatus("답변 대기중");
		inquiry.setDelete("false");
		
		conn = dao.getConnection();
		idao.setConnection(conn);
		
		int result = idao.insertInquiry(inquiry);
		
		dao.close(conn);
		return result;
	}
	
	public ArrayList<Inquiry> getInquirys(int startNo, int endNo){
		ArrayList<Inquiry> list = new ArrayList<Inquiry>();
		
		conn = dao.getConnection();
		idao.setConnection(conn);
		
		list = idao.selectInquirys(startNo, endNo);
		
		dao.close(conn);
		return list;
	}
	
	public int getSize() {
		conn = dao.getConnection();
		idao.setConnection(conn);
		
		int size = idao.getSize();
		
		dao.close(conn);
		return size;
	}
	
	public Inquiry getInquiry(String id) {
		conn = dao.getConnection();
		idao.setConnection(conn);
		
		Inquiry result = idao.getInquiry(id);
		
		dao.close(conn);
		
		return result;
	}
}
