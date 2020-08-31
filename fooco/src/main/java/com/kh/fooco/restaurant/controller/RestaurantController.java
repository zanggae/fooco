package com.kh.fooco.restaurant.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fooco.restaurant.model.service.RestaurantService;
import com.kh.fooco.restaurant.model.vo.Review;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService restaurantService;
	
	@RequestMapping("goSearchedRestaurant.do")
	public String goSearchedRestaurant() {
		return "restaurant/searchedRestaurant";
	}
	
	@RequestMapping("goDetailRestaurant.do")
	public String goDetailRestaurant() {
		return "restaurant/detailRestaurant";
	}
	
	@RequestMapping("selectReviewList.do")
	public String selectReviewList(int resId, HttpServletResponse response) throws IOException {
		
		ArrayList<Review> result = restaurantService.selectReviewList(resId);
		
		System.out.println(result);
	
		return "restaurant/restaurantReview";
	}
	
}
