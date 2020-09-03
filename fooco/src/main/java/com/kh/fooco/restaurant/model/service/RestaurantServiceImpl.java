package com.kh.fooco.restaurant.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.restaurant.model.dao.RestaurantDao;
import com.kh.fooco.restaurant.model.vo.Review;

@Service("restaurantService")
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	private RestaurantDao restaurantDao;

	@Override
	public int getListCount(HashMap<String, Object> searchParameter) {
		return restaurantDao.getListCount(searchParameter);
	}



}
