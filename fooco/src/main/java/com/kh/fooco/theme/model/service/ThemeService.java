package com.kh.fooco.theme.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;
import com.kh.fooco.theme.model.vo.ThemeBookmark;

public interface ThemeService {


	int getThemeLike(ThemeBookmark tb);


	void deleteThemeLike(ThemeBookmark tb);


	void insertThemeLike(ThemeBookmark tb);


	ArrayList<ThemeAdmin> selectListTheme();


	ArrayList<ThemeAdmin> searchListTheme(String searchTheme);


	ArrayList<Integer> mythemeList(int themeWriter);


	int insertBookmark(String bookmarkId, int themeWriter);


	int deleteBookmark(String bookmarkId, int themeWriter);


	ThemeAdmin themedetail(ThemeAdmin theme);


	ArrayList<Restaurant> themedetailR(ThemeAdmin theme);

	/* 김경남: 메인의 6개 테마 가져오기 */
	List<ThemeAdmin> getMainTheme();

}
