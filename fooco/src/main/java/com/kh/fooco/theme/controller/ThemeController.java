package com.kh.fooco.theme.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.fooco.board.model.exception.BoardException;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.theme.model.exception.ThemeException;
import com.kh.fooco.theme.model.service.ThemeService;
import com.kh.fooco.theme.model.vo.Theme;
import com.kh.fooco.theme.model.vo.ThemeBookmark;
import com.kh.fooco.theme.model.vo.ThemeSearch;

@Controller
public class ThemeController {
	@Autowired
	private ThemeService themeService;
	
	//테마메인, 검색
	
	@RequestMapping("themeMain.do")
	public ModelAndView themeMain( ModelAndView mv,
			@RequestParam(value="searchTheme", required=false) String searchTheme) {
			
		ArrayList<Theme> theme = new ArrayList<Theme>();
		
		
		if(searchTheme == null) {
			
			theme = themeService.selectListTheme();
			System.out.println("검색어 없을 때 조회" + theme);
			
		}else {
			theme = themeService.searchListTheme(searchTheme);
			System.out.println("검색어 있을 때 " + theme);
		}
		
			mv.addObject("theme",theme);
			mv.addObject("searchTheme",searchTheme);
			mv.setViewName("theme/themeMain");
			
		
		return mv;
		
		
	}
			
	
	
	 @RequestMapping("themeDetail.do")
	   public String themeDetail() {
		   return "theme/themeDetail";
	   }
	
	

	
	
	
	
	/*즐겨찾기 포함..*/
//	private int themeId;
	
	/*
	 * @RequestMapping(value="themeMain.do",method=RequestMethod.GET) public
	 * ModelAndView themeMain(ModelAndView mv, Model model, HttpServletRequest
	 * httpRequest) {
	 * 
	 * ArrayList<Theme> theme = themeService.selectListTheme();
	 * 
	 * int userid = ((Member)
	 * httpRequest.getSession().getAttribute("loginUser")).getMemberId();
	 * System.out.println("Theme_DB조회 후 화면에 뿌리기 전 : " + theme);
	 * 
	 * //테마 즐겨찾기 ThemeBookmark tb = new ThemeBookmark(); tb.setMemberNo(themeId);
	 * tb.setMemberNo(userid);
	 * 
	 * int themeBookmark = themeService.getThemeLike(tb);
	 * System.out.println(themeBookmark);
	 * 
	 * model.addAttribute("heart",themeBookmark); //비어있지 않으면 Theme가 조회된 것
	 * if(!theme.isEmpty()) { mv.addObject("theme",theme);
	 * 
	 * mv.setViewName("theme/themeMain"); }else { throw new
	 * ThemeException("Theme 목록 보기 실패!"); } return mv; }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/heart", method = RequestMethod.POST,produces =
	 * "application/json" ) public int heart(HttpServletRequest httpRequest) {
	 * 
	 * int heart = Integer.parseInt(httpRequest.getParameter("heart")); int themeId
	 * = Integer.parseInt(httpRequest.getParameter("themeId")); int userid =
	 * ((Member) httpRequest.getSession().getAttribute("loginUser")).getMemberId();
	 * 
	 * 
	 * ThemeBookmark tb = new ThemeBookmark();
	 * 
	 * tb.setMemberNo(userid); tb.setThemeNo(themeId);
	 * 
	 * System.out.println(heart);
	 * 
	 * if(heart >= 1) { themeService.deleteThemeLike(tb); heart = 0; }else {
	 * themeService.insertThemeLike(tb); heart=1; } return heart; }
	 */
}
	
	
			 

	



