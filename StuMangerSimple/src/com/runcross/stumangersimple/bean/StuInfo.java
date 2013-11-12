package com.runcross.stumangersimple.bean;

import java.io.Serializable;
import java.sql.Date;

public class StuInfo implements Serializable {

	private boolean chk;
	private int uid;
	private String uname;
//	private String pwd;
	private String sex;
	private String mz;
	private String birthday;
	private String stuNum;
	private String tel;
	private String cont;
	private String photo;
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
//	public String getPwd() {
//		return pwd;
//	}
//	public void setPwd(String pwd) {
//		this.pwd = pwd;
//	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMz() {
		return mz;
	}
	public void setMz(String mz) {
		this.mz = mz;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String string) {
		this.birthday = string;
	}
	public String getStuNum() {
		return stuNum;
	}
	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public boolean isChk() {
		return chk;
	}
	public void setChk(boolean chk) {
		this.chk = chk;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
	
	
}
