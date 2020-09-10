package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class CheckinImage implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1965609973411571977L;
	private int imageId;	// 이미지 번호	
	private int checkinId;	// 체크인 번호
	
	public CheckinImage() {
		super();
	}
	
	
	public CheckinImage(int imageId, int checkinId) {
		super();
		this.imageId = imageId;
		this.checkinId = checkinId;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "CheckinImage [checkinId=" + checkinId + ", imageId=" + imageId + "]";
	}
	
	
	
	
}
