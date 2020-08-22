package com.kh.fooco.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("main.do")
	public String goMain() {
		return "common/main";
	}

}
