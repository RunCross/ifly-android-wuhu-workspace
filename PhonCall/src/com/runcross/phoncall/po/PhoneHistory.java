package com.runcross.phoncall.po;

import java.util.Date;

public class PhoneHistory {

	private PersonInfo per;
	private Date date;
	private int count;
	
	public PhoneHistory(PersonInfo per,Date date){
		this.per = per;
		this.date = date;
		this.count++;
	}
	
	public PersonInfo getPer() {
		return per;
	}
	public void setPer(PersonInfo per) {
		this.per = per;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
}
