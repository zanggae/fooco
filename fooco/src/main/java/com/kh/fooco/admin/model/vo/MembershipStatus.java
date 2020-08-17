package com.kh.fooco.admin.model.vo;

import java.io.Serializable;

public class MembershipStatus implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2203981215671269664L;
	
	private int totalCount;
	private int yCount;
	private int nCount;
	public MembershipStatus() {
		super();
	}
	public MembershipStatus(int totalCount, int yCount, int nCount) {
		super();
		this.totalCount = totalCount;
		this.yCount = yCount;
		this.nCount = nCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getyCount() {
		return yCount;
	}
	public void setyCount(int yCount) {
		this.yCount = yCount;
	}
	public int getnCount() {
		return nCount;
	}
	public void setnCount(int nCount) {
		this.nCount = nCount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MembershipStatus [totalCount=" + totalCount + ", yCount=" + yCount + ", nCount=" + nCount + "]";
	}
	

}
