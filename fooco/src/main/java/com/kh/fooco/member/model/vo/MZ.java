package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class MZ implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7636932374522062010L;
	private int resBookMarkId;
	private int resId;
	private String resName;
	private String imageNewName;
	private String locationName;
	
	public MZ() {
		super();
	}
	
	public MZ(int resBookMarkId, int resId, String resName, String imageNewName, String locationName) {
		super();
		this.resBookMarkId = resBookMarkId;
		this.resId = resId;
		this.resName = resName;
		this.imageNewName = imageNewName;
		this.locationName = locationName;
	}
	
	public int getResBookMarkId() {
		return resBookMarkId;
	}
	public void setResBookMarkId(int resBookMarkId) {
		this.resBookMarkId = resBookMarkId;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getImageNewName() {
		return imageNewName;
	}
	public void setImageNewName(String imageNewName) {
		this.imageNewName = imageNewName;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MZ [resBookMarkId=" + resBookMarkId + ", resId=" + resId + ", resName=" + resName + ", imageNewName="
				+ imageNewName + ", locationName=" + locationName + "]";
	}
	
	
}
