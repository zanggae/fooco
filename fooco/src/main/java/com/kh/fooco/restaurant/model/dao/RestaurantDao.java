package com.kh.fooco.restaurant.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.restaurant.model.vo.Review;

@Repository("restaurantDao")
public class RestaurantDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<Review> selectReviewList(int resId) {
		return (ArrayList)sqlSessionTemplate.selectList("restaurantMapper.selectReviewList", resId);
	}

	public int getListCount(String location, String keyword) {
		return sqlSessionTemplate.selectOne("restaurantMapper.getListCount");
	}
	
}
