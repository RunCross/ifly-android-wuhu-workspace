package com.runcross.vpfragmenutab.po;

public class Teacher extends Person {

	private String teacherno;
	public String getTeacherno() {
		return teacherno;
	}
	public void setTeacherno(String teacherno) {
		this.teacherno = teacherno;
	}
	public Teacher(String name, String sex) {
		super(name, sex);
	}

}
