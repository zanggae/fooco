package com.kh.fooco.theme.model.service;

import java.util.ArrayList;

import com.kh.fooco.theme.model.vo.Theme;
import com.kh.fooco.theme.model.vo.ThemeBookmark;

public interface ThemeService {

	ArrayList<Theme> selectListTheme();


	int getThemeLike(ThemeBookmark tb);


	void deleteThemeLike(ThemeBookmark tb);


	void insertThemeLike(ThemeBookmark tb);

}
