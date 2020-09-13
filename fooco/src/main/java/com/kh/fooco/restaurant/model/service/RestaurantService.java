package com.kh.fooco.restaurant.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.restaurant.model.vo.Bookmark;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;

public interface RestaurantService {

	int getListCount(HashMap<String, Object> searchParameter);

	ArrayList<Restaurant> getList(HashMap<String, Object> searchParameter, PageInfo pi);

	Res getRestaurantDetail(Integer resId);

	Info getRestaurantInfo(Integer resId);

	ArrayList<Review> getReviewList(HashMap<String, Object> searchParameter);

	ArrayList<Image> getPhotoList(HashMap<String, Object> searchParameter);

	int uploadReview(HashMap<String, Object> parameters);

	int upViewCount(Integer resId);

	int enrollBookmark(Bookmark bm);

	int alreadyEnroll(Bookmark bm);

	ArrayList<Restaurant> sameLocationBestRestaurant(HashMap<String, Object> searchParameter);

	ArrayList<Restaurant> membershipRestaurant(HashMap<String, Object> searchParameter);

	int upGood(Review rv);

	int alreadyFollowRelationship(HashMap<String, Object> searchParameters);

	int followReviewer(HashMap<String, Object> searchParameters);

	int deleteFile(Integer reviewId);
	
	int deleteReview(Integer reviewId);

	Review selectOneReview(String reviewId);


}

