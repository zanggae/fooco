package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Select_Coupon implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8835177511579162900L;
	private int couponListId;
	private Date couponStartDate;
	private Date couponExpireDate;
	private String cStatus;
	private String couponContent;
	
	public Select_Coupon() {
		super();
	}
	
	public Select_Coupon(int couponListId, Date couponStartDate, Date couponExpireDate, String cStatus,
			String couponContent) {
		super();
		this.couponListId = couponListId;
		this.couponStartDate = couponStartDate;
		this.couponExpireDate = couponExpireDate;
		this.cStatus = cStatus;
		this.couponContent = couponContent;
	}
	
	public int getCouponListId() {
		return couponListId;
	}
	public void setCouponListId(int couponListId) {
		this.couponListId = couponListId;
	}
	public Date getCouponStartDate() {
		return couponStartDate;
	}
	public void setCouponStartDate(Date couponStartDate) {
		this.couponStartDate = couponStartDate;
	}
	public Date getCouponExpireDate() {
		return couponExpireDate;
	}
	public void setCouponExpireDate(Date couponExpireDate) {
		this.couponExpireDate = couponExpireDate;
	}
	public String getcStatus() {
		return cStatus;
	}
	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}
	public String getCouponContent() {
		return couponContent;
	}
	public void setCouponContent(String couponContent) {
		this.couponContent = couponContent;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Select_Coupon [couponListId=" + couponListId + ", couponStartDate=" + couponStartDate
				+ ", couponExpireDate=" + couponExpireDate + ", cStatus=" + cStatus + ", couponContent=" + couponContent
				+ "]";
	}
	
	
}
