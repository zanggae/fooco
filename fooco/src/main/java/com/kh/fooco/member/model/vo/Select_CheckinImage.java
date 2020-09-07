package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class Select_CheckinImage implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8853141632974015077L;
	private int checkinId;
	private int imageId;
	private String imageNewName;
	
	
	public Select_CheckinImage() {
		super();
	}

	public Select_CheckinImage(int checkinId, int imageId, String imageNewName) {
		super();
		this.checkinId = checkinId;
		this.imageId = imageId;
		this.imageNewName = imageNewName;
	}

	public int getCheckinId() {
		return checkinId;
	}

	public void setCheckinId(int checkinId) {
		this.checkinId = checkinId;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getImageNewName() {
		return imageNewName;
	}

	public void setImageNewName(String imageNewName) {
		this.imageNewName = imageNewName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Select_CheckinImage [checkinId=" + checkinId + ", imageId=" + imageId + ", imageNewName=" + imageNewName
				+ "]";
	}

	
	
}
