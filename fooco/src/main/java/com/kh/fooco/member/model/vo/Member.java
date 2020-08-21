package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4207381835304159463L;
	
	private int memberId;				// 회원번호
	private String memberName;			// 이름
	private String memberPwd;			// 비밀번호
	private String email;				// 이메일
	private String nickName;			// 별명
	private String gender;				// 성별
	private String phone;				// 전화번호
	private String address;				// 주소
	private Date memberEnrolldate;		// 등록날짜
	private Date memberModifydate;		// 수정날짜
	private Date memberAccessdate;		// 최근접속일
	private String memberStatus;		// 상태
	private String memberJoinType;		// 회원가입유형
	private String reviewStatus;		// 리뷰권한여부
	
//	+ 맴버십 속성
	private String membershipName;		// 맴버십등급이름
	
//	+ 프로필 파일 속성(한번 더 체크해야함)	
	private int profileId;				// 파일번호
	private String originalName;		// 원본이름
	private String renameName;			// 변경이름
	private Date uploadDate;			// 업로드일
	private String file_path;			// 파일경로
	
	
	public Member() {
	}


	public Member(int memberId, String memberName, String memberPwd, String email, String nickName, String gender,
			String phone, String address, Date memberEnrolldate, Date memberModifydate, Date memberAccessdate,
			String memberStatus, String memberJoinType, String reviewStatus, String membershipName, int profileId,
			String originalName, String renameName, Date uploadDate, String file_path) {
		super();
		this.memberId = memberId;
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
		this.memberJoinType = memberJoinType;
		this.reviewStatus = reviewStatus;
		this.membershipName = membershipName;
		this.profileId = profileId;
		this.originalName = originalName;
		this.renameName = renameName;
		this.uploadDate = uploadDate;
		this.file_path = file_path;
	}


	public int getMemberId() {
		return memberId;
	}


	public void setMemberId(int memberId) {
		this.memberId = memberId;
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


	public String getMemberJoinType() {
		return memberJoinType;
	}


	public void setMemberJoinType(String memberJoinType) {
		this.memberJoinType = memberJoinType;
	}


	public String getReviewStatus() {
		return reviewStatus;
	}


	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}


	public String getMembershipName() {
		return membershipName;
	}


	public void setMembershipName(String membershipName) {
		this.membershipName = membershipName;
	}


	public int getProfileId() {
		return profileId;
	}


	public void setProfileId(int profileId) {
		this.profileId = profileId;
	}


	public String getOriginalName() {
		return originalName;
	}


	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}


	public String getRenameName() {
		return renameName;
	}


	public void setRenameName(String renameName) {
		this.renameName = renameName;
	}


	public Date getUploadDate() {
		return uploadDate;
	}


	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}


	public String getFile_path() {
		return file_path;
	}


	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberName=" + memberName + ", memberPwd=" + memberPwd + ", email="
				+ email + ", nickName=" + nickName + ", gender=" + gender + ", phone=" + phone + ", address=" + address
				+ ", memberEnrolldate=" + memberEnrolldate + ", memberModifydate=" + memberModifydate
				+ ", memberAccessdate=" + memberAccessdate + ", memberStatus=" + memberStatus + ", memberJoinType="
				+ memberJoinType + ", reviewStatus=" + reviewStatus + ", membershipName=" + membershipName
				+ ", profileId=" + profileId + ", originalName=" + originalName + ", renameName=" + renameName
				+ ", uploadDate=" + uploadDate + ", file_path=" + file_path + "]";
	}


	

	
	
	
	
	
	

}
