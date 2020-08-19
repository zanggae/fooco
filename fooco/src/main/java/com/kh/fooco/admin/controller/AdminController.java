package com.kh.fooco.admin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.fooco.admin.model.exception.AdminException;
import com.kh.fooco.admin.model.service.AdminService;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;



@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	// 08.17 dashboard.jsp로 이동시 정보 불러와서 이동하기
	@RequestMapping("dashboard.do")
	public ModelAndView dashboard(ModelAndView mv) {
		
		// 방문자수 조회 해온 결과를 담아주자
		VisitorCount vc = adminService.selectOneVisitorCount();
//		System.out.println(vc);
		
		// 회원현황을 조회해온 결과를 담아주자
		MembershipStatus membershipStatus = adminService.selectOneMembershipStatus();
//		System.out.println(membershipStatus);
		
		// 맴버십 정보를 조회해온 결과를 담아주자
		MembershipCount membershipCount = adminService.selectOneMembershipCount();
//		System.out.println(membershipCount);
		
		if(vc != null && membershipStatus != null) {
			mv.addObject("vc", vc);
			mv.addObject("membershipStatus", membershipStatus);
			mv.addObject("membershipCount",membershipCount);
			mv.setViewName("admin/dashboard");
		}else {
			throw new AdminException("대쉬보드 조회 실패!");
		}
		return mv;
	}
	
	@RequestMapping("visitCount.do")
	public void visitCount(HttpServletResponse response) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
		
		VisitorCount vc = adminService.selectOneVisitorCount();
		System.out.println(vc);
		if(vc == null) {
			int result = adminService.insertVisitorCount();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson("성공", response.getWriter());
		}else {
			int result = adminService.updateVisitorCount();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson("성공", response.getWriter());		
		}		
	}
}
