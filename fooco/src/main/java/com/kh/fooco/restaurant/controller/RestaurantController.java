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
									 , @RequestParam(value="page", required=false, defaultValue="1") Integer page
									 , @RequestParam(value="options", required=false) ArrayList<Option> options
									 , @RequestParam(value="keyword", required=false, defaultValue="all") String keyword
									 , @RequestParam(value="locationId", required=false, defaultValue="0") Integer locationId
									 , @RequestParam(value="sortType", required=false, defaultValue="highrating") String sortType)
	{		
		int currentPage = page;
		
		System.out.println("page: " + page + ", keyword: " + keyword + ", locationId: " + locationId + ", sortType: " + sortType + ", options: " + options);
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("options", options);
		searchParameter.put("keyword", keyword);
		searchParameter.put("options", options);
		searchParameter.put("sortType", sortType);
		searchParameter.put("locationId", locationId);
		
		int howManyRestaurant = restaurantService.getListCount(searchParameter);
		System.out.println(howManyRestaurant);
		
		PageInfo pi = getPageInfo(currentPage, howManyRestaurant);
		
		ArrayList<Restaurant> list = new ArrayList<Restaurant>();
		list = restaurantService.getList(searchParameter, pi);
		
		System.out.println(list);
	
		
		
		mv.setViewName("restaurant/searchedRestaurant");
		return mv;
	}
	

	@RequestMapping("goDetailRestaurant.do")
	public String goDetailRestaurant() {
		return "restaurant/detailRestaurant";
	}
	
	
}
