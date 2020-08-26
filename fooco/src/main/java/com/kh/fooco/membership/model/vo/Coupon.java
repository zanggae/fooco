package com.kh.fooco.membership.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Coupon implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4095349448584751191L;
	
//쿠폰 속성
	private int couponId;			//쿠폰번호
	private String couponName;		//쿠폰이름
	private String couponContent;	//쿠폰내용
	private String couponExp;		//쿠폰기한
	
//쿠폰 내역 속성
	private int couponListId;  		//쿠폰 내역번호
	private int membershipListId;	//멤버십내역번호
	private Date couponStart;		//쿠폰시작날짜
	private Date couponEnd;			//쿠폰만료날짜
	private String couponStatus;	//쿠폰상태
	
	public Coupon() {
	}

	public Coupon(int couponId, String couponName, String couponContent, String couponExp, int couponListId,
			int membershipListId, Date couponStart, Date couponEnd, String couponStatus) {
		super();
		this.couponId = couponId;
		this.couponName = couponName;
		this.couponContent = couponContent;
		this.couponExp = couponExp;
		this.couponListId = couponListId;
		this.membershipListId = membershipListId;
		this.couponStart = couponStart;
		this.couponEnd = couponEnd;
		this.couponStatus = couponStatus;
	}

	public int getCouponId() {
		return couponId;
	}

	public void setCouponId(int couponId) {
		this.couponId = couponId;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public String getCouponContent() {
		return couponContent;
	}

	public void setCouponContent(String couponContent) {
		this.couponContent = couponContent;
	}

	public String getCouponExp() {
		return couponExp;
	}

	public void setCouponExp(String couponExp) {
		this.couponExp = couponExp;
	}

	public int getCouponListId() {
		return couponListId;
	}

	public void setCouponListId(int couponListId) {
		this.couponListId = couponListId;
	}

	public int getMembershipListId() {
		return membershipListId;
	}

	public void setMembershipListId(int membershipListId) {
		this.membershipListId = membershipListId;
	}

	public Date getCouponStart() {
		return couponStart;
	}

	public void setCouponStart(Date couponStart) {
		this.couponStart = couponStart;
	}

	public Date getCouponEnd() {
		return couponEnd;
	}

	public void setCouponEnd(Date couponEnd) {
		this.couponEnd = couponEnd;
	}

	public String getCouponStatus() {
		return couponStatus;
	}

	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}

	@Override
	public String toString() {
		return "Coupon [couponId=" + couponId + ", couponName=" + couponName + ", couponContent=" + couponContent
				+ ", couponExp=" + couponExp + ", couponListId=" + couponListId + ", membershipListId="
				+ membershipListId + ", couponStart=" + couponStart + ", couponEnd=" + couponEnd + ", couponStatus="
				+ couponStatus + "]";
	}
	
	
	
	

}
