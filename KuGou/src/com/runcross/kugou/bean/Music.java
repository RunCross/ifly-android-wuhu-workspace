package com.runcross.kugou.bean;

import java.io.Serializable;

public class Music implements Serializable{

	private int id;
	private String name;
	private int duration;
	private String artist;
	private String data;
	private String album;
	public Music() {
		super();
	}
	public Music(int id, String name, int duration, String artist, String data,
			String album) {
		super();
		this.id = id;
		this.name = name;
		this.duration = duration;
		this.artist = artist;
		this.data = data;
		this.album = album;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	
	
}
