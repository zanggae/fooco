package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Select_ReviewInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1015222591738137499L;
	// Review 필수 요소
	private int reviewId;
	private int resId;
	private int memberId;
	private Date reviewCreateDate;
	private Date reviewUpdateDate;
	private String reviewContent;
	private int reviewGoodcount;
	private int reviewRating;
	private int reviewTasterating;
	private int reviewPricerating;
	private int reviewServicerating;
	private String reviewStatus;
	private String resName;
	private String resAddress;
	private String locationName;
	
	public Select_ReviewInfo() {
		super();
	}
	
	public Select_ReviewInfo(int reviewId, int resId, int memberId, Date reviewCreateDate, Date reviewUpdateDate,
			String reviewContent, int reviewGoodcount, int reviewRating, int reviewTasterating, int reviewPricerating,
			int reviewServicerating, String reviewStatus, String resName, String resAddress, String locationName) {
		super();
		this.reviewId = reviewId;
		this.resId = resId;
		this.memberId = memberId;
		this.reviewCreateDate = reviewCreateDate;
		this.reviewUpdateDate = reviewUpdateDate;
		this.reviewContent = reviewContent;
		this.reviewGoodcount = reviewGoodcount;
		this.reviewRating = reviewRating;
		this.reviewTasterating = reviewTasterating;
		this.reviewPricerating = reviewPricerating;
		this.reviewServicerating = reviewServicerating;
		this.reviewStatus = reviewStatus;
		this.resName = resName;
		this.resAddress = resAddress;
		this.locationName = locationName;
	}
	
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public Date getReviewCreateDate() {
		return reviewCreateDate;
	}
	public void setReviewCreateDate(Date reviewCreateDate) {
		this.reviewCreateDate = reviewCreateDate;
	}
	public Date getReviewUpdateDate() {
		return reviewUpdateDate;
	}
	public void setReviewUpdateDate(Date reviewUpdateDate) {
		this.reviewUpdateDate = reviewUpdateDate;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewGoodcount() {
		return reviewGoodcount;
	}
	public void setReviewGoodcount(int reviewGoodcount) {
		this.reviewGoodcount = reviewGoodcount;
	}
	public int getReviewRating() {
		return reviewRating;
	}
	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}
	public int getReviewTasterating() {
		return reviewTasterating;
	}
	public void setReviewTasterating(int reviewTasterating) {
		this.reviewTasterating = reviewTasterating;
	}
	public int getReviewPricerating() {
		return reviewPricerating;
	}
	public void setReviewPricerating(int reviewPricerating) {
		this.reviewPricerating = reviewPricerating;
	}
	public int getReviewServicerating() {
		return reviewServicerating;
	}
	public void setReviewServicerating(int reviewServicerating) {
		this.reviewServicerating = reviewServicerating;
	}
	public String getReviewStatus() {
		return reviewStatus;
	}
	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getResAddress() {
		return resAddress;
	}
	public void setResAddress(String resAddress) {
		this.resAddress = resAddress;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Select_ReviewInfo [reviewId=" + reviewId + ", resId=" + resId + ", memberId=" + memberId
				+ ", reviewCreateDate=" + reviewCreateDate + ", reviewUpdateDate=" + reviewUpdateDate
				+ ", reviewContent=" + reviewContent + ", reviewGoodcount=" + reviewGoodcount + ", reviewRating="
				+ reviewRating + ", reviewTasterating=" + reviewTasterating + ", reviewPricerating=" + reviewPricerating
				+ ", reviewServicerating=" + reviewServicerating + ", reviewStatus=" + reviewStatus + ", resName="
				+ resName + ", resAddress=" + resAddress + ", locationName=" + locationName + "]";
	}

	
	
}
