package com.kh.fooco.theme.model.service;

import java.util.ArrayList;

import com.kh.fooco.theme.model.vo.Theme;
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

}
