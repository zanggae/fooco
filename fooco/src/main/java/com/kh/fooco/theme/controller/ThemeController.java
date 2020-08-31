package com.kh.fooco.theme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fooco.theme.model.service.ThemeService;


public class ThemeController {
	@Autowired
	private ThemeService themeService;
	
	
	@RequestMapping("theme.do")
	public String theme() {
		return"theme/themeSearch";
	}
	
}
