package com.kh.fooco.restaurant.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;

@Repository("restaurantDao")
public class RestaurantDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	public int getListCount(HashMap<String, Object> searchParameter) {
		return sqlSessionTemplate.selectOne("restaurantMapper.getListCount", searchParameter);
	}


	public ArrayList<Restaurant> getList(HashMap<String, Object> searchParameter, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("restaurantMapper.getList", searchParameter, rowBounds);
	}


	public Res getRestaurantDetail(Integer resId) {
		return sqlSessionTemplate.selectOne("restaurantMapper.getRestaurantDetail", resId);
	}


	public Info getRestaurantInfo(Integer resId) {
		return sqlSessionTemplate.selectOne("restaurantMapper.getRestaurantInfo", resId);

	}


	public int getReviewListCount(Integer resId) {
		return sqlSessionTemplate.selectOne("restaurantMapper.getReviewListCount", resId);
	}


	public ArrayList<Review> getReviewList(HashMap<String, Object> searchParameter, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("restaurantMapper.getReviewList", searchParameter, rowBounds);
	}
	
}
