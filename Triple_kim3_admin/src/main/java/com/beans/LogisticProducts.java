package com.beans;

import java.util.ArrayList;


public class LogisticProducts {
	private ArrayList<LogisticProduct> logisticProducts = new ArrayList<>();
	
	public void addLogisticProduct(LogisticProduct lp) {
		logisticProducts.add(lp);
	}
	
	public LogisticProduct getProduct(int i) {
		return logisticProducts.get(i);
	}
}
