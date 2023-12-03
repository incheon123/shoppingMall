package com.lib;

public class InquiryId {
	public String generateInquiryId(String date) {
		return "i" + date + ((int)(Math.random() * 89999999) + 10000000);
	}
}
