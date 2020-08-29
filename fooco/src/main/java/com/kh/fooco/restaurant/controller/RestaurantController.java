package com.kh.fooco.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	
	@RequestMapping("goSearchedRestaurant.do")
	public String goSearchedRestaurant() {
		return "restaurant/searchedRestaurant";
	}
	
	@RequestMapping("goDetailRestaurant.do")
	public String goDetailRestaurant() {
		return "restaurant/detailRestaurant";
	}
	
}
