package com.kh.fooco.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.fooco.admin.model.exception.AdminException;
import com.kh.fooco.admin.model.service.AdminService;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;

import static com.kh.fooco.common.Pagination.getPageInfo;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	// 08.17 dashboard.jsp로 이동시 정보 불러와서 이동하기
	@RequestMapping("dashboard.do")
	public ModelAndView dashboard(ModelAndView mv) {
		
		// 방문자수 조회 해온 결과를 담아주자
		VisitorCount vc = adminService.selectOneVisitorCount();
		System.out.println(vc);
		
		// 회원현황을 조회해온 결과를 담아주자
		MembershipStatus membershipStatus = adminService.selectOneMembershipStatus();
		System.out.println(membershipStatus);
		
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
	
	// 방문자수 카운트 해주는 ajax
	@RequestMapping("visitCount.do")
	public void visitCount(HttpServletResponse response) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
		
		VisitorCount vc = adminService.selectOneVisitorCount();
//		System.out.println(vc);
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
	
	// 회원관리 페이지로 이동
	@RequestMapping("memberManagement.do")
	public ModelAndView memberManagement(ModelAndView mv,
			@RequestParam(value="page", required=false) Integer page,
			@RequestParam(value="searchMemberTextbox", required=false) String searchMemberTextbox) {		
		// 페이징 관련 처리
				int currentPage = 1;
				if(page != null) {
					currentPage = page;
				}
				ArrayList<Member> m = new ArrayList<Member>();
				PageInfo pi = new PageInfo();
				int memberCount = 0;
			if(searchMemberTextbox == null) {
				// 회원수를 조회
				MembershipStatus membershipStatus = adminService.selectOneMembershipStatus();
				memberCount = membershipStatus.getTotalCount();
				
				pi = getPageInfo(currentPage, memberCount);
				
				// 회원 리스트 조회
				m = adminService.selectlistMember(pi);
//				System.out.println(m);				
			}else {
				// 검색 된 회원 수 조회
				memberCount = adminService.memberNameCount(searchMemberTextbox);
//				System.out.println(memberCount);
				pi = getPageInfo(currentPage, memberCount);
				
				// 회원 리스트 조회
				m = adminService.searchlistMember(pi, searchMemberTextbox);
			}
		if(m != null) {
			mv.addObject("memberList", m);
			mv.addObject("pi", pi);
			mv.addObject("memberCount", memberCount);
			mv.addObject("searchName", searchMemberTextbox);
			mv.setViewName("admin/memberManagement");
		}else {
			throw new AdminException("맴버 리스트 조회 실패!");
		}
		return mv;
	}
	
	// 회원권한
	@RequestMapping("membershipSuspension.do")
	public ModelAndView membershipSuspension(ModelAndView mv, String memberId) {
//		System.out.println(memberId);
		// 회원 상태를 조회해 오기위한 작업
		Member m = adminService.selectOneMember(memberId);
		int result = 0;
		
		if(m.getMemberStatus().equals("Y")) {
			// 회원 상태가 Y이면 N으로 변경
			result = adminService.updateMembershipSuspension(memberId);
		}else {
			// 회원 상태가 N이면 Y로 변경
			result = adminService.updateMembershipSuspension2(memberId);
		}
		
		if(result >0) {
			mv.setViewName("redirect:memberManagement.do");
		}else {
			throw new AdminException("권한 박탈 실패!");
		}
		
		return mv;
	}
	
	// 리뷰권한
	@RequestMapping("reviewProhibition.do")
		public ModelAndView reviewProhibition(ModelAndView mv, String memberId) {
		System.out.println(memberId);
		// 회원번호로 맴버 조회
		Member m = adminService.selectOneMember(memberId);
		int result = 0;
					
		if(m.getReviewStatus().equals("Y")) {
			// 회원 리뷰 상태가 Y이면 N으로 변경
			result = adminService.updateMemberReviewStatus(memberId);
		}else {
			// 회원 리뷰 상태가 N이면 Y로 변경
			result = adminService.updateMemberReviewStatus2(memberId);
		}
		
		if(result >0) {
			mv.setViewName("redirect:memberManagement.do");
		}else {
			throw new AdminException("리뷰 권한 박탈 실패!");
		}
		
		return mv;
	}
		
		
	@RequestMapping("restaurantEdit.do")
	public String restaurantEdit() {
		return "admin/restaurantEdit";
	}
	
	@RequestMapping("restaurantRegistration.do")
	public String restaurantRegistration() {
		return "admin/restaurantRegistration";
	}
	
	@RequestMapping("inquiryEdit.do")
	public String inquiryEdit() {
		return "admin/inquiryEdit";
	}
	
	@RequestMapping("boardEdit.do")
	public String boardEdit() {
		return "admin/boardEdit";
	}
	
	@RequestMapping("boardRegistration.do")
	public String boardRegistration() {
		return "admin/boardRegistration";
	}
	
	@RequestMapping("themeEdit.do")
	public String themeEdit() {
		return "admin/themeEdit";
	}
}
