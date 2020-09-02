package com.kh.fooco.restaurant.model.service;

import java.util.ArrayList;

import com.kh.fooco.restaurant.model.vo.Review;

public interface RestaurantService {

	ArrayList<Review> selectReviewList(int resId);

	int getListCount(String location, String keyword);

}

