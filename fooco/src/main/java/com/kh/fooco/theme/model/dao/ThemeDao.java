package com.kh.fooco.theme.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;
import com.kh.fooco.theme.model.vo.ThemeBookmark;


@Repository("themeDao")
public class ThemeDao {
	@Autowired
	 SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<ThemeAdmin> selectListTheme() {
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


	public ArrayList<ThemeAdmin> searchListTheme(String searchTheme) {
		return (ArrayList)sqlSessionTemplate.selectList("themeMapper.searchListTheme",searchTheme);
	}


	public ArrayList<Integer> mythemeList(int themeWriter) {
		return  (ArrayList)sqlSessionTemplate.selectList("themeMapper.mythemeList",themeWriter);
	}


	public int insertBookmark(String bookmarkId, int themeWriter) {
	
		HashMap<String, Object> updateParameter = new HashMap<String, Object>();
		updateParameter.put("bookmarkId", bookmarkId);
		updateParameter.put("themeWriter", themeWriter);
		
		return sqlSessionTemplate.insert("themeMapper.insertBookmark",updateParameter);
	}


	public int deleteBookmark(String bookmarkId, int themeWriter) {
		
		HashMap<String, Object> updateParameter = new HashMap<String, Object>();
		updateParameter.put("bookmarkId", bookmarkId);
		updateParameter.put("themeWriter", themeWriter);
		return sqlSessionTemplate.delete("themeMapper.deleteBookmark",updateParameter);
	}


	public ThemeAdmin themedetail(ThemeAdmin theme) {
		return sqlSessionTemplate.selectOne("themeMapper.themedetail",theme);
	}


	public ArrayList<Restaurant> themedetailR(ThemeAdmin theme) {
		return (ArrayList)sqlSessionTemplate.selectList("themeMapper.themedetailR",theme);
	}




	public int updateCount(ThemeAdmin theme) {
		return sqlSessionTemplate.update("themeMapper.updateCount",theme);
		
	}

	public List<ThemeAdmin> getMainTheme() {
		return (ArrayList)sqlSessionTemplate.selectList("themeMapper.getMainTheme");
	}

}