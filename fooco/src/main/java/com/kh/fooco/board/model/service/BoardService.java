package com.kh.fooco.board.model.service;

import java.util.ArrayList;

import com.kh.fooco.board.model.vo.Board;

public interface BoardService {


	ArrayList<Board> selectListNotice();

	ArrayList<Board> selectListFAQ();

	Board selectNoticeDetail(int boardId);

	int inquiryInsert(Board b);

	
	
}
