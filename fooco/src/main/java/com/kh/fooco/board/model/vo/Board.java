package com.kh.fooco.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6508909156607381217L;
	// 게시물테이블에 관한 속성
	private int  boardId;				// 게시물번호
	private int boardWriter;			// 게시물작성자
	private int categoryNo;				// 게시물카테고리 번호
	private String boardTitle;			// 게시물 제목
	private String boardContent;		// 게시물 내용
	private int boardCount;				// 게시물 조회수
	private Date boardCreateDate;		// 게시물 생성날짜
	private Date boardUpdateDate;		// 게시물 수정날짜
	private String boardStatus;			// 게시물 상태
	private String answerContent;		// FAQ 질문에 대한 답변
	private String summernoteContent;	//섬머노트 내용
	private String nickname;			// 게시물작성자닉네임
	
	// 문의 테이블에 관한 속성
	private int inquiryCode;			// 문의 코드
	private String inquiryContent;		// 답변내용
	private Date inquiryDate;			// 답변날짜
	private String inquiryYN;			// 답변여부
	private String inquiryName;			// 문의코드이름
	
	// 이미지 테이블에 관한 속성
	private int imageId;				// 이미지번호
	private String imageOriginName;		// 원본파일이름
	private String imageNewName;		// 리네임이름
	private String imageFilepath;		// 파일 경로
	private Date imageCreateDate;		// 이미지 생성날짜
	private int imageLevel;				// 이미지 레벨(섬네일:0, 그밖에:1)
	private String imageStatus;			// 이미지 상태
	private int imageDownloadCount;		// 이미지 다운로드 횟수
	
	public Board() {
		super();
	}

	public Board(int boardId, int boardWriter, int categoryNo, String boardTitle, String boardContent, int boardCount,
			Date boardCreateDate, Date boardUpdateDate, String boardStatus, String answerContent,
			String summernoteContent, String nickname, int inquiryCode, String inquiryContent, Date inquiryDate,
			String inquiryYN, String inquiryName, int imageId, String imageOriginName, String imageNewName,
			String imageFilepath, Date imageCreateDate, int imageLevel, String imageStatus, int imageDownloadCount) {
		super();
		this.boardId = boardId;
		this.boardWriter = boardWriter;
		this.categoryNo = categoryNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardCount = boardCount;
		this.boardCreateDate = boardCreateDate;
		this.boardUpdateDate = boardUpdateDate;
		this.boardStatus = boardStatus;
		this.answerContent = answerContent;
		this.summernoteContent = summernoteContent;
		this.nickname = nickname;
		this.inquiryCode = inquiryCode;
		this.inquiryContent = inquiryContent;
		this.inquiryDate = inquiryDate;
		this.inquiryYN = inquiryYN;
		this.inquiryName = inquiryName;
		this.imageId = imageId;
		this.imageOriginName = imageOriginName;
		this.imageNewName = imageNewName;
		this.imageFilepath = imageFilepath;
		this.imageCreateDate = imageCreateDate;
		this.imageLevel = imageLevel;
		this.imageStatus = imageStatus;
		this.imageDownloadCount = imageDownloadCount;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public int getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(int boardWriter) {
		this.boardWriter = boardWriter;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
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

	public Date getBoardCreateDate() {
		return boardCreateDate;
	}

	public void setBoardCreateDate(Date boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}

	public Date getBoardUpdateDate() {
		return boardUpdateDate;
	}

	public void setBoardUpdateDate(Date boardUpdateDate) {
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public Date getInquiryDate() {
		return inquiryDate;
	}

	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}

	public String getInquiryYN() {
		return inquiryYN;
	}

	public void setInquiryYN(String inquiryYN) {
		this.inquiryYN = inquiryYN;
	}

	public String getInquiryName() {
		return inquiryName;
	}

	public void setInquiryName(String inquiryName) {
		this.inquiryName = inquiryName;
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

	public String getImageFilepath() {
		return imageFilepath;
	}

	public void setImageFilepath(String imageFilepath) {
		this.imageFilepath = imageFilepath;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board [boardId=" + boardId + ", boardWriter=" + boardWriter + ", categoryNo=" + categoryNo
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardCount=" + boardCount
				+ ", boardCreateDate=" + boardCreateDate + ", boardUpdateDate=" + boardUpdateDate + ", boardStatus="
				+ boardStatus + ", answerContent=" + answerContent + ", summernoteContent=" + summernoteContent
				+ ", nickname=" + nickname + ", inquiryCode=" + inquiryCode + ", inquiryContent=" + inquiryContent
				+ ", inquiryDate=" + inquiryDate + ", inquiryYN=" + inquiryYN + ", inquiryName=" + inquiryName
				+ ", imageId=" + imageId + ", imageOriginName=" + imageOriginName + ", imageNewName=" + imageNewName
				+ ", imageFilepath=" + imageFilepath + ", imageCreateDate=" + imageCreateDate + ", imageLevel="
				+ imageLevel + ", imageStatus=" + imageStatus + ", imageDownloadCount=" + imageDownloadCount + "]";
	}

	
	
}
