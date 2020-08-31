package com.kh.fooco.theme.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("themeDao")
public class ThemeDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
}
