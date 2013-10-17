package com.runcross.iqiyi.po;

public class MovieInfo {

	public static final int COUNT =  5;
	
	private String name;
	private int size;
	private int level;
	private long id;	
	private String type;
	
	public MovieInfo(String name, int size, int level, long id) {
		this.name = name;
		this.level = level;
		this.id = id;
		this.size = size;

	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

}
