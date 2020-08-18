package com.kh.fooco;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageTestController {
	
	
	@RequestMapping("memberManagement.do")
	public String memberManagement() {
		return "admin/memberManagement";
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
