package com.kh.fooco.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Select_Board implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6882453503195748723L;
	private int boardId;
	private String inquiryName;
	private String boardTitle;
	private Date boardCreateDate;
	private String inquiryYN;
	
	public Select_Board() {
		super();
	}
	
	public Select_Board(int boardId, String inquiryName, String boardTitle, Date boardCreateDate, String inquiryYN) {
		super();
		this.boardId = boardId;
		this.inquiryName = inquiryName;
		this.boardTitle = boardTitle;
		this.boardCreateDate = boardCreateDate;
		this.inquiryYN = inquiryYN;
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
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public Date getBoardCreateDate() {
		return boardCreateDate;
	}
	public void setBoardCreateDate(Date boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}
	public String getInquiryYN() {
		return inquiryYN;
	}
	public void setInquiryYN(String inquiryYN) {
		this.inquiryYN = inquiryYN;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Select_Board [boardId=" + boardId + ", inquiryName=" + inquiryName + ", boardTitle=" + boardTitle
				+ ", boardCreateDate=" + boardCreateDate + ", inquiryYN=" + inquiryYN + "]";
	}
	
	
}
