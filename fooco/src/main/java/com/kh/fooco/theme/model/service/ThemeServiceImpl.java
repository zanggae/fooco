package com.kh.fooco.theme.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.theme.model.dao.ThemeDao;

@Service("themeService")
public class ThemeServiceImpl implements ThemeService{
	
	@Autowired
	private ThemeDao themedao;
}
