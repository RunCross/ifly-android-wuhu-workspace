package com.runcross.stumangersimple.bean;

import java.io.Serializable;

public class UserInfo implements Serializable{

	private int uid;
	private String uname;
	private String pwd;
	private boolean chk;
	
	public boolean isChk() {
		return chk;
	}
	public void setChk(boolean chk) {
		this.chk = chk;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
}
