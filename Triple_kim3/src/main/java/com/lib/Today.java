package com.lib;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Today {
	public String getToday(){
		DateFormat df = new SimpleDateFormat("yy"); // Just the year, with 2 digits
		String formattedDate = df.format(Calendar.getInstance().getTime());
		
		int y = Integer.parseInt(formattedDate); 
		int d = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
		int m = Calendar.getInstance().get(Calendar.MONTH) + 1;
		
		int date = y + d + m;
		
		return date + "";
	}
}
