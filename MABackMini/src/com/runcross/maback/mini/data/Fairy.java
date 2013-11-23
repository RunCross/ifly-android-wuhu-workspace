package com.runcross.maback.mini.data;

/**
 * 妖精基本信息
 * 
 * @author RunCross
 * 
 */
public class Fairy {

	// 妖精id
	private String serial_id;
	// 发现者id
	private String uid;

	public Fairy() {

	}

	public Fairy(String serial_id, String uid) {
		super();
		this.serial_id = serial_id;
		this.uid = uid;
	}

	public String getSerial_id() {
		return serial_id;
	}

	public void setSerial_id(String serial_id) {
		this.serial_id = serial_id;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

}
