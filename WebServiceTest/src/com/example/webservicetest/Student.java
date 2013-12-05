package com.example.webservicetest;

public class Student {

	private int id;
	private String name;
	private String num;
	private String gender;

	
	
	public Student() {
		super();
	}
	public Student(int id, String name, String num, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.num = num;
		this.gender = gender;
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
