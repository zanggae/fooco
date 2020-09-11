package com.kh.fooco.restaurant.controller;

import static com.kh.fooco.common.Pagination.getPageInfo;
import static com.kh.fooco.common.Pagination.getPhotoPageInfo;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import com.kh.fooco.restaurant.model.vo.Bookmark;
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
									 , @RequestParam(value="filters", required=false, defaultValue="defaultFilter") String filters
									 , @RequestParam(value="categories", required=false, defaultValue="defaultCategory") String categories
									 , @RequestParam(value="page", required=false, defaultValue="1") Integer page
									 , @RequestParam(value="keyword", required=false, defaultValue="all") String keyword
									 , @RequestParam(value="locationId", required=false, defaultValue="0") Integer locationId
									 , @RequestParam(value="sortType", required=false, defaultValue="highrating") String sortType)
	{		
		int currentPage = page;
		ArrayList<Integer> changedCategories = new ArrayList<>();
		ArrayList<Integer> changedFilters = new ArrayList<>();
		
		if(!"defaultCategory".equals(categories)) {
			changedCategories = convertCategory(categories);			
		}
		
		if(!"defaultFilter".equals(filters)) {
			changedFilters = convertFilter(filters);
		}
	
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("keyword", keyword);
		searchParameter.put("sortType", sortType);
		searchParameter.put("locationId", locationId);
		searchParameter.put("filters", changedFilters);
		searchParameter.put("categories", changedCategories);
		
		int howManyRestaurant = restaurantService.getListCount(searchParameter);
		
		PageInfo pi = getPageInfo(currentPage, howManyRestaurant);
		
		ArrayList<Restaurant> list = new ArrayList<Restaurant>();
		list = restaurantService.getList(searchParameter, pi);
	
		String location = convertLocation(locationId);
		
		String changedKeyword = keyword;
		
		ArrayList<Restaurant> sameLocationBestRestaurant = getSameLocationRestaurant(searchParameter);		
		ArrayList<Restaurant> membershipRestaurant = getMembershipRestaurant(searchParameter);
		
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
		mv.addObject("categories", categories);
		mv.addObject("sortType", sortType);
		mv.addObject("sameLocationBestRestaurant", sameLocationBestRestaurant);
		mv.addObject("membershipRestaurant", membershipRestaurant);
		mv.setViewName("restaurant/searchedRestaurant");
		System.out.println(mv);
		return mv;
	}
	
	@RequestMapping("goDetailRestaurant.do")
	public ModelAndView goDetailRestaurant(ModelAndView mv, @RequestParam(value="resId") Integer resId
														  , @RequestParam(value="locationId", required=false, defaultValue="0") Integer locationId
														  , @RequestParam(value="sortType", required=false, defaultValue="latest") String sortType)
	{
		Res restaurant = restaurantService.getRestaurantDetail(resId);
		Info info = restaurantService.getRestaurantInfo(resId);
		
		int currentPage = 1;
		
		int howManyReview = restaurantService.getReviewListCount(resId);
		PageInfo pi = getPageInfo(currentPage, howManyReview);
		
		int upViewCount = restaurantService.upViewCount(resId);
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("resId", resId);
		searchParameter.put("locationId", locationId);
		searchParameter.put("sortType", sortType);
		
		ArrayList<Review> reviewList = new ArrayList<Review>();		
		reviewList = restaurantService.getReviewList(searchParameter, pi);
		
		int howManyReviewPhoto = restaurantService.getPhotoCount(resId);
		PageInfo ppi = getPhotoPageInfo(currentPage, howManyReviewPhoto);
		
		ArrayList<Restaurant> sameLocationBestRestaurant = getSameLocationRestaurant(searchParameter);		
		ArrayList<Restaurant> membershipRestaurant = getMembershipRestaurant(searchParameter);
		
		ArrayList<Image> photoList = new ArrayList<Image>();
		photoList = restaurantService.getPhotoList(searchParameter, ppi);
		
		mv.addObject("res", restaurant);
		mv.addObject("info", info);
		mv.addObject("reviewList", reviewList);
		mv.addObject("sameLocationBestRestaurant", sameLocationBestRestaurant);
		mv.addObject("membershipRestaurant", membershipRestaurant);
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
		mv.setViewName("restaurant/restaurantReview");
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
		
		ArrayList<Image> imageList = new ArrayList<Image>();
		
		for(int i=0; i<realnameArray.length; i++) {
			Image image = new Image();
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
	
	@RequestMapping(value="enrollBookmark.do", method=RequestMethod.POST)
	public void EnrollBookmark(HttpServletResponse response, Integer resId) throws IOException
	{
		
		PrintWriter out = response.getWriter();
		Member m = (Member)session.getAttribute("loginUser");

		int result = 0;
		
		if((Member)session.getAttribute("loginUser") == null) {
			// 로그인 확인
			out.append("notvalid");
			out.flush();
		}else {
			Bookmark bm = new Bookmark();
			bm.setMemberId(m.getMemberId());
			bm.setResId(resId);

			// 로그인 했으면 이미 북마크에 등록되어 있는지 확인
			int alreadyEnroll = restaurantService.alreadyEnroll(bm);
			
			if(alreadyEnroll > 0) {
				out.append("already");
				out.flush();				
			}else {				
				// 로그인도 했고, 북마크에 등록이 안되어 있는 사람만 등록하기
				result = restaurantService.enrollBookmark(bm);
					
				if(result >= 1) {
					out.append("success");
					out.flush();
				}else {
					out.append("FAIL");
					out.flush();
				}
			}
		}
		
		out.close();
	}
	
	@RequestMapping(value="upGood.do", method=RequestMethod.POST)
	public void UpGood(HttpServletResponse response, Integer reviewId) throws IOException
	{
		
		PrintWriter out = response.getWriter();
		Member m = (Member)session.getAttribute("loginUser");

		int result = 0;
		
		if((Member)session.getAttribute("loginUser") == null) {
			// 로그인 확인
			out.append("notvalid");
			out.flush();
		}else {			
			Review rv = new Review();
			rv.setMemberId(m.getMemberId());
			rv.setReviewId(reviewId);
			
			result = restaurantService.upGood(rv);
			
			if(result >= 1) {
				out.append("success");
				out.flush();
			}else {
				out.append("FAIL");
				out.flush();
			}
		}
		
		out.close();
	}
	
	@RequestMapping(value="followReviewer.do", method=RequestMethod.POST)
	public void followReviewer(HttpServletResponse response, Integer memberId) throws IOException
	{
		PrintWriter out = response.getWriter();
		Member m = (Member)session.getAttribute("loginUser");

		int result = 0;
		
		if((Member)session.getAttribute("loginUser") == null) {
			// 로그인 확인
			out.append("notvalid");
			out.flush();
		}else {
			Integer followerId = m.getMemberId();
			Integer followingId = memberId;
			
			if(memberId == m.getMemberId()) {
				// 로그인한 사람과 리뷰어가 동일 인물이면
				out.append("itsme");
				out.flush();
			}else {
				HashMap<String, Object> searchParameters = new HashMap<>();
				searchParameters.put("followerId", followerId);
				searchParameters.put("followingId", followingId);			

				// 로그인 했으면 이미 팔로우 관계인지 확인
				int alreadyFollowRelationship = restaurantService.alreadyFollowRelationship(searchParameters);
				
				if(alreadyFollowRelationship > 0) {
					out.append("already");
					out.flush();				
				}else {				
					// 로그인도 했고, 팔로우 관계가 아닌 사람만 팔로우
					result = restaurantService.followReviewer(searchParameters);
						
					if(result >= 1) {
						out.append("success");
						out.flush();
					}else {
						out.append("FAIL");
						out.flush();
					}
				}
			}
		}
		
		out.close();
	}
	
	@RequestMapping(value="certificateReview.do", method=RequestMethod.POST)
	public void certificateReview(HttpServletResponse response) throws IOException
	{
		PrintWriter out = response.getWriter();
		Member m = (Member)session.getAttribute("loginUser");
		
		if(m == null) {
			// 로그인 확인
			out.append("notvalid");
			out.flush();
		}else if("N".equals(m.getMemberStatus())) {
			// 리뷰쓰기가 제한된 회원
			out.append("notStatus");
			out.flush();
		}else {
			// 리뷰쓰기 허용
			out.append("success");
			out.flush();
		}
		
		out.close();
	}
	
	@RequestMapping(value="nextReview.do", method=RequestMethod.POST)
	public void nextReview(HttpServletResponse response
			, @RequestParam(value="resId", required=false) Integer resId
			, @RequestParam(value="sortType", required=false) String sortType
			, @RequestParam(value="page", required=false, defaultValue="1") Integer page) throws IOException
	{		
		PrintWriter out = response.getWriter();
		int currentPage = page;
		
		HashMap<String, Object> searchParameter = new HashMap<String, Object>();
		searchParameter.put("resId", resId);
		searchParameter.put("sortType", sortType);
		
		int howManyReview = restaurantService.getReviewListCount(resId);
		PageInfo pi = getPageInfo(currentPage, howManyReview);
		
		ArrayList<Review> reviewList = new ArrayList<Review>();		
		reviewList = restaurantService.getReviewList(searchParameter, pi);
		
		
		
	}
	
	@RequestMapping(value="deleteReview.do", method=RequestMethod.POST)
	public void deleteReview(HttpServletResponse response, Integer reviewId) throws IOException {
		
		PrintWriter out = response.getWriter();
		int result = 0;
		
		result = restaurantService.deleteReview(reviewId);
		
		if(result > 0) {
			out.append("success");
			out.flush();
		}else {
			out.append("fail");
			out.flush();
		}
		
		out.close();
	}

	public ArrayList<Integer> convertCategory(String category)
	{
		ArrayList<Integer> al = new ArrayList<>();
		
		String[] arr = category.split(",");
		
		for(int i = 0; i < arr.length; i ++) {
			al.add(Integer.parseInt(arr[i].toString()));					
		}
		
		return al;
	}
	
	public ArrayList<Integer> convertFilter(String filter)
	{
		ArrayList<Integer> al = new ArrayList<>();
		
		String[] arr = filter.split(",");
		
		for(int i = 0; i < arr.length; i ++) {
			al.add(Integer.parseInt(arr[i].toString()));					
		}
		
		return al;
	}
	
	public ArrayList<Restaurant> getSameLocationRestaurant(HashMap<String, Object> searchParameter) {
		
		ArrayList<Restaurant> al = new ArrayList<>();
		
		al = restaurantService.sameLocationBestRestaurant(searchParameter);
		
		return al; 
	}
	
	public ArrayList<Restaurant> getMembershipRestaurant(HashMap<String, Object> searchParameter) {
		
		ArrayList<Restaurant> al = new ArrayList<>();
		
		al = restaurantService.membershipRestaurant(searchParameter);
		
		return al; 
	}
		
}
