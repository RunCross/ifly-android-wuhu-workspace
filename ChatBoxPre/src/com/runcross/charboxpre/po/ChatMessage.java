package com.runcross.charboxpre.po;

import java.util.Calendar;

public class ChatMessage {

	private Calendar cal;
	private String name;
	private String cont;
	private int image;
	private boolean send;
	
	public ChatMessage(boolean send,String cont,Calendar cal){
		this.send = send;
		this.cont = cont;
		this.cal  = cal;
	}
	
	public boolean isSend() {
		return send;
	}
	public void setSend(boolean send) {
		this.send = send;
	}
	public Calendar getCal() {
		return cal;
	}
	public void setCal(Calendar cal) {
		this.cal = cal;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public int getImage() {
		return image;
	}
	public void setImage(int image) {
		this.image = image;
	}
	
	
}
