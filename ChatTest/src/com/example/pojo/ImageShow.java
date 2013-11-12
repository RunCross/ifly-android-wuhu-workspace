package com.example.pojo;

public class ImageShow {
	private int imageId;
	private String imageText;

	public ImageShow(int imageId, String imageText) {
		super();
		this.imageId = imageId;
		this.imageText = imageText;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getImageText() {
		return imageText;
	}

	public void setImageText(String imageText) {
		this.imageText = imageText;
	}


}
