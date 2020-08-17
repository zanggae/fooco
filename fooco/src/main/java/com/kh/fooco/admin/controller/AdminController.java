package com.kh.fooco.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String dashboard() {
		
		// 방문자수 조회 해온 결과를 담아주자
		VisitorCount vc = adminService.selectOneVisitorCount();
//		System.out.println(vc);
		
		// 회원현황을 조회해온 결과를 담아주자
		MembershipStatus membershipStatus = adminService.selectOneMembershipStatus();
//		System.out.println(membershipStatus);
		
		// 맴버십 정보를 조회해온 결과를 담아주자
		MembershipCount membershipCount = adminService.selectOneMembershipCount();
		System.out.println(membershipCount);
		
		return "admin/dashboard";
	}
}
