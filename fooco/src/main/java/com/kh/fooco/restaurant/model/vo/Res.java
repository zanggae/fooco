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
	
	private Image resThumbnailImage;          // 맛집 썸네일 이미지
	private ArrayList<Image> resLatestImages; // 맛집 사진
	private Review bestReview;		 	      // 베스트 리뷰
	
	
	
	
	
}
