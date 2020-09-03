package com.kh.fooco.theme.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.theme.model.dao.ThemeDao;
import com.kh.fooco.theme.model.vo.Theme;
import com.kh.fooco.theme.model.vo.ThemeBookmark;

@Service("themeService")
public class ThemeServiceImpl implements ThemeService{
	
	@Autowired
	 ThemeDao themeDao;

	@Override
	public ArrayList<Theme> selectListTheme() {
		return themeDao.selectListTheme();
	}
	@Override
	public void insertThemeLike(ThemeBookmark tb) {
		themeDao.insertThemeLike(tb);
		themeDao.updateThemeLike(tb.getThemeNo());
	}
	@Override
	public void deleteThemeLike(ThemeBookmark tb) {
		themeDao.deleteThemeLike(tb);
		themeDao.updateThemeLike(tb.getThemeNo());
	}
	@Override
	public int getThemeLike(ThemeBookmark tb) {
		return themeDao.getThemeLike(tb);
	}
	
}

