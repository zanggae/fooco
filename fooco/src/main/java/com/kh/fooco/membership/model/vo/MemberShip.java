package com.kh.fooco.membership.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class MemberShip implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2087969416791659711L;
	
//멤버십 테이블 속성	
	private int membershipId;				//멤버십 번호
	private String membershipName;			//멤버십 이름
	private String membershipContent;		//멤버십 내용
	private int membershipPrice;			//멤버십 가격
	private String membershipDuringDate;	//멤버십 기간

//멤버십 내역 속성
	private Date membershipEnrollDate;		//멤버십 등록날짜
	private Date membershipExpireDate;		//멤버십 만료 날짜
	private String membershipStatus; 		//멤버십 상태
	
//결제 후 insert시 객체 사용위한 추가한 속성(지민)
	private String membershipId1;			//골드멤버십 번호
	private String membershipId2;			//실버멤버십 번호
	private String buy_memberId;			//멤버십 구입한 회원 번호
	private String buy_coupon1;				//1번쿠폰
	private String buy_coupon2;				//2번쿠폰
	private String buy_coupon3;				//3번쿠폰
	private String couponIdT;				//쿠폰테스트
	
	public MemberShip() {
		super();
	}

	public MemberShip(int membershipId, String membershipName, String membershipContent, int membershipPrice,
			String membershipDuringDate, Date membershipEnrollDate, Date membershipExpireDate, String membershipStatus,
			String membershipId1, String membershipId2, String buy_memberId, String buy_coupon1, String buy_coupon2,
			String buy_coupon3, String couponIdT) {
		super();
		this.membershipId = membershipId;
		this.membershipName = membershipName;
		this.membershipContent = membershipContent;
		this.membershipPrice = membershipPrice;
		this.membershipDuringDate = membershipDuringDate;
		this.membershipEnrollDate = membershipEnrollDate;
		this.membershipExpireDate = membershipExpireDate;
		this.membershipStatus = membershipStatus;
		this.membershipId1 = membershipId1;
		this.membershipId2 = membershipId2;
		this.buy_memberId = buy_memberId;
		this.buy_coupon1 = buy_coupon1;
		this.buy_coupon2 = buy_coupon2;
		this.buy_coupon3 = buy_coupon3;
		this.couponIdT = couponIdT;
	}

	public int getMembershipId() {
		return membershipId;
	}

	public void setMembershipId(int membershipId) {
		this.membershipId = membershipId;
	}

	public String getMembershipName() {
		return membershipName;
	}

	public void setMembershipName(String membershipName) {
		this.membershipName = membershipName;
	}

	public String getMembershipContent() {
		return membershipContent;
	}

	public void setMembershipContent(String membershipContent) {
		this.membershipContent = membershipContent;
	}

	public int getMembershipPrice() {
		return membershipPrice;
	}

	public void setMembershipPrice(int membershipPrice) {
		this.membershipPrice = membershipPrice;
	}

	public String getMembershipDuringDate() {
		return membershipDuringDate;
	}

	public void setMembershipDuringDate(String membershipDuringDate) {
		this.membershipDuringDate = membershipDuringDate;
	}

	public Date getMembershipEnrollDate() {
		return membershipEnrollDate;
	}

	public void setMembershipEnrollDate(Date membershipEnrollDate) {
		this.membershipEnrollDate = membershipEnrollDate;
	}

	public Date getMembershipExpireDate() {
		return membershipExpireDate;
	}

	public void setMembershipExpireDate(Date membershipExpireDate) {
		this.membershipExpireDate = membershipExpireDate;
	}

	public String getMembershipStatus() {
		return membershipStatus;
	}

	public void setMembershipStatus(String membershipStatus) {
		this.membershipStatus = membershipStatus;
	}

	public String getMembershipId1() {
		return membershipId1;
	}

	public void setMembershipId1(String membershipId1) {
		this.membershipId1 = membershipId1;
	}

	public String getMembershipId2() {
		return membershipId2;
	}

	public void setMembershipId2(String membershipId2) {
		this.membershipId2 = membershipId2;
	}

	public String getBuy_memberId() {
		return buy_memberId;
	}

	public void setBuy_memberId(String buy_memberId) {
		this.buy_memberId = buy_memberId;
	}

	public String getBuy_coupon1() {
		return buy_coupon1;
	}

	public void setBuy_coupon1(String buy_coupon1) {
		this.buy_coupon1 = buy_coupon1;
	}

	public String getBuy_coupon2() {
		return buy_coupon2;
	}

	public void setBuy_coupon2(String buy_coupon2) {
		this.buy_coupon2 = buy_coupon2;
	}

	public String getBuy_coupon3() {
		return buy_coupon3;
	}

	public void setBuy_coupon3(String buy_coupon3) {
		this.buy_coupon3 = buy_coupon3;
	}

	public String getCouponIdT() {
		return couponIdT;
	}

	public void setCouponIdT(String couponIdT) {
		this.couponIdT = couponIdT;
	}

	@Override
	public String toString() {
		return "MemberShip [membershipId=" + membershipId + ", membershipName=" + membershipName
				+ ", membershipContent=" + membershipContent + ", membershipPrice=" + membershipPrice
				+ ", membershipDuringDate=" + membershipDuringDate + ", membershipEnrollDate=" + membershipEnrollDate
				+ ", membershipExpireDate=" + membershipExpireDate + ", membershipStatus=" + membershipStatus
				+ ", membershipId1=" + membershipId1 + ", membershipId2=" + membershipId2 + ", buy_memberId="
				+ buy_memberId + ", buy_coupon1=" + buy_coupon1 + ", buy_coupon2=" + buy_coupon2 + ", buy_coupon3="
				+ buy_coupon3 + ", couponIdT=" + couponIdT + "]";
	}

	
	
}
