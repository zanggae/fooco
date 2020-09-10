package com.kh.fooco.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Static implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1892230543862746837L;
	private int staticId;		// 스테틱 아이디
	private Date staticDate;	// 날짜
	private int staticCount;	// 당일 방문자수
	private int staticTCount;	// 토탈 방문자수
	private int goldCount;		// 골드맴버가입자수
	private int silverCount;	// 실버맴버가입자수
	public Static() {
		super();
	}
	public Static(int staticId, Date staticDate, int staticCount, int staticTCount, int goldCount, int silverCount) {
		super();
		this.staticId = staticId;
		this.staticDate = staticDate;
		this.staticCount = staticCount;
		this.staticTCount = staticTCount;
		this.goldCount = goldCount;
		this.silverCount = silverCount;
	}
	public int getStaticId() {
		return staticId;
	}
	public void setStaticId(int staticId) {
		this.staticId = staticId;
	}
	public Date getStaticDate() {
		return staticDate;
	}
	public void setStaticDate(Date staticDate) {
		this.staticDate = staticDate;
	}
	public int getStaticCount() {
		return staticCount;
	}
	public void setStaticCount(int staticCount) {
		this.staticCount = staticCount;
	}
	public int getStaticTCount() {
		return staticTCount;
	}
	public void setStaticTCount(int staticTCount) {
		this.staticTCount = staticTCount;
	}
	public int getGoldCount() {
		return goldCount;
	}
	public void setGoldCount(int goldCount) {
		this.goldCount = goldCount;
	}
	public int getSilverCount() {
		return silverCount;
	}
	public void setSilverCount(int silverCount) {
		this.silverCount = silverCount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Static [staticId=" + staticId + ", staticDate=" + staticDate + ", staticCount=" + staticCount
				+ ", staticTCount=" + staticTCount + ", goldCount=" + goldCount + ", silverCount=" + silverCount + "]";
	}
	
	
	
}
