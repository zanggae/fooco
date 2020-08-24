package com.kh.fooco.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.board.model.vo.Board;

@Repository("boardDao")
public class BoardDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	public ArrayList<Board> selectListNotice() {
		
		return (ArrayList)sqlSessionTemplate.selectList("boardMapper.selectListNotice");
	}


	public ArrayList<Board> selectListFAQ() {

		return (ArrayList)sqlSessionTemplate.selectList("boardMapper.selectListFAQ");
	}




	public Board selectNoticeDetail(int boardId) {
		System.out.println("뭐지" + boardId);
		return sqlSessionTemplate.selectOne("boardMapper.selectNoticeDetail",boardId);
	}
	
}
