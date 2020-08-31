package com.kh.fooco.board.model.vo;

import java.io.Serializable;

import oracle.sql.DATE;

public class InsertBoard implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1624431819511228719L;

	//게시물 테이블에 관한 속성
	private int boardId;				//게시물 번호
	private int categoryNo;				//분류번호
	private int boardWriter;			//회원번호
	private String boardTitle;			//게시물제목
	private String boardContent;		//게시물내용
	private int boardCount;				//게시물 조회수
	private DATE boardCreateDate;		//게시물작성일
	private DATE boardUpdateDate;		//게시물수정일
	private String boardStatus;			//게시물상태
	private String answerContent;		//FAQ답변내용
	private String summernoteContent;	//섬머노트 내용
	
	//문의 테이블에 관한 속성 
	private int inquiryCode;			//문의코드
	private String inquiryContent;		//답변내용
	private String inquiryYN;			//답변여부
	private DATE inquiryDate;			//답변날짜
	
	
	//이미지 테이블에 관한 속성
	/*
	 * private int imageId; //첨부파일의 번호 private String imageOriginName; //첨부파일 원본 이름
	 * private String imageNewName; //첨부파일 변경 이름 private String imageFilepath;
	 * //첨부파일 경로 private DATE imageCreateDate; //첨부파일 업로드 날짜 private int imageLevel;
	 * //첨부파일 레벨 private String imageStatus; //첨부파일 상태 private int
	 * imageDownloadCount; //첨부파일 다운로드 횟수
	 */	public InsertBoard() {
		super();
	}


	public InsertBoard(int boardId, int categoryNo, int boardWriter, String boardTitle, String boardContent,
			int boardCount, DATE boardCreateDate, DATE boardUpdateDate, String boardStatus, String answerContent,
			String summernoteContent, int inquiryCode, String inquiryContent, String inquiryYN, DATE inquiryDate) {
		super();
		this.boardId = boardId;
		this.categoryNo = categoryNo;
		this.boardWriter = boardWriter;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardCount = boardCount;
		this.boardCreateDate = boardCreateDate;
		this.boardUpdateDate = boardUpdateDate;
		this.boardStatus = boardStatus;
		this.answerContent = answerContent;
		this.summernoteContent = summernoteContent;
		this.inquiryCode = inquiryCode;
		this.inquiryContent = inquiryContent;
		this.inquiryYN = inquiryYN;
		this.inquiryDate = inquiryDate;
	}


	public int getBoardId() {
		return boardId;
	}


	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}


	public int getCategoryNo() {
		return categoryNo;
	}


	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}


	public int getBoardWriter() {
		return boardWriter;
	}


	public void setBoardWriter(int boardWriter) {
		this.boardWriter = boardWriter;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public int getBoardCount() {
		return boardCount;
	}


	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}


	public DATE getBoardCreateDate() {
		return boardCreateDate;
	}


	public void setBoardCreateDate(DATE boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}


	public DATE getBoardUpdateDate() {
		return boardUpdateDate;
	}


	public void setBoardUpdateDate(DATE boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}


	public String getBoardStatus() {
		return boardStatus;
	}


	public void setBoardStatus(String boardStatus) {
		this.boardStatus = boardStatus;
	}


	public String getAnswerContent() {
		return answerContent;
	}


	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}


	public String getSummernoteContent() {
		return summernoteContent;
	}


	public void setSummernoteContent(String summernoteContent) {
		this.summernoteContent = summernoteContent;
	}


	public int getInquiryCode() {
		return inquiryCode;
	}


	public void setInquiryCode(int inquiryCode) {
		this.inquiryCode = inquiryCode;
	}


	public String getInquiryContent() {
		return inquiryContent;
	}


	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}


	public String getInquiryYN() {
		return inquiryYN;
	}


	public void setInquiryYN(String inquiryYN) {
		this.inquiryYN = inquiryYN;
	}


	public DATE getInquiryDate() {
		return inquiryDate;
	}


	public void setInquiryDate(DATE inquiryDate) {
		this.inquiryDate = inquiryDate;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "InsertBoard [boardId=" + boardId + ", categoryNo=" + categoryNo + ", boardWriter=" + boardWriter
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardCount=" + boardCount
				+ ", boardCreateDate=" + boardCreateDate + ", boardUpdateDate=" + boardUpdateDate + ", boardStatus="
				+ boardStatus + ", answerContent=" + answerContent + ", summernoteContent=" + summernoteContent
				+ ", inquiryCode=" + inquiryCode + ", inquiryContent=" + inquiryContent + ", inquiryYN=" + inquiryYN
				+ ", inquiryDate=" + inquiryDate + "]";
	}


}


