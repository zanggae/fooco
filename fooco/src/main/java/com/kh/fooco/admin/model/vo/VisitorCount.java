package com.kh.fooco.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class VisitorCount implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6962671322656467586L;
	
	private int vcId;			// 방문자 컬럼 식별자
	private Date day;			// 날짜
	private int count;			// 해당 날짜의 방문자수
	private int totalCount;		// 누적 방문자수
	public VisitorCount() {
		super();
	}
	public VisitorCount(int vcId, Date day, int count, int totalCount) {
		super();
		this.vcId = vcId;
		this.day = day;
		this.count = count;
		this.totalCount = totalCount;
	}
	public int getVcId() {
		return vcId;
	}
	public void setVcId(int vcId) {
		this.vcId = vcId;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "VisitorCount [vcId=" + vcId + ", day=" + day + ", count=" + count + ", totalCount=" + totalCount + "]";
	}
	
	
}
