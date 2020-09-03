package com.kh.fooco.restaurant.controller;

import static com.kh.fooco.common.Pagination.getPageInfo;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.restaurant.model.service.RestaurantService;
import com.kh.fooco.restaurant.model.vo.Option;
import com.kh.fooco.restaurant.model.vo.Restaurant;

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
									 , @RequestParam(value="sort", required=false) String sort
									 , @RequestParam(value="option", required=false) ArrayList<Option> option
									 , @RequestParam(value="keyword", required=false) String keyword
									 , @RequestParam(value="location", required=false) Integer location)
	{		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("location", location);
		searchParameter.put("keyword", keyword);
		searchParameter.put("sort", sort);
		
		int howManyRestaurant = restaurantService.getListCount(searchParameter);
		
		PageInfo pi = getPageInfo(currentPage, howManyRestaurant);
		
		ArrayList<Restaurant> list = restaurantService.getList(searchParameter, pi);
	
		
		
		mv.setViewName("restaurant/searchedRestaurant");
		return mv;
	}
	

	@RequestMapping("goDetailRestaurant.do")
	public String goDetailRestaurant() {
		return "restaurant/detailRestaurant";
	}
	
	
}
