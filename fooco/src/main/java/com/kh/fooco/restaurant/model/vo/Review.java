package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

import com.kh.fooco.common.model.vo.Image;

public class Review implements Serializable {
	
	private static final long serialVersionUID = 7704278132211299023L;
	
	// Review 필수 요소
	private int reviewId;
	private int resId;
	private int memberId;
	private Date reviewCreateDate;
	private Date reviewUpdateDate;
	private String reviewContent;
	private int reviewGoodcount;
	private int reviewRating;
	private int reviewTasterating;
	private int reviewPricerating;
	private int reviewServicerating;
	
	// Review 부가 요소
	private String reviewProfileImageName;		
	private String reviewProfileImageFilepath;	
	private String nickname;				
	private int reviewCount;                    
	private int followerCount;               
	private ArrayList<Image> reviewImages;    
	
	public Review() {}
	public Review(int reviewId, int resId, int memberId, Date reviewCreateDate, Date reviewUpdateDate,
			String reviewContent, int reviewGoodcount, int reviewRating, int reviewTasterating, int reviewPricerating,
			int reviewServicerating, String reviewProfileImageName, String reviewProfileImageFilepath, String nickname,
			int reviewCount, int followerCount, ArrayList<Image> reviewImages) {
		super();
		this.reviewId = reviewId;
		this.resId = resId;
		this.memberId = memberId;
		this.reviewCreateDate = reviewCreateDate;
		this.reviewUpdateDate = reviewUpdateDate;
		this.reviewContent = reviewContent;
		this.reviewGoodcount = reviewGoodcount;
		this.reviewRating = reviewRating;
		this.reviewTasterating = reviewTasterating;
		this.reviewPricerating = reviewPricerating;
		this.reviewServicerating = reviewServicerating;
		this.reviewProfileImageName = reviewProfileImageName;
		this.reviewProfileImageFilepath = reviewProfileImageFilepath;
		this.nickname = nickname;
		this.reviewCount = reviewCount;
		this.followerCount = followerCount;
		this.reviewImages = reviewImages;
	}
	
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public Date getReviewCreateDate() {
		return reviewCreateDate;
	}
	public void setReviewCreateDate(Date reviewCreateDate) {
		this.reviewCreateDate = reviewCreateDate;
	}
	public Date getReviewUpdateDate() {
		return reviewUpdateDate;
	}
	public void setReviewUpdateDate(Date reviewUpdateDate) {
		this.reviewUpdateDate = reviewUpdateDate;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewGoodcount() {
		return reviewGoodcount;
	}
	public void setReviewGoodcount(int reviewGoodcount) {
		this.reviewGoodcount = reviewGoodcount;
	}
	public int getReviewRating() {
		return reviewRating;
	}
	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}
	public int getReviewTasterating() {
		return reviewTasterating;
	}
	public void setReviewTasterating(int reviewTasterating) {
		this.reviewTasterating = reviewTasterating;
	}
	public int getReviewPricerating() {
		return reviewPricerating;
	}
	public void setReviewPricerating(int reviewPricerating) {
		this.reviewPricerating = reviewPricerating;
	}
	public int getReviewServicerating() {
		return reviewServicerating;
	}
	public void setReviewServicerating(int reviewServicerating) {
		this.reviewServicerating = reviewServicerating;
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public int getFollowerCount() {
		return followerCount;
	}
	public void setFollowerCount(int followerCount) {
		this.followerCount = followerCount;
	}
	public ArrayList<Image> getReviewImages() {
		return reviewImages;
	}
	public void setReviewImages(ArrayList<Image> reviewImages) {
		this.reviewImages = reviewImages;
	}
	
	@Override
	public String toString() {
		return "Review [reviewId=" + reviewId + ", resId=" + resId + ", memberId=" + memberId + ", reviewCreateDate="
				+ reviewCreateDate + ", reviewUpdateDate=" + reviewUpdateDate + ", reviewContent=" + reviewContent
				+ ", reviewGoodcount=" + reviewGoodcount + ", reviewRating=" + reviewRating + ", reviewTasterating="
				+ reviewTasterating + ", reviewPricerating=" + reviewPricerating + ", reviewServicerating="
				+ reviewServicerating + ", reviewProfileImageName=" + reviewProfileImageName
				+ ", reviewProfileImageFilepath=" + reviewProfileImageFilepath + ", nickname=" + nickname
				+ ", reviewCount=" + reviewCount + ", followerCount=" + followerCount + ", reviewImages=" + reviewImages
				+ "]";
	}
	
}
