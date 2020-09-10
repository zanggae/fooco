package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;

public class Bookmark implements Serializable {

	private static final long serialVersionUID = 3836362380351263669L;
	
	private int resBookmarkId;
	private int memberId;
	private int resId;
	
	public Bookmark() {}
	public Bookmark(int resBookmarkId, int memberId, int resId) {
		super();
		this.resBookmarkId = resBookmarkId;
		this.memberId = memberId;
		this.resId = resId;
	}
	public int getResBookmarkId() {
		return resBookmarkId;
	}
	public void setResBookmarkId(int resBookmarkId) {
		this.resBookmarkId = resBookmarkId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	@Override
	public String toString() {
		return "Bookmark [resBookmarkId=" + resBookmarkId + ", memberId=" + memberId + ", resId=" + resId + "]";
	}
	
}
