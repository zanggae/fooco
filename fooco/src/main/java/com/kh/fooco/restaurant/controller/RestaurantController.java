package com.kh.fooco.restaurant.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.restaurant.model.service.RestaurantService;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService restaurantService;
	
	@RequestMapping("goMain.do")
	public String goMain() {
		return "common/main";
	}
	
	@RequestMapping("goSearchedRestaurant.do")
	public ModelAndView goSearchedRestaurant(ModelAndView mv
									 , @RequestParam(value="page", required=false) Integer page
									 , @RequestParam(value="location", required=false) String location
									 , @RequestParam(value="keyword", required=false) String keyword)
	{
		int currentPage = 1;
		
		System.out.println("location: " + location + ", keyword: " + keyword);
		
		if(page != null) {
			currentPage = page;
		}
		
		ArrayList<Restaurant> list = new ArrayList<Restaurant>();
		PageInfo pi = new PageInfo();
		
		int howManyRestaurant = restaurantService.getListCount(location, keyword);
		
		
		
		
		
		mv.setViewName("restaurant/searchedRestaurant");
		return mv;
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
