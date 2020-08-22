package com.kh.fooco.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.exception.BoardException;
import com.kh.fooco.board.model.service.BoardService;
import com.kh.fooco.board.model.vo.Board;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	//0821 공지사항 게시물 불러오기 (notice.jsp)
	@RequestMapping("notice.do")
	public ModelAndView noticeList(ModelAndView mv) {
		ArrayList<Board> notice = boardService.selectListNotice();
		System.out.println("DB조회 후 화면에 뿌려지기 전 : " + notice);
		
		//비어있지 않으면 공지 글들이 조회된 것 
		if(!notice.isEmpty()) {
			mv.addObject("notice",notice);	
			mv.setViewName("servicecenter/notice");
		}else {
			throw new BoardException("공지사항 목록 보기 실패 !");
		}
		return mv;
	}
	
	@RequestMapping("FAQ.do")
	public String FAQ() {
		return "servicecenter/FAQ";
		
	}


}