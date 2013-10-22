package com.runcross.phoncall.po;

public class PersonInfo {

	private int id;
	private String name;
	private String phoneNum;
	private String addres;
	
	public PersonInfo(String name,String phoneNum){
		this.name = name;
		this.phoneNum = phoneNum;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonNum() {
		return phoneNum;
	}
	public void setPhonNum(String phonNum) {
		this.phoneNum = phonNum;
	}
	public String getAddres() {
		return addres;
	}
	public void setAddres(String addres) {
		this.addres = addres;
	}
	
	
}
