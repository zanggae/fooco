package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class TM implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6645375380808971107L;
	private int themeId;
	private String themeTitle;
	private String resImageName;
	private int themeBookMarkId;
	
	public TM() {
		super();
	}
	
	public TM(int themeId, String themeTitle, String resImageName, int themeBookMarkId) {
		super();
		this.themeId = themeId;
		this.themeTitle = themeTitle;
		this.resImageName = resImageName;
		this.themeBookMarkId = themeBookMarkId;
	}
	
	public int getThemeId() {
		return themeId;
	}
	public void setThemeId(int themeId) {
		this.themeId = themeId;
	}
	public String getThemeTitle() {
		return themeTitle;
	}
	public void setThemeTitle(String themeTitle) {
		this.themeTitle = themeTitle;
	}
	public String getResImageName() {
		return resImageName;
	}
	public void setResImageName(String resImageName) {
		this.resImageName = resImageName;
	}
	public int getThemeBookMarkId() {
		return themeBookMarkId;
	}
	public void setThemeBookMarkId(int themeBookMarkId) {
		this.themeBookMarkId = themeBookMarkId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "TM [themeId=" + themeId + ", themeTitle=" + themeTitle + ", resImageName=" + resImageName
				+ ", themeBookMarkId=" + themeBookMarkId + "]";
	}
	
	
}
