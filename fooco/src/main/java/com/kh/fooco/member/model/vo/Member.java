package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4207381835304159463L;
	
	private int memberNo;
	private String memberName;
	private String memberPwd;
	private String email;
	private String nickName;
	private String gender;
	private String phone;
	private String address;
	private Date memberEnrolldate;
	private Date memberModifydate;
	private Date memberAccessdate;
	private String memberStatus;
	
	public Member() {
	}

	public Member(int memberNo, String memberName, String memberPwd, String email, String nickName, String gender,
			String phone, String address, Date memberEnrolldate, Date memberModifydate, Date memberAccessdate,
			String memberStatus) {
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberPwd = memberPwd;
		this.email = email;
		this.nickName = nickName;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.memberEnrolldate = memberEnrolldate;
		this.memberModifydate = memberModifydate;
		this.memberAccessdate = memberAccessdate;
		this.memberStatus = memberStatus;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getMemberEnrolldate() {
		return memberEnrolldate;
	}

	public void setMemberEnrolldate(Date memberEnrolldate) {
		this.memberEnrolldate = memberEnrolldate;
	}

	public Date getMemberModifydate() {
		return memberModifydate;
	}

	public void setMemberModifydate(Date memberModifydate) {
		this.memberModifydate = memberModifydate;
	}

	public Date getMemberAccessdate() {
		return memberAccessdate;
	}

	public void setMemberAccessdate(Date memberAccessdate) {
		this.memberAccessdate = memberAccessdate;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberName=" + memberName + ", memberPwd=" + memberPwd + ", email="
				+ email + ", nickName=" + nickName + ", gender=" + gender + ", phone=" + phone + ", address=" + address
				+ ", memberEnrolldate=" + memberEnrolldate + ", memberModifydate=" + memberModifydate
				+ ", memberAccessdate=" + memberAccessdate + ", memberStatus=" + memberStatus + "]";
	}
	
	
	
	

}
