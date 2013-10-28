package com.runcross.vpfragmenutab.po;

public class Parent extends Person {

	public String getTools() {
		return tools;
	}
	public void setTools(String tools) {
		this.tools = tools;
	}
	private String tools;
	public Parent(String name, String sex) {
		super(name, sex);
	}

}
