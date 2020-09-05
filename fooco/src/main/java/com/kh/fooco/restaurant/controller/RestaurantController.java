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
import com.kh.fooco.restaurant.model.vo.Filter;
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
									 , @RequestParam(value="options", required=false) ArrayList<Filter> filters
									 , @RequestParam(value="category", required=false) ArrayList<Integer> categories
									 , @RequestParam(value="page", required=false, defaultValue="1") Integer page
									 , @RequestParam(value="keyword", required=false, defaultValue="all") String keyword
									 , @RequestParam(value="locationId", required=false, defaultValue="0") Integer locationId
									 , @RequestParam(value="sortType", required=false, defaultValue="highrating") String sortType)
	{		
		int currentPage = page;
		
		System.out.println("page: " + page + ", keyword: " + keyword + ", locationId: " + locationId + ", sortType: " + sortType + ", filters: " + filters + ", categories: " + categories);
		
		// 
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("filters", filters);
		searchParameter.put("keyword", keyword);
		searchParameter.put("sortType", sortType);
		searchParameter.put("categories", categories);
		searchParameter.put("locationId", locationId);
		
		int howManyRestaurant = restaurantService.getListCount(searchParameter);
		System.out.println(howManyRestaurant);
		
		PageInfo pi = getPageInfo(currentPage, howManyRestaurant);
		
		ArrayList<Restaurant> list = new ArrayList<Restaurant>();
		list = restaurantService.getList(searchParameter, pi);
	
		System.out.println(list);
		String location = convertLocation(locationId);
		if("all".equals(keyword)) {
			keyword = "전체";
		}
		System.out.println("location: " + location + ", keyword: " + keyword);
		
		mv.addObject("pi", pi);
		mv.addObject("list", list);
		mv.addObject("location", location);
		mv.addObject("keyword", keyword);
		mv.setViewName("restaurant/searchedRestaurant");
		return mv;
	}
	

	@RequestMapping("goDetailRestaurant.do")
	public String goDetailRestaurant() {
		return "restaurant/detailRestaurant";
	}
	
	public String convertLocation(int locationId) {
		
		String location = "";
		
		switch(locationId) {
			case 0: location = "전체"; break;
			case 1: location = "서울"; break;
			case 2: location = "인천"; break;
			case 3: location = "부산"; break;
			case 4: location = "대구"; break;
			case 5: location = "광주"; break;
			case 6: location = "대전"; break;
			case 7: location = "울산"; break;
			case 8: location = "제주"; break;
			case 9: location = "그외"; break;
		};
		
		return location;
	}
	
}
