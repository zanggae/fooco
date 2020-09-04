package com.kh.fooco.theme.model.vo;

import java.io.Serializable;

import java.sql.Date;



public class Theme implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5517207172508552691L;
	//테마 
	private int themeId;							//테마 번호
	private String themeTitle;						//테마 제목
	private Date themeUploadDate;					//테마 등록날짜
	private Date themeModifyDate;					//테마 수정날짜
	private int memberNo;							//회원번호
	private int themeCount;							//테마 조회수
	private int themeBookmarkCount;					//테마 즐겨찾기 수 
	
	//테마 즐겨찾기
	private int themeBookmarkId;					//테마 즐겨찾기 번호 			
	
	//이미지 
	private int imageId;							//첨부파일의 번호
	private String imageOriginName;					//첨부파일 원본 이름
	private String imageNewName;					//첨부파일 변경 이름
	private String imageFilePath;					//첨부파일 경로
	private Date imageCreateDate;					//첨부파일 업로드 날짜
	private int imageLevel;							//첨부파일 레벨 
	private String imageStatus;						//첨부파일 상태
	private int imageDownloadCount;					//첨부파일 다운로드 횟수 
	
	//맛집
	private int resId;								//맛집번호

	
	
	public Theme() {
		super();
	}



	public Theme(int themeId, String themeTitle, Date themeUploadDate, Date themeModifyDate, int memberNo,
			int themeCount, int themeBookmarkCount, int themeBookmarkId, int imageId, String imageOriginName,
			String imageNewName, String imageFilePath, Date imageCreateDate, int imageLevel, String imageStatus,
			int imageDownloadCount, int resId) {
		super();
		this.themeId = themeId;
		this.themeTitle = themeTitle;
		this.themeUploadDate = themeUploadDate;
		this.themeModifyDate = themeModifyDate;
		this.memberNo = memberNo;
		this.themeCount = themeCount;
		this.themeBookmarkCount = themeBookmarkCount;
		this.themeBookmarkId = themeBookmarkId;
		this.imageId = imageId;
		this.imageOriginName = imageOriginName;
		this.imageNewName = imageNewName;
		this.imageFilePath = imageFilePath;
		this.imageCreateDate = imageCreateDate;
		this.imageLevel = imageLevel;
		this.imageStatus = imageStatus;
		this.imageDownloadCount = imageDownloadCount;
		this.resId = resId;
	}



	public int getThemeId() {
		return themeId;
	}



	public void setThemeId(int themeId) {
		this.themeId = themeId;
	}



	public String getThemeTitle() {
		return themeTitle;
	}



	public void setThemeTitle(String themeTitle) {
		this.themeTitle = themeTitle;
	}



	public Date getThemeUploadDate() {
		return themeUploadDate;
	}



	public void setThemeUploadDate(Date themeUploadDate) {
		this.themeUploadDate = themeUploadDate;
	}



	public Date getThemeModifyDate() {
		return themeModifyDate;
	}



	public void setThemeModifyDate(Date themeModifyDate) {
		this.themeModifyDate = themeModifyDate;
	}



	public int getMemberNo() {
		return memberNo;
	}



	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}



	public int getThemeCount() {
		return themeCount;
	}



	public void setThemeCount(int themeCount) {
		this.themeCount = themeCount;
	}



	public int getThemeBookmarkCount() {
		return themeBookmarkCount;
	}



	public void setThemeBookmarkCount(int themeBookmarkCount) {
		this.themeBookmarkCount = themeBookmarkCount;
	}



	public int getThemeBookmarkId() {
		return themeBookmarkId;
	}



	public void setThemeBookmarkId(int themeBookmarkId) {
		this.themeBookmarkId = themeBookmarkId;
	}



	public int getImageId() {
		return imageId;
	}



	public void setImageId(int imageId) {
		this.imageId = imageId;
	}



	public String getImageOriginName() {
		return imageOriginName;
	}



	public void setImageOriginName(String imageOriginName) {
		this.imageOriginName = imageOriginName;
	}



	public String getImageNewName() {
		return imageNewName;
	}



	public void setImageNewName(String imageNewName) {
		this.imageNewName = imageNewName;
	}



	public String getImageFilePath() {
		return imageFilePath;
	}



	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}



	public Date getImageCreateDate() {
		return imageCreateDate;
	}



	public void setImageCreateDate(Date imageCreateDate) {
		this.imageCreateDate = imageCreateDate;
	}



	public int getImageLevel() {
		return imageLevel;
	}



	public void setImageLevel(int imageLevel) {
		this.imageLevel = imageLevel;
	}



	public String getImageStatus() {
		return imageStatus;
	}



	public void setImageStatus(String imageStatus) {
		this.imageStatus = imageStatus;
	}



	public int getImageDownloadCount() {
		return imageDownloadCount;
	}



	public void setImageDownloadCount(int imageDownloadCount) {
		this.imageDownloadCount = imageDownloadCount;
	}



	public int getResId() {
		return resId;
	}



	public void setResId(int resId) {
		this.resId = resId;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "Theme [themeId=" + themeId + ", themeTitle=" + themeTitle + ", themeUploadDate=" + themeUploadDate
				+ ", themeModifyDate=" + themeModifyDate + ", memberNo=" + memberNo + ", themeCount=" + themeCount
				+ ", themeBookmarkCount=" + themeBookmarkCount + ", themeBookmarkId=" + themeBookmarkId + ", imageId="
				+ imageId + ", imageOriginName=" + imageOriginName + ", imageNewName=" + imageNewName
				+ ", imageFilePath=" + imageFilePath + ", imageCreateDate=" + imageCreateDate + ", imageLevel="
				+ imageLevel + ", imageStatus=" + imageStatus + ", imageDownloadCount=" + imageDownloadCount
				+ ", resId=" + resId + "]";
	}


	
	
}
