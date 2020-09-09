package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.util.Date;

public class MylistAdmin implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4224287903380982678L;
	
	private String Rn;
	private String mlId;
	private String mlTitle;
	private Date mlUploadDate;
	private Date mlModifyDate;
	private String recommendationTheme;
	private String approveTheme;
	private int memberId;
	private String nickname;
	private String resImageName;
	
	public MylistAdmin() {
		super();
	}

	public MylistAdmin(String rn, String mlId, String mlTitle, Date mlUploadDate, Date mlModifyDate,
			String recommendationTheme, String approveTheme, int memberId, String nickname, String resImageName) {
		super();
		Rn = rn;
		this.mlId = mlId;
		this.mlTitle = mlTitle;
		this.mlUploadDate = mlUploadDate;
		this.mlModifyDate = mlModifyDate;
		this.recommendationTheme = recommendationTheme;
		this.approveTheme = approveTheme;
		this.memberId = memberId;
		this.nickname = nickname;
		this.resImageName = resImageName;
	}

	public String getRn() {
		return Rn;
	}

	public void setRn(String rn) {
		Rn = rn;
	}

	public String getMlId() {
		return mlId;
	}

	public void setMlId(String mlId) {
		this.mlId = mlId;
	}

	public String getMlTitle() {
		return mlTitle;
	}

	public void setMlTitle(String mlTitle) {
		this.mlTitle = mlTitle;
	}

	public Date getMlUploadDate() {
		return mlUploadDate;
	}

	public void setMlUploadDate(Date mlUploadDate) {
		this.mlUploadDate = mlUploadDate;
	}

	public Date getMlModifyDate() {
		return mlModifyDate;
	}

	public void setMlModifyDate(Date mlModifyDate) {
		this.mlModifyDate = mlModifyDate;
	}

	public String getRecommendationTheme() {
		return recommendationTheme;
	}

	public void setRecommendationTheme(String recommendationTheme) {
		this.recommendationTheme = recommendationTheme;
	}

	public String getApproveTheme() {
		return approveTheme;
	}

	public void setApproveTheme(String approveTheme) {
		this.approveTheme = approveTheme;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getResImageName() {
		return resImageName;
	}

	public void setResImageName(String resImageName) {
		this.resImageName = resImageName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MylistAdmin [Rn=" + Rn + ", mlId=" + mlId + ", mlTitle=" + mlTitle + ", mlUploadDate=" + mlUploadDate
				+ ", mlModifyDate=" + mlModifyDate + ", recommendationTheme=" + recommendationTheme + ", approveTheme="
				+ approveTheme + ", memberId=" + memberId + ", nickname=" + nickname + ", resImageName=" + resImageName
				+ "]";
	}
	
	

}
