package com.kh.fooco.restaurant.controller;

import static com.kh.fooco.common.Pagination.getPageInfo;
import static com.kh.fooco.common.Pagination.getPhotoPageInfo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.service.RestaurantService;
import com.kh.fooco.restaurant.model.vo.Filter;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService restaurantService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("goMain.do")    
	public String goMain() {
		return "common/main";
	}
	
	@RequestMapping("goSearchedRestaurant.do")
	public ModelAndView goSearchedRestaurant(ModelAndView mv
									 , @RequestParam(value="filters", required=false) ArrayList<Filter> filters
									 , @RequestParam(value="categories", required=false) ArrayList<Integer> categories
									 , @RequestParam(value="page", required=false, defaultValue="1") Integer page
									 , @RequestParam(value="keyword", required=false, defaultValue="all") String keyword
									 , @RequestParam(value="locationId", required=false, defaultValue="0") Integer locationId
									 , @RequestParam(value="sortType", required=false, defaultValue="highrating") String sortType)
	{		
		int currentPage = page;
				
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("filters", filters);
		searchParameter.put("keyword", keyword);
		searchParameter.put("sortType", sortType);
		searchParameter.put("categories", categories);
		searchParameter.put("locationId", locationId);
		
		int howManyRestaurant = restaurantService.getListCount(searchParameter);
		
		PageInfo pi = getPageInfo(currentPage, howManyRestaurant);
		
		ArrayList<Restaurant> list = new ArrayList<Restaurant>();
		list = restaurantService.getList(searchParameter, pi);
	
		String location = convertLocation(locationId);
		
		String changedKeyword = "";
		
		if("all".equals(keyword)) {
			changedKeyword = "전체";
		}
		
		mv.addObject("pi", pi);
		mv.addObject("list", list);
		mv.addObject("locationId", locationId);
		mv.addObject("location", location);
		mv.addObject("keyword", keyword);
		mv.addObject("changedKeyword", changedKeyword);
		mv.addObject("filters", filters);
		mv.addObject("sortType", sortType);
		mv.setViewName("restaurant/searchedRestaurant");
		return mv;
	}
	

	@RequestMapping("goDetailRestaurant.do")
	public ModelAndView goDetailRestaurant(ModelAndView mv, @RequestParam(value="resId") Integer resId
														  , @RequestParam(value="sortType", required=false, defaultValue="latest") String sortType)
	{
		Res restaurant = restaurantService.getRestaurantDetail(resId);
		Info info = restaurantService.getRestaurantInfo(resId);
		
		int currentPage = 1;
		
		int howManyReview = restaurantService.getReviewListCount(resId);
		PageInfo pi = getPageInfo(currentPage, howManyReview);
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("resId", resId);
		searchParameter.put("sortType", sortType);
		
		ArrayList<Review> reviewList = new ArrayList<Review>();		
		reviewList = restaurantService.getReviewList(searchParameter, pi);
		
		int howManyReviewPhoto = restaurantService.getPhotoCount(resId);
		PageInfo ppi = getPhotoPageInfo(currentPage, howManyReviewPhoto);
		
		ArrayList<Image> photoList = new ArrayList<Image>();
		photoList = restaurantService.getPhotoList(searchParameter, ppi);
		
		mv.addObject("res", restaurant);
		mv.addObject("info", info);
		mv.addObject("reviewList", reviewList);
		mv.addObject("photoList", photoList);
		mv.setViewName("restaurant/detailRestaurant");
		return mv;
	}
	
	@RequestMapping("goRestaurantReview.do")
	public ModelAndView goRestaurantReview(ModelAndView mv, @RequestParam(value="resId", required=false) Integer resId
														  , @RequestParam(value="sortType", required=false) String sortType
														  , @RequestParam(value="page", required=false, defaultValue="1") Integer page)
	{
		int currentPage = page;		
		int howManyReview = restaurantService.getReviewListCount(resId);
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("resId", resId);
		searchParameter.put("sortType", sortType);		
		
		PageInfo pi = getPageInfo(currentPage, howManyReview);
		
		ArrayList<Review> reviewList = new ArrayList<Review>();
		reviewList = restaurantService.getReviewList(searchParameter, pi);
		
		mv.addObject("pi", pi);
		mv.addObject("reviewList", reviewList);
		mv.setViewName("restaurant/detailRestaurant");
		return mv;
	}
	
	
	@RequestMapping("goRestaurantPhoto.do")
	public ModelAndView goRestaurantPhoto(ModelAndView mv, @RequestParam(value="resId", required=false) Integer resId
														  , @RequestParam(value="sortType", required=false) String sortType
														  , @RequestParam(value="page", required=false, defaultValue="1") Integer page)
	{
		int currentPage = page;		
		int howManyPhoto = restaurantService.getPhotoCount(resId);
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("resId", resId);
		searchParameter.put("sortType", sortType);	
		
		PageInfo ppi = getPhotoPageInfo(currentPage, howManyPhoto);
		
		ArrayList<Image> photoList = new ArrayList<Image>();
		photoList = restaurantService.getPhotoList(searchParameter, ppi);
		
		mv.addObject("ppi", ppi);
		mv.addObject("photoList", photoList);
		mv.setViewName("restaurant/detailRestaurant");
		return mv;
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
			default: location = "그 외"; break;
		};
		
		return location;
	}
	
	@RequestMapping("uploadFile.do")
	public void uploadFile(HttpServletResponse response, HttpServletRequest request, @RequestParam("Filedata") MultipartFile file)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String realName = file.getOriginalFilename();
		String fileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + ((int)(Math.random() * 100000000) + 1) + "." + realName.substring(realName.lastIndexOf(".") + 1);
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\reviewImage";
		
		File folder = new File(savePath);
		
		String filePath = folder + "\\" + fileName;
		
		try {
			file.transferTo(new File(filePath));
			response.getWriter().write(fileName);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="uploadReview.do", method={RequestMethod.GET, RequestMethod.POST})
	public void uploadReview(HttpServletRequest request, Review review
			, @RequestParam(value="realname", required=false) String realname
			, @RequestParam(value="filename", required=false) String filename
			, @RequestParam(value="filesize", required=false) String filesize)
	{
		Member m = (Member)session.getAttribute("loginUser");
		review.setMemberId(m.getMemberId());
		review.setReviewRating((review.getReviewTasterating() + review.getReviewPricerating() + review.getReviewServicerating())/3);
		
		String[] realnameArray = realname.split(",");
		String[] filenameArray = filename.split(",");
		
		Image image = new Image();
		ArrayList<Image> imageList = new ArrayList<Image>();
		
		for(int i=0; i<realnameArray.length; i++) {
			image.setImageOriginName(realnameArray[i].toString());
			image.setImageNewName(filenameArray[i].toString());			
			imageList.add(image);
		}
		
		HashMap<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("review", review);
		parameters.put("imageList", imageList);
		
		int result = restaurantService.uploadReview(parameters);

		System.out.println(result);
	}
		
		
		
		
		
		
		
		

	
	
}
