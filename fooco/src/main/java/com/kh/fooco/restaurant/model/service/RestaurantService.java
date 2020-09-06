package com.kh.fooco.restaurant.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;

public interface RestaurantService {

	int getListCount(HashMap<String, Object> searchParameter);

	ArrayList<Restaurant> getList(HashMap<String, Object> searchParameter, PageInfo pi);

	Res getRestaurantDetail(Integer resId);

	Info getRestaurantInfo(Integer resId);

}

