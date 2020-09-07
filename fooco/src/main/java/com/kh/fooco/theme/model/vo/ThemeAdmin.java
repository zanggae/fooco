package com.kh.fooco.theme.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ThemeAdmin implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3304158408924026211L;
	private int themeId;				// 테마 아이디
	private String themeTitle;			// 테마 제목
	private Date themeUploadDate;		// 테마 생성날짜
	private Date themeModifyDate;		// 테마 수정날짜
	private int themeWriter;			// 테마 작성자
	private int themeCount;				// 테마 조회수
    private String themeImageName;		// 테마 썸네일이미지
	public ThemeAdmin() {
		super();
	}
	public ThemeAdmin(int themeId, String themeTitle, Date themeUploadDate, Date themeModifyDate, int themeWriter,
			int themeCount, String themeImageName) {
		super();
		this.themeId = themeId;
		this.themeTitle = themeTitle;
		this.themeUploadDate = themeUploadDate;
		this.themeModifyDate = themeModifyDate;
		this.themeWriter = themeWriter;
		this.themeCount = themeCount;
		this.themeImageName = themeImageName;
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
	public int getThemeWriter() {
		return themeWriter;
	}
	public void setThemeWriter(int themeWriter) {
		this.themeWriter = themeWriter;
	}
	public int getThemeCount() {
		return themeCount;
	}
	public void setThemeCount(int themeCount) {
		this.themeCount = themeCount;
	}
	public String getThemeImageName() {
		return themeImageName;
	}
	public void setThemeImageName(String themeImageName) {
		this.themeImageName = themeImageName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ThemeAdmin [themeId=" + themeId + ", themeTitle=" + themeTitle + ", themeWriter=" + themeWriter
				+ ", themeCount=" + themeCount + ", themeImageName=" + themeImageName + "]";
	}
    
    
}
