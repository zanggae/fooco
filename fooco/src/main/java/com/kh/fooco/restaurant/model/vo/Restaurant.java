package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Restaurant implements Serializable {
	
	private static final long serialVersionUID = 5368816804079658850L;
	
	// RESTAURANT 필수 멤버 변수	
	private int resId;				// 맛집번호
	private int resCategoryId;		// 맛집 카테고리 번호
	private int locationId;			// 지역번호
	private String resName;			// 맛집이름
	private String resAddress;		// 맛집주소
	private String resContent;		// 맛집설명
	private int resViewCount;		// 맛집 조회수
	private String resTime;			// 맛집 영업시간
	private String resStatus;		// 맛집상태
	private Date resCreateDate;		// 맛집등록일
	private Date resUpdateDate;		// 맛집수정일
	private String resPhone;		// 맛집전화번호
	
	// 조회할 때 추가적으로 필요한 멤버 변수
	private String resImageName;				// 맛집썸네일이미지이름
	private String resImageFilepath;			// 맛집썸네일이미지파일경로
	private String locationName;				// 맛집지역이름
	private int reviewId;						// 리뷰번호(좋아요가 제일많은리뷰1)
	private String reviewContent;				// 리뷰내용
	private int reviewRatingAvg;				// 리뷰평점
	private String reviewProfileImageName;		// 리뷰남긴사람의 프로필사진이름
	private String reviewProfileImageFilepath;	// 리뷰남긴사람의 프로필사진경로
	private String reviewNickname;				// 리뷰남긴사람의 별칭
	private int bookmarkCount;					// 맛집즐겨찾기 횟수
	private int reviewCount;					// 리뷰수
	private String resCategoryName;				// 음식점 카테고리 이름
	
	public Restaurant() {
		super();
	}

	public Restaurant(int resId, int resCategoryId, int locationId, String resName, String resAddress,
			String resContent, int resViewCount, String resTime, String resStatus, Date resCreateDate,
			Date resUpdateDate, String resPhone, String resImageName, String resImageFilepath, String locationName,
			int reviewId, String reviewContent, int reviewRatingAvg, String reviewProfileImageName,
			String reviewProfileImageFilepath, String reviewNickname, int bookmarkCount, int reviewCount,
			String resCategoryName) {
		super();
		this.resId = resId;
		this.resCategoryId = resCategoryId;
		this.locationId = locationId;
		this.resName = resName;
		this.resAddress = resAddress;
		this.resContent = resContent;
		this.resViewCount = resViewCount;
		this.resTime = resTime;
		this.resStatus = resStatus;
		this.resCreateDate = resCreateDate;
		this.resUpdateDate = resUpdateDate;
		this.resPhone = resPhone;
		this.resImageName = resImageName;
		this.resImageFilepath = resImageFilepath;
		this.locationName = locationName;
		this.reviewId = reviewId;
		this.reviewContent = reviewContent;
		this.reviewRatingAvg = reviewRatingAvg;
		this.reviewProfileImageName = reviewProfileImageName;
		this.reviewProfileImageFilepath = reviewProfileImageFilepath;
		this.reviewNickname = reviewNickname;
		this.bookmarkCount = bookmarkCount;
		this.reviewCount = reviewCount;
		this.resCategoryName = resCategoryName;
	}

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public int getResCategoryId() {
		return resCategoryId;
	}

	public void setResCategoryId(int resCategoryId) {
		this.resCategoryId = resCategoryId;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
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

	public String getResContent() {
		return resContent;
	}

	public void setResContent(String resContent) {
		this.resContent = resContent;
	}

	public int getResViewCount() {
		return resViewCount;
	}

	public void setResViewCount(int resViewCount) {
		this.resViewCount = resViewCount;
	}

	public String getResTime() {
		return resTime;
	}

	public void setResTime(String resTime) {
		this.resTime = resTime;
	}

	public String getResStatus() {
		return resStatus;
	}

	public void setResStatus(String resStatus) {
		this.resStatus = resStatus;
	}

	public Date getResCreateDate() {
		return resCreateDate;
	}

	public void setResCreateDate(Date resCreateDate) {
		this.resCreateDate = resCreateDate;
	}

	public Date getResUpdateDate() {
		return resUpdateDate;
	}

	public void setResUpdateDate(Date resUpdateDate) {
		this.resUpdateDate = resUpdateDate;
	}

	public String getResPhone() {
		return resPhone;
	}

	public void setResPhone(String resPhone) {
		this.resPhone = resPhone;
	}

	public String getResImageName() {
		return resImageName;
	}

	public void setResImageName(String resImageName) {
		this.resImageName = resImageName;
	}

	public String getResImageFilepath() {
		return resImageFilepath;
	}

	public void setResImageFilepath(String resImageFilepath) {
		this.resImageFilepath = resImageFilepath;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getReviewRatingAvg() {
		return reviewRatingAvg;
	}

	public void setReviewRatingAvg(int reviewRatingAvg) {
		this.reviewRatingAvg = reviewRatingAvg;
	}

	public String getReviewProfileImageName() {
		return reviewProfileImageName;
	}

	public void setReviewProfileImageName(String reviewProfileImageName) {
		this.reviewProfileImageName = reviewProfileImageName;
	}

	public String getReviewProfileImageFilepath() {
		return reviewProfileImageFilepath;
	}

	public void setReviewProfileImageFilepath(String reviewProfileImageFilepath) {
		this.reviewProfileImageFilepath = reviewProfileImageFilepath;
	}

	public String getReviewNickname() {
		return reviewNickname;
	}

	public void setReviewNickname(String reviewNickname) {
		this.reviewNickname = reviewNickname;
	}

	public int getBookmarkCount() {
		return bookmarkCount;
	}

	public void setBookmarkCount(int bookmarkCount) {
		this.bookmarkCount = bookmarkCount;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	public String getResCategoryName() {
		return resCategoryName;
	}

	public void setResCategoryName(String resCategoryName) {
		this.resCategoryName = resCategoryName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Restaurant [resId=" + resId + ", resCategoryId=" + resCategoryId + ", locationId=" + locationId
				+ ", resName=" + resName + ", resAddress=" + resAddress + ", resContent=" + resContent
				+ ", resViewCount=" + resViewCount + ", resTime=" + resTime + ", resStatus=" + resStatus
				+ ", resCreateDate=" + resCreateDate + ", resUpdateDate=" + resUpdateDate + ", resPhone=" + resPhone
				+ ", resImageName=" + resImageName + ", resImageFilepath=" + resImageFilepath + ", locationName="
				+ locationName + ", reviewId=" + reviewId + ", reviewContent=" + reviewContent + ", reviewRatingAvg="
				+ reviewRatingAvg + ", reviewProfileImageName=" + reviewProfileImageName
				+ ", reviewProfileImageFilepath=" + reviewProfileImageFilepath + ", reviewNickname=" + reviewNickname
				+ ", bookmarkCount=" + bookmarkCount + ", reviewCount=" + reviewCount + ", resCategoryName="
				+ resCategoryName + "]";
	}

	
	
	
}
