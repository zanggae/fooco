package com.kh.fooco.theme.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.dao.ThemeDao;
import com.kh.fooco.theme.model.vo.ThemeAdmin;
import com.kh.fooco.theme.model.vo.ThemeBookmark;

@Service("themeService")
public class ThemeServiceImpl implements ThemeService{
	
	@Autowired
	 ThemeDao themeDao;

	@Override
	public ArrayList<ThemeAdmin> selectListTheme() {
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

	@Override
	public ArrayList<ThemeAdmin> searchListTheme(String searchTheme) {
		return themeDao.searchListTheme(searchTheme);
	}

	@Override
	public ArrayList<Integer> mythemeList(int themeWriter) {
		return themeDao.mythemeList(themeWriter);
	}

	@Override
	public int insertBookmark(String bookmarkId, int themeWriter) {
		return themeDao.insertBookmark(bookmarkId,themeWriter);
	}

	@Override
	public int deleteBookmark(String bookmarkId, int themeWriter) {
		return themeDao.deleteBookmark(bookmarkId,themeWriter);
	}

	@Override
	public ThemeAdmin themedetail(ThemeAdmin theme) {
		themeDao.updateCount(theme);
		return themeDao.themedetail(theme);
	}

	@Override
	public ArrayList<Restaurant> themedetailR(ThemeAdmin theme) {
		return themeDao.themedetailR(theme);
	}

	



}

