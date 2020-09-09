package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class BoardInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6417913659419950601L;
	private int boardId;
	private String inquiryName;
	private int inquiryCode;
	private String boardTitle;
	private String summerNoteContent;
	public BoardInfo() {
		super();
	}
	
	public BoardInfo(int boardId, String inquiryName, int inquiryCode, String boardTitle, String summerNoteContent) {
		super();
		this.boardId = boardId;
		this.inquiryName = inquiryName;
		this.inquiryCode = inquiryCode;
		this.boardTitle = boardTitle;
		this.summerNoteContent = summerNoteContent;
	}
	
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getInquiryName() {
		return inquiryName;
	}
	public void setInquiryName(String inquiryName) {
		this.inquiryName = inquiryName;
	}
	public int getInquiryCode() {
		return inquiryCode;
	}
	public void setInquiryCode(int inquiryCode) {
		this.inquiryCode = inquiryCode;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getSummerNoteContent() {
		return summerNoteContent;
	}
	public void setSummerNoteContent(String summerNoteContent) {
		this.summerNoteContent = summerNoteContent;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "BoardInfo [boardId=" + boardId + ", inquiryName=" + inquiryName + ", inquiryCode=" + inquiryCode
				+ ", boardTitle=" + boardTitle + ", summerNoteContent=" + summerNoteContent + "]";
	}
	
	
	
}
