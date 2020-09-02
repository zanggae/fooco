package com.kh.fooco.restaurant.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.restaurant.model.dao.RestaurantDao;
import com.kh.fooco.restaurant.model.vo.Review;

@Service("restaurantService")
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	private RestaurantDao restaurantDao;

	@Override
	public ArrayList<Review> selectReviewList(int resId) {
		return restaurantDao.selectReviewList(resId);
	}

	@Override
	public int getListCount(String location, String keyword) {
		return restaurantDao.getListCount(location, keyword);
	}

}
