package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Checkin implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 995984972320437274L;
	private int checkinId;				// 체크인 번호
	private int memberId;				// 회원 번호
	private int resId;					// 맛집 번호
	private Date checkinCreateDate;		// 체크인 등록 날짜
	private Date checkinUpdateDate;		// 체크인 수정 날짜
	private Date checkinVisitDate;		// 체크인 방문 날짜
	private String checkinContent;		// 체크인 내용
	
	public Checkin() {
		super();
	}

	public Checkin(int checkinId, int memberId, int resId, Date checkinCreateDate, Date checkinUpdateDate,
			Date checkinVisitDate, String checkinContent) {
		super();
		this.checkinId = checkinId;
		this.memberId = memberId;
		this.resId = resId;
		this.checkinCreateDate = checkinCreateDate;
		this.checkinUpdateDate = checkinUpdateDate;
		this.checkinVisitDate = checkinVisitDate;
		this.checkinContent = checkinContent;
	}

	public int getCheckinId() {
		return checkinId;
	}

	public void setCheckinId(int checkinId) {
		this.checkinId = checkinId;
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

	public Date getCheckinCreateDate() {
		return checkinCreateDate;
	}

	public void setCheckinCreateDate(Date checkinCreateDate) {
		this.checkinCreateDate = checkinCreateDate;
	}

	public Date getCheckinUpdateDate() {
		return checkinUpdateDate;
	}

	public void setCheckinUpdateDate(Date checkinUpdateDate) {
		this.checkinUpdateDate = checkinUpdateDate;
	}

	public Date getCheckinVisitDate() {
		return checkinVisitDate;
	}

	public void setCheckinVisitDate(Date checkinVisitDate) {
		this.checkinVisitDate = checkinVisitDate;
	}

	public String getCheckinContent() {
		return checkinContent;
	}

	public void setCheckinContent(String checkinContent) {
		this.checkinContent = checkinContent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Checkin [checkinId=" + checkinId + ", memberId=" + memberId + ", resId=" + resId
				+ ", checkinCreateDate=" + checkinCreateDate + ", checkinUpdateDate=" + checkinUpdateDate
				+ ", checkinVisitDate=" + checkinVisitDate + ", checkinContent=" + checkinContent + "]";
	}
	
	
	
	
}
