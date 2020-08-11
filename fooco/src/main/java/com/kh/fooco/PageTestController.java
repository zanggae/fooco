package com.kh.fooco;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageTestController {
	@RequestMapping("dashboard.do")
	public String dashboardTest() {
		return "admin/dashboard";
	}
	
	@RequestMapping("memberManagement.do")
	public String dashboardTest1() {
		return "admin/memberManagement";
	}
}
