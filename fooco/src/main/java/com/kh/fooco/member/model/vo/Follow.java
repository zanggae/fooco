package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Follow implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2149613929168044840L;
	private int followId;		// 팔로우 번호
	private int followerId;		// 팔로우 하는 사람
	private int followingId;	// 팔로우 당한 사람
	private Date followTime;	// 팔로우 시간
	
	public Follow() {
		super();
	}
	
	public Follow(int followId, int followerId, int followingId, Date followTime) {
		super();
		this.followId = followId;
		this.followerId = followerId;
		this.followingId = followingId;
		this.followTime = followTime;
	}
	
	public int getFollowId() {
		return followId;
	}
	public void setFollowId(int followId) {
		this.followId = followId;
	}
	public int getFollowerId() {
		return followerId;
	}
	public void setFollowerId(int followerId) {
		this.followerId = followerId;
	}
	public int getFollowingId() {
		return followingId;
	}
	public void setFollowingId(int followingId) {
		this.followingId = followingId;
	}
	public Date getFollowTime() {
		return followTime;
	}
	public void setFollowTime(Date followTime) {
		this.followTime = followTime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Follow [followId=" + followId + ", followerId=" + followerId + ", followingId=" + followingId
				+ ", followTime=" + followTime + "]";
	}
	
	
}
