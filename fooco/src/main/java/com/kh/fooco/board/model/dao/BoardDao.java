package com.kh.fooco.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.board.model.vo.InsertBoard;

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
		return sqlSessionTemplate.selectOne("boardMapper.selectNoticeDetail",boardId);
	}



	public int inquiryInsert(InsertBoard b) {
		
		return sqlSessionTemplate.insert("boardMapper.inquiryInsert",b);
	}


	
}
