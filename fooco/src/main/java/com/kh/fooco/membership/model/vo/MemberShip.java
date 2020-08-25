package com.kh.fooco.membership.model.vo;

import java.io.Serializable;

public class MemberShip implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2087969416791659711L;
	
	private int membershipId;				//멤버십 번호
	private String membershipName;			//멤버십 이름
	private String membershipContent;		//멤버십 내용
	private int membershipPrice;			//멤버십 가격
	private String membershipDuringDate;	//멤버십 기간
	
	public MemberShip() {
	}

	public MemberShip(int membershipId, String membershipName, String membershipContent, int membershipPrice,
			String membershipDuringDate) {
		super();
		this.membershipId = membershipId;
		this.membershipName = membershipName;
		this.membershipContent = membershipContent;
		this.membershipPrice = membershipPrice;
		this.membershipDuringDate = membershipDuringDate;
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

	@Override
	public String toString() {
		return "MemberShip [membershipId=" + membershipId + ", membershipName=" + membershipName
				+ ", membershipContent=" + membershipContent + ", membershipPrice=" + membershipPrice
				+ ", membershipDuringDate=" + membershipDuringDate + "]";
	}
	
	
	
	
	

}
