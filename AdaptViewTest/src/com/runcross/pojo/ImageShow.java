package com.runcross.pojo;

public class ImageShow {

	private int imageId;
	private String Text;
	
	public ImageShow (int imageId, String Text){
		this.imageId = imageId;
		this.Text = Text;
	}
	
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public String getText() {
		return Text;
	}
	public void setText(String text) {
		Text = text;
	}
	
}
