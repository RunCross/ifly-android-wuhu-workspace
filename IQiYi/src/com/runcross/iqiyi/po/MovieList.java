package com.runcross.iqiyi.po;

import java.util.List;

import android.text.method.MovementMethod;

public class MovieList {

	private String type;
	private List<MovieInfo> movieList;
	private boolean down;

	public MovieList(String type, List<MovieInfo> movieList) {
		this.type = type;
		this.movieList = movieList;
		down = false;
	}

	public boolean isDown() {
		return down;
	}

	public void setDown(boolean down) {
		this.down = down;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<MovieInfo> getMovieList() {
		return movieList;
	}

	public void setMovieList(List<MovieInfo> movieList) {
		this.movieList = movieList;
	}

}
