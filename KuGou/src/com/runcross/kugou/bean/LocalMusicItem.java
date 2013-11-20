package com.runcross.kugou.bean;

import java.io.Serializable;

public class LocalMusicItem implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String  name;
	private String  path;
	private int num;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
	
}
