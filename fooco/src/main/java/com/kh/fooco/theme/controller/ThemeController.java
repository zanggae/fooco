package com.kh.fooco.theme.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.board.model.exception.BoardException;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.board.model.vo.InsertBoard;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.exception.ThemeException;
import com.kh.fooco.theme.model.service.ThemeService;
import com.kh.fooco.theme.model.vo.ThemeAdmin;

@Controller
public class ThemeController {
	@Autowired
	private ThemeService themeService;

	// 테마메인, 검색

	@RequestMapping("themeDetail.do")
	public String themeDetail() {
		return "theme/themeDetail";
	}

	@RequestMapping("themeMain.do")
	public ModelAndView themeMain(ModelAndView mv, HttpSession session, String ad,
			@RequestParam(value = "searchTheme", required = false) String searchTheme) {
System.out.println("나 나와>?"+ad);
		int themeWriter = 81;
      Member loginUser = (Member)session.getAttribute("loginUser");
      themeWriter = loginUser.getMemberId();   

		ArrayList<ThemeAdmin> theme = new ArrayList<ThemeAdmin>();

		if (searchTheme == null) {

			theme = themeService.selectListTheme();
			System.out.println("검색어 없을 때 조회" + theme);

		} else {
			theme = themeService.searchListTheme(searchTheme);
			System.out.println("검색어 있을 때 " + theme);
		}

		ArrayList<Integer> mytheme = themeService.mythemeList(themeWriter);

		mv.addObject("theme", theme);
		mv.addObject("searchTheme", searchTheme);
		mv.addObject("mytheme", mytheme);
		mv.setViewName("theme/themeMain");

		return mv;

	}

	// 즐겨찾기 추가
	@RequestMapping("insertBookmark.do")
	public ModelAndView insertBookmark(ModelAndView mv, String bookmarkId,HttpSession session, String search) {

		    Member loginUser = (Member)session.getAttribute("loginUser");
		    int themeWriter = loginUser.getMemberId();   
		    
		int result = themeService.insertBookmark(bookmarkId, themeWriter);

		if (result > 0) {
			mv.addObject("searchTheme",search);
			mv.setViewName("redirect:themeMain.do");
		} else {
			throw new ThemeException("즐겨찾기 등록 실패");
		}

		return mv;
	}

	// 즐겨찾기 취소
	@RequestMapping("heartClickCancle.do")
	public ModelAndView heartClickCancle(ModelAndView mv, String bookmarkId, HttpSession session, String search) {
	
      Member loginUser = (Member)session.getAttribute("loginUser");
      int  themeWriter = loginUser.getMemberId();   

		int result = themeService.deleteBookmark(bookmarkId, themeWriter);

		if (result > 0) {
			mv.addObject("searchTheme",search);
			mv.setViewName("redirect:themeMain.do");
		} else {
			throw new ThemeException("즐겨찾기 등록 실패");
		}

		return mv;
	}

	//테마 상세보기 
	@RequestMapping("themedetail.do")
	public ModelAndView themedetail(ModelAndView mv, ThemeAdmin theme, Restaurant res, HttpSession session) {

		ThemeAdmin ta = themeService.themedetail(theme);
		ArrayList<Restaurant> restaurant = themeService.themedetailR(theme);
		
		System.out.println("테마디테일 " + restaurant);
		mv.addObject("theme", ta);
		mv.addObject("restaurant1", restaurant);
		mv.setViewName("theme/themeDetail");

		return mv;
	}
}
