package com.kh.fooco.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.exception.BoardException;
import com.kh.fooco.board.model.service.BoardService;
import com.kh.fooco.board.model.vo.Board;
import com.sun.javafx.sg.prism.NGShape.Mode;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	//0821 서비스센터 메인화면 
	@RequestMapping("serviceCenterMain.do")
		public String serviceCenterMain() {
			return "servicecenter/serviceCenterMain";
		}
	
	
	@RequestMapping("inquiry.do")
		public String inquiry() {
			return "servicecenter/inquiry";
		}
	

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
	
	
	//0822 FAQ 게시물 불러오기
	@RequestMapping("FAQ.do")
	public ModelAndView FAQList(ModelAndView mv) {
		ArrayList<Board> FAQ = boardService.selectListFAQ();
		System.out.println("FAQ_DB 조회 후 화면에 뿌리기 전 : " + FAQ);
		
		//비어있지 않으면 FAQ 글들이 조회된 것
		if(!FAQ.isEmpty()) {
			mv.addObject("FAQ", FAQ);
			mv.setViewName("servicecenter/FAQ");
		}else {
			throw new BoardException("FAQ 목록 보기 실패!");
		}
		
		return mv;
		
	}
	//0824 공지사항 상세내용 불러오기
	@RequestMapping("noticeDetail.do")
	public String noticeDetail(Model model, int boardId, Board b) {
		
		b = boardService.selectNoticeDetail(boardId);
		
		System.out.println("화면에 뿌려주기 전 조회된 상세 공지사항 : " + b);
		
		if(b != null) {
			model.addAttribute("board", b);
		}else {
			throw new BoardException("공지사항 상세 보기 실패!");
		}
		return "servicecenter/noticeDetail";
	}
	
	
	@RequestMapping("summernote.do")
	public String summernote() {
		return "servicecenter/summernote";
	}
}