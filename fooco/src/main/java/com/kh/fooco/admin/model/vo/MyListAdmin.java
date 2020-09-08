package com.kh.fooco.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class MyListAdmin implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5699369588652904823L;
	private int mlId;						// 마이리스트 아이디
	private String mlTitle;					// 마이리스트 제목
	private Date mlUploadDate;				// 마이리스트 생성날짜
	private Date mlModifyDate;				// 마이리스트 수정날짜
	private String recommendationTheme;		// 테마로 추천했는지 여부
	private String approveTheme;			// 추천된 테마에 대해 관리자의 승인 여부(Y: 승인, N: 거절, W:승인대기)
	private int mlWriter;					// 마이리스트 작성자
	private String mlWNickname;				// 마이리스트 작성자 닉네임
	private String mlImageName;				// 마이리스트 썸네일 이미지네임
	public MyListAdmin() {
		super();
	}
	public MyListAdmin(int mlId, String mlTitle, Date mlUploadDate, Date mlModifyDate, String recommendationTheme,
			String approveTheme, int mlWriter, String mlWNickname, String mlImageName) {
		super();
		this.mlId = mlId;
		this.mlTitle = mlTitle;
		this.mlUploadDate = mlUploadDate;
		this.mlModifyDate = mlModifyDate;
		this.recommendationTheme = recommendationTheme;
		this.approveTheme = approveTheme;
		this.mlWriter = mlWriter;
		this.mlWNickname = mlWNickname;
		this.mlImageName = mlImageName;
	}
	public int getMlId() {
		return mlId;
	}
	public void setMlId(int mlId) {
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
	public int getMlWriter() {
		return mlWriter;
	}
	public void setMlWriter(int mlWriter) {
		this.mlWriter = mlWriter;
	}
	public String getMlWNickname() {
		return mlWNickname;
	}
	public void setMlWNickname(String mlWNickname) {
		this.mlWNickname = mlWNickname;
	}
	public String getMlImageName() {
		return mlImageName;
	}
	public void setMlImageName(String mlImageName) {
		this.mlImageName = mlImageName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MyListAdmin [mlId=" + mlId + ", mlTitle=" + mlTitle + ", mlUploadDate=" + mlUploadDate
				+ ", mlModifyDate=" + mlModifyDate + ", recommendationTheme=" + recommendationTheme + ", approveTheme="
				+ approveTheme + ", mlWriter=" + mlWriter + ", mlWNickname=" + mlWNickname + ", mlImageName="
				+ mlImageName + "]";
	}
	
}
