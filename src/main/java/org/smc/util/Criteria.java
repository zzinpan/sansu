package org.smc.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Criteria {

	private String date =  (new SimpleDateFormat("yyyy-MM-dd")).format(new Date());

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Criteria [date=" + date + "]";
	}
	
	
	
}
