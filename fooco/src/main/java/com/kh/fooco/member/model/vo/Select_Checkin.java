package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Select_Checkin implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2523181381714692182L;
	private int checkinId;
	private int memberId;
	private int resId;
	private Date checkinCreateDate;
	private Date checkinUpdateDate;
	private Date checkinVisitDate;
	private String checkinContent;
	private String resName;
	private String resImage;
	private ArrayList<Select_CheckinImage> checkinImageList;
	
	public Select_Checkin() {
		super();
	}
	
	public Select_Checkin(int checkinId, int memberId, int resId, Date checkinCreateDate, Date checkinUpdateDate,
			Date checkinVisitDate, String checkinContent, String resName, String resImage,
			ArrayList<Select_CheckinImage> checkinImageList) {
		super();
		this.checkinId = checkinId;
		this.memberId = memberId;
		this.resId = resId;
		this.checkinCreateDate = checkinCreateDate;
		this.checkinUpdateDate = checkinUpdateDate;
		this.checkinVisitDate = checkinVisitDate;
		this.checkinContent = checkinContent;
		this.resName = resName;
		this.resImage = resImage;
		this.checkinImageList = checkinImageList;
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

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResImage() {
		return resImage;
	}

	public void setResImage(String resImage) {
		this.resImage = resImage;
	}

	public ArrayList<Select_CheckinImage> getCheckinImageList() {
		return checkinImageList;
	}

	public void setCheckinImageList(ArrayList<Select_CheckinImage> checkinImageList) {
		this.checkinImageList = checkinImageList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Select_Checkin [checkinId=" + checkinId + ", memberId=" + memberId + ", resId=" + resId
				+ ", checkinCreateDate=" + checkinCreateDate + ", checkinUpdateDate=" + checkinUpdateDate
				+ ", checkinVisitDate=" + checkinVisitDate + ", checkinContent=" + checkinContent + ", resName="
				+ resName + ", resImage=" + resImage + ", checkinImageList=" + checkinImageList + "]";
	}

	
	
	
	
}
