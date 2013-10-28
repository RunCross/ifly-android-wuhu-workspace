package com.runcross.bilibili.po;

public class UserInfo {

	private String name;
	private float coins;
	private float points;
	public UserInfo(String name, float coins, float points) {
		super();
		this.name = name;
		this.coins = coins;
		this.points = points;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getCoins() {
		return coins;
	}
	public void setCoins(float coins) {
		this.coins = coins;
	}
	public float getPoints() {
		return points;
	}
	public void setPoints(float points) {
		this.points = points;
	}
	
}
