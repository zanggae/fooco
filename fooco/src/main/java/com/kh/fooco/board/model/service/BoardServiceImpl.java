package com.kh.fooco.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.board.model.dao.BoardDao;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.board.model.vo.InsertBoard;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao boardDao;

	
	@Override
	public ArrayList<Board> selectListNotice() {
		
		return boardDao.selectListNotice();
	}

	@Override
	public ArrayList<Board> selectListFAQ() {

		return boardDao.selectListFAQ();
	}

	@Override
	public Board selectNoticeDetail(int boardId) {
				boardDao.updateCount(boardId);
		return boardDao.selectNoticeDetail(boardId);
	}

	@Override
	public int inquiryInsert(InsertBoard b) {
		return boardDao.inquiryInsert(b);
	}



	
	

	
}
