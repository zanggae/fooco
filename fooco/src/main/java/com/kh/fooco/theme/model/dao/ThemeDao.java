package com.kh.fooco.theme.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.theme.model.vo.Theme;
import com.kh.fooco.theme.model.vo.ThemeBookmark;


@Repository("themeDao")
public class ThemeDao {
	@Autowired
	 SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<Theme> selectListTheme() {
		return(ArrayList)sqlSessionTemplate.selectList("themeMapper.selectListTheme");
	}
	

	public void updateThemeLike(int themeId) {
		sqlSessionTemplate.update("themeMapper.updateThemeLike",themeId);
	}
	public void insertThemeLike(ThemeBookmark tb) {
		 sqlSessionTemplate.insert("themeMapper.insertThemeLike",tb);
		
	}
	public void deleteThemeLike(ThemeBookmark tb) {
		sqlSessionTemplate.delete("themeMapper.deleteThemeLike",tb);
	}
	public int getThemeLike(ThemeBookmark tb) {
		
		return sqlSessionTemplate.selectOne("themeMapper.getThemeLike",tb);
	}


	public ArrayList<Theme> searchListTheme(String searchTheme) {
		return (ArrayList)sqlSessionTemplate.selectList("themeMapper.searchListTheme",searchTheme);
	}


	
}


