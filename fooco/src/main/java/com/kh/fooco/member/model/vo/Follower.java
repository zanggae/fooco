package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class Follower implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8566987626507442967L;
	private int memberId;				// 팔로워 번호
	private String nickName;			// 닉네임
	private String renameName;			// 변경이름
	private int followerCount;			// 팔로워 수
	private int followingCount;			// 팔로잉 수
	
	public Follower() {
		super();
	}

	public Follower(int memberId, String nickName, String renameName, int followerCount, int followingCount) {
		super();
		this.memberId = memberId;
		this.nickName = nickName;
		this.renameName = renameName;
		this.followerCount = followerCount;
		this.followingCount = followingCount;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getRenameName() {
		return renameName;
	}

	public void setRenameName(String renameName) {
		this.renameName = renameName;
	}

	public int getFollowerCount() {
		return followerCount;
	}

	public void setFollowerCount(int followerCount) {
		this.followerCount = followerCount;
	}

	public int getFollowingCount() {
		return followingCount;
	}

	public void setFollowingCount(int followingCount) {
		this.followingCount = followingCount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Follower [memberId=" + memberId + ", nickName=" + nickName + ", renameName=" + renameName
				+ ", followerCount=" + followerCount + ", followingCount=" + followingCount + "]";
	}

	
	
	
	
}
