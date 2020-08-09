package com.kh.fooco;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageTestController {
	@RequestMapping("testAdmin.do")
	public String dashboardTest() {
		return "admin/dashboard";
	}
}
