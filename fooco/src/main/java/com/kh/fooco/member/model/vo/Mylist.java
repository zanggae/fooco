package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Mylist implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3424956625571899792L;

	
	private int resId;
	private String resName;
	private String resAddress;
	private String resStatus;
	private int imageId;
	private String imageOriginName;
	private String imageNewName;
	private String filePath;
	private Date imageCreateDate;
	private int imageLevel;
	private String imageStatus;
	private int imageDownloadCount;
	private int mlId;
	private String mlTitle;
	private Date mlUploadDate;
	private Date modifyDate;
	private String recommendationTheme;
	private String approveTheme;
	private int memberId;
	
	
	public Mylist() {
		super();
	}


	public Mylist(int resId, String resName, String resAddress, String resStatus, int imageId, String imageOriginName,
			String imageNewName, String filePath, Date imageCreateDate, int imageLevel, String imageStatus,
			int imageDownloadCount, int mlId, String mlTitle, Date mlUploadDate, Date modifyDate,
			String recommendationTheme, String approveTheme, int memberId) {
		super();
		this.resId = resId;
		this.resName = resName;
		this.resAddress = resAddress;
		this.resStatus = resStatus;
		this.imageId = imageId;
		this.imageOriginName = imageOriginName;
		this.imageNewName = imageNewName;
		this.filePath = filePath;
		this.imageCreateDate = imageCreateDate;
		this.imageLevel = imageLevel;
		this.imageStatus = imageStatus;
		this.imageDownloadCount = imageDownloadCount;
		this.mlId = mlId;
		this.mlTitle = mlTitle;
		this.mlUploadDate = mlUploadDate;
		this.modifyDate = modifyDate;
		this.recommendationTheme = recommendationTheme;
		this.approveTheme = approveTheme;
		this.memberId = memberId;
	}


	public int getResId() {
		return resId;
	}


	public void setResId(int resId) {
		this.resId = resId;
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


	public String getResStatus() {
		return resStatus;
	}


	public void setResStatus(String resStatus) {
		this.resStatus = resStatus;
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


	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
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


	public Date getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
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


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Mylist [resId=" + resId + ", resName=" + resName + ", resAddress=" + resAddress + ", resStatus="
				+ resStatus + ", imageId=" + imageId + ", imageOriginName=" + imageOriginName + ", imageNewName="
				+ imageNewName + ", filePath=" + filePath + ", imageCreateDate=" + imageCreateDate + ", imageLevel="
				+ imageLevel + ", imageStatus=" + imageStatus + ", imageDownloadCount=" + imageDownloadCount + ", mlId="
				+ mlId + ", mlTitle=" + mlTitle + ", mlUploadDate=" + mlUploadDate + ", modifyDate=" + modifyDate
				+ ", recommendationTheme=" + recommendationTheme + ", approveTheme=" + approveTheme + ", memberId="
				+ memberId + "]";
	}
	
	
	
}


