package com.kh.fooco.restaurant.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("restaurantDao")
public class RestaurantDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	public int getListCount(HashMap<String, Object> searchParameter) {
		return sqlSessionTemplate.selectOne("restaurantMapper.getListCount", searchParameter);
	}
	
}
