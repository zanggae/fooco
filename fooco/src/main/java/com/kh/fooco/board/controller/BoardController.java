package com.kh.fooco.board.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.google.gson.JsonObject;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.exception.BoardException;
import com.kh.fooco.board.model.service.BoardService;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.board.model.vo.InsertBoard;
import com.kh.fooco.member.model.vo.Member;
import com.sun.javafx.sg.prism.NGShape.Mode;

@Controller
public class BoardController {
   
   @Autowired
   private BoardService boardService;
   HttpSession session;
   
   //서비스센터 메인화면 
   @RequestMapping("serviceCenterMain.do")
      public String serviceCenterMain() {
         return "servicecenter/serviceCenterMain";
      }
   
   //문의 등록 완료 페이지 
   @RequestMapping("inquiryRegistrationFin.do")
      public String inquiryRegistrationFin() {
      return "servicecenter/inquiryRegistrationFin";
   }
   //문의등록 페이지
   @RequestMapping("inquiry.do")
      public String inquiry() {
         return "servicecenter/inquiry";
      }
   
   @RequestMapping("myPageInquiryModify.do")
   public String myPageInquiryModify() {
	   return "mypage/myPageInquiryModify";
   }
   

   //공지사항 게시물 불러오기
   @RequestMapping("notice.do")
   public ModelAndView noticeList(ModelAndView mv) {
      ArrayList<Board> notice = boardService.selectListNotice();
      System.out.println("DB조회 후 화면에 뿌려지기 전 : " + notice);
      
      //비어있지 않으면 공지 글들이 조회된 것 
      
         mv.addObject("notice",notice);   
         mv.setViewName("servicecenter/notice");
     
      return mv;
   
   }
   
   //FAQ 게시물 불러오기
   @RequestMapping("FAQ.do")
   public ModelAndView FAQList(ModelAndView mv) {
      ArrayList<Board> FAQ = boardService.selectListFAQ();
      System.out.println("FAQ_DB 조회 후 화면에 뿌리기 전 : " + FAQ);
      
         mv.addObject("FAQ", FAQ);
         mv.setViewName("servicecenter/FAQ");
    
      return mv;
      
   }
   
   //0824 공지사항 상세내용 불러오기
   @RequestMapping("noticeDetail.do")
   public String noticeDetail(Model model, int boardId, Board b) {
      
      b = boardService.selectNoticeDetail(boardId);
      
      System.out.println("화면에 뿌려주기 전 조회된 상세 공지사항 : " + b);
      
   
         model.addAttribute("board", b);
     
      return "servicecenter/noticeDetail";
   }
   

   //1:1 문의 등록
   @RequestMapping(value="inquiryInsert.do",method= {RequestMethod.GET,RequestMethod.POST})

   public String inquiryInsert(InsertBoard b, HttpSession session ) {
	 
	 int loginId =  ((Member) session.getAttribute("loginUser")).getMemberId();
	   b.setBoardWriter(loginId);
	   System.out.println(b);
	   
	   int result = boardService.inquiryInsert(b);
	
      if(result > 0 ) {
         return "redirect:inquiryRegistrationFin.do";
      }
      else {
         throw new BoardException("1:1문의 등록 실패 !");
      }
      
   }

   


   





}