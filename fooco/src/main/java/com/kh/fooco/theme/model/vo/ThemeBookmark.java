package com.kh.fooco.theme.model.vo;

import java.io.Serializable;

public class ThemeBookmark implements Serializable{
	/**
	 * 
	 */
	
	private static final long serialVersionUID = -2845664493064351002L;
	private int themeBookmarkId;
	private int memberNo;
	private int themeNo;
	private String bookmarkLike;
	
	public ThemeBookmark() {
		super();
	}
	public ThemeBookmark(int themeBookmarkId, int memberNo, int themeNo, String bookmarkLike) {
		super();
		this.themeBookmarkId = themeBookmarkId;
		this.memberNo = memberNo;
		this.themeNo = themeNo;
		this.bookmarkLike = bookmarkLike;
	}
	public int getThemeBookmarkId() {
		return themeBookmarkId;
	}
	public void setThemeBookmarkId(int themeBookmarkId) {
		this.themeBookmarkId = themeBookmarkId;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getThemeNo() {
		return themeNo;
	}
	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}
	public String getBookmarkLike() {
		return bookmarkLike;
	}
	public void setBookmarkLike(String bookmarkLike) {
		this.bookmarkLike = bookmarkLike;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ThemeBookmark [themeBookmarkId=" + themeBookmarkId + ", memberNo=" + memberNo + ", themeNo=" + themeNo
				+ ", bookmarkLike=" + bookmarkLike + "]";
	}
	
	
	

}
