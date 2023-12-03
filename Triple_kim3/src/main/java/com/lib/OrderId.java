package com.lib;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import com.lib.*;

@SuppressWarnings("deprecation")
public class OrderId {
	public String generateOrderId() {
		
		String date = new Today().getToday();
		
		return "o" + date + ((int)(Math.random() * 89999999) + 10000000);
	}
}
