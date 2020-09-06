package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ResImage implements Serializable {

	private static final long serialVersionUID = -1500713875693913712L;
	
	private int resId;
	private int imageId;
	private String imageOriginName;
	private String imageNewName;
	private String imageFilepath;
	private Date imageCreateDate;
	private int imageLevel;
	private String imageStatus;
	private int imageDownloadCount;
	
	public ResImage() {}
	public ResImage(int resId, int imageId, String imageOriginName, String imageNewName, String imageFilepath,
			Date imageCreateDate, int imageLevel, String imageStatus, int imageDownloadCount) {
		super();
		this.resId = resId;
		this.imageId = imageId;
		this.imageOriginName = imageOriginName;
		this.imageNewName = imageNewName;
		this.imageFilepath = imageFilepath;
		this.imageCreateDate = imageCreateDate;
		this.imageLevel = imageLevel;
		this.imageStatus = imageStatus;
		this.imageDownloadCount = imageDownloadCount;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public String getImageOriginName() {
		return imageOriginName;
	}
	public void setImageOriginName(String imageOriginName) {
		this.imageOriginName = imageOriginName;
	}
	public String getImageNewName() {
		return imageNewName;
	}
	public void setImageNewName(String imageNewName) {
		this.imageNewName = imageNewName;
	}
	public String getImageFilepath() {
		return imageFilepath;
	}
	public void setImageFilepath(String imageFilepath) {
		this.imageFilepath = imageFilepath;
	}
	public Date getImageCreateDate() {
		return imageCreateDate;
	}
	public void setImageCreateDate(Date imageCreateDate) {
		this.imageCreateDate = imageCreateDate;
	}
	public int getImageLevel() {
		return imageLevel;
	}
	public void setImageLevel(int imageLevel) {
		this.imageLevel = imageLevel;
	}
	public String getImageStatus() {
		return imageStatus;
	}
	public void setImageStatus(String imageStatus) {
		this.imageStatus = imageStatus;
	}
	public int getImageDownloadCount() {
		return imageDownloadCount;
	}
	public void setImageDownloadCount(int imageDownloadCount) {
		this.imageDownloadCount = imageDownloadCount;
	}
	@Override
	public String toString() {
		return "ResImage [resId=" + resId + ", imageId=" + imageId + ", imageOriginName=" + imageOriginName
				+ ", imageNewName=" + imageNewName + ", imageFilepath=" + imageFilepath + ", imageCreateDate="
				+ imageCreateDate + ", imageLevel=" + imageLevel + ", imageStatus=" + imageStatus
				+ ", imageDownloadCount=" + imageDownloadCount + "]";
	}
	
}
