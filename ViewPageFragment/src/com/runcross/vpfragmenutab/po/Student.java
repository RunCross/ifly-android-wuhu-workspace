package com.runcross.vpfragmenutab.po;

public class Student extends Person {

	private String studentNO;
	public Student(String name, String sex) {
		super(name, sex);
	}
	public String getStudentNO() {
		return studentNO;
	}
	public void setStudentNO(String studentNO) {
		this.studentNO = studentNO;
	}

	
}
