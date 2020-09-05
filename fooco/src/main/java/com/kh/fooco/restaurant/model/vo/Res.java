package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

import com.kh.fooco.common.model.vo.Image;

public class Res implements Serializable {
	
	private static final long serialVersionUID = -6273215494217756506L;
	
	// RESTAURANT 필수 멤버 변수
	private int resId;				 		  // 맛집 번호
	private int resCategoryId;		 		  // 맛집 카테고리 번호
	private String resCategoryName;  		  // 맛집 카테고리 이름
	private int locationId;					  // 지역 번호
	private String locationName;    		  // 지역 이름
	private String resName;			 		  // 맛집 이름
	private String resAddress;				  // 맛집 주소
	private String resContent;		 		  // 맛집 설명
	private int resViewCount;				  // 맛집 조회수
	private String resTime;			 		  // 맛집 영업시간
	private String resStatus;		 		  // 맛집 상태
	private Date resCreateDate;		 		  // 맛집 등록일
	private Date resUpdateDate;		 		  // 맛집 수정일
	private int reviewRating;        		  // 맛집 평점
	private int resBookmarkCount;    		  // 맛집 즐겨찾기 수
	private int resReviewCount;               // 맛집 리뷰 수
	
	private ResImage resThumbnailImage;          // 맛집 썸네일 이미지
	private Review bestReview;		 	      // 베스트 리뷰
	private ArrayList<Bestmenu> bestmenus;     // 베스트 메뉴
	private ArrayList<Filter> resFilters;     // 필터
	private ArrayList<Image> resLatestImages; // 맛집 사진
	
	public Res() {}
	public Res(int resId, int resCategoryId, String resCategoryName, int locationId, String locationName,
			String resName, String resAddress, String resContent, int resViewCount, String resTime, String resStatus,
			Date resCreateDate, Date resUpdateDate, int reviewRating, int resBookmarkCount, int resReviewCount,
			Image resThumbnailImage, Review bestReview, ArrayList<Bestmenu> bestmenus, ArrayList<Filter> resFilters,
			ArrayList<Image> resLatestImages) {
		super();
		this.resId = resId;
		this.resCategoryId = resCategoryId;
		this.resCategoryName = resCategoryName;
		this.locationId = locationId;
		this.locationName = locationName;
		this.resName = resName;
		this.resAddress = resAddress;
		this.resContent = resContent;
		this.resViewCount = resViewCount;
		this.resTime = resTime;
		this.resStatus = resStatus;
		this.resCreateDate = resCreateDate;
		this.resUpdateDate = resUpdateDate;
		this.reviewRating = reviewRating;
		this.resBookmarkCount = resBookmarkCount;
		this.resReviewCount = resReviewCount;
		this.resThumbnailImage = resThumbnailImage;
		this.bestReview = bestReview;
		this.bestmenus = bestmenus;
		this.resFilters = resFilters;
		this.resLatestImages = resLatestImages;
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
	public String getResCategoryName() {
		return resCategoryName;
	}
	public void setResCategoryName(String resCategoryName) {
		this.resCategoryName = resCategoryName;
	}
	public int getLocationId() {
		return locationId;
	}
	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
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
	public int getReviewRating() {
		return reviewRating;
	}
	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}
	public int getResBookmarkCount() {
		return resBookmarkCount;
	}
	public void setResBookmarkCount(int resBookmarkCount) {
		this.resBookmarkCount = resBookmarkCount;
	}
	public int getResReviewCount() {
		return resReviewCount;
	}
	public void setResReviewCount(int resReviewCount) {
		this.resReviewCount = resReviewCount;
	}
	public Image getResThumbnailImage() {
		return resThumbnailImage;
	}
	public void setResThumbnailImage(Image resThumbnailImage) {
		this.resThumbnailImage = resThumbnailImage;
	}
	public Review getBestReview() {
		return bestReview;
	}
	public void setBestReview(Review bestReview) {
		this.bestReview = bestReview;
	}
	public ArrayList<Bestmenu> getBestmenus() {
		return bestmenus;
	}
	public void setBestmenus(ArrayList<Bestmenu> bestmenus) {
		this.bestmenus = bestmenus;
	}
	public ArrayList<Filter> getResFilters() {
		return resFilters;
	}
	public void setResFilters(ArrayList<Filter> resFilters) {
		this.resFilters = resFilters;
	}
	public ArrayList<Image> getResLatestImages() {
		return resLatestImages;
	}
	public void setResLatestImages(ArrayList<Image> resLatestImages) {
		this.resLatestImages = resLatestImages;
	}
	@Override
	public String toString() {
		return "Res [resId=" + resId + ", resCategoryId=" + resCategoryId + ", resCategoryName=" + resCategoryName
				+ ", locationId=" + locationId + ", locationName=" + locationName + ", resName=" + resName
				+ ", resAddress=" + resAddress + ", resContent=" + resContent + ", resViewCount=" + resViewCount
				+ ", resTime=" + resTime + ", resStatus=" + resStatus + ", resCreateDate=" + resCreateDate
				+ ", resUpdateDate=" + resUpdateDate + ", reviewRating=" + reviewRating + ", resBookmarkCount="
				+ resBookmarkCount + ", resReviewCount=" + resReviewCount + ", resThumbnailImage=" + resThumbnailImage
				+ ", bestReview=" + bestReview + ", bestmenus=" + bestmenus + ", resFilters=" + resFilters
				+ ", resLatestImages=" + resLatestImages + "]";
	}
	
}
