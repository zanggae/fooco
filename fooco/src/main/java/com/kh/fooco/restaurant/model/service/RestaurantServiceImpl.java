package com.kh.fooco.restaurant.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.restaurant.model.dao.RestaurantDao;
import com.kh.fooco.restaurant.model.vo.Bookmark;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;

@Service("restaurantService")
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	private RestaurantDao restaurantDao;

	@Override
	public int getListCount(HashMap<String, Object> searchParameter) {
		return restaurantDao.getListCount(searchParameter);
	}

	@Override
	public ArrayList<Restaurant> getList(HashMap<String, Object> searchParameter, PageInfo pi) {
		return restaurantDao.getList(searchParameter, pi);
	}

	@Override
	public Res getRestaurantDetail(Integer resId) {
		return restaurantDao.getRestaurantDetail(resId);
	}

	@Override
	public Info getRestaurantInfo(Integer resId) {
		return restaurantDao.getRestaurantInfo(resId);
	}

	@Override
	public int getReviewListCount(Integer resId) {
		return restaurantDao.getReviewListCount(resId);
	}

	@Override
	public ArrayList<Review> getReviewList(HashMap<String, Object> searchParameter, PageInfo pi) {
		return restaurantDao.getReviewList(searchParameter, pi);
	}

	@Override
	public int getPhotoCount(Integer resId) {
		return restaurantDao.getPhotoCount(resId);
	}

	@Override
	public ArrayList<Image> getPhotoList(HashMap<String, Object> searchParameter, PageInfo ppi) {
		return restaurantDao.getPhotoList(searchParameter, ppi);
	}

	@Override
	public int uploadReview(HashMap<String, Object> parameters) {
		return restaurantDao.uploadReview(parameters);
	}

	@Override
	public int upViewCount(Integer resId) {
		return restaurantDao.upViewCount(resId);
	}

	@Override
	public int enrollBookmark(Bookmark bm) {
		return restaurantDao.enrollBookmark(bm);
	}

	@Override
	public int alreadyEnroll(Bookmark bm) {
		return restaurantDao.alreadyEnroll(bm);
	}

	@Override
	public ArrayList<Restaurant> sameLocationBestRestaurant(HashMap<String, Object> searchParameter) {
		return restaurantDao.sameLocationBestRestaurant(searchParameter);
	}

	@Override
	public ArrayList<Restaurant> membershipRestaurant(HashMap<String, Object> searchParameter) {
		return restaurantDao.membershipRestaurant(searchParameter);
	}

	@Override
	public int upGood(Review rv) {
		return restaurantDao.upGood(rv);
	}

	@Override
	public int alreadyFollowRelationship(HashMap<String, Object> searchParameters) {
		return restaurantDao.alreadyFollowRelationship(searchParameters);
	}

	@Override
	public int followReviewer(HashMap<String, Object> searchParameters) {
		return restaurantDao.followReviewer(searchParameters);
	}

	@Override
	public int deleteReview(Integer reviewId) {
		return restaurantDao.deleteReview(reviewId);
	}



}
