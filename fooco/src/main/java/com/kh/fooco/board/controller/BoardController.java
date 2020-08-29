package com.kh.fooco.board.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
   
   //0826 문의 등록 완료 페이지 
   @RequestMapping("inquiryRegistrationFin.do")
      public String inquiryRegistrationFin() {
      return "servicecenter/inquiryRegistrationFin";
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
   

   //1:1 문의 등록 
   @RequestMapping(value="inquiryInsert.do", method=RequestMethod.POST)
   public String inquiryInsert(Board b, HttpServletRequest request, @RequestParam(name="/uploadSummernoteImageFile",required=false)
   MultipartFile file) {
      
      System.out.println("아오 : " + b);
      if(!file.getOriginalFilename().contentEquals("")) {
         String imageNewName = saveFile(file, request);
         
         b.setImageOriginName(file.getOriginalFilename());
         b.setImageNewName(imageNewName);
      }   
         
         int result = boardService.inquiryInsert(b);
         
         
         
      
      if(result > 0) {
         return "redirect:inquiryRegistrationFin.do";
      }
      else {
         throw new BoardException("1:1문의 등록 실패 !");
      }
      
   }

   //파일이 저장될 경로를 설정하는 메소드

      private String saveFile(MultipartFile file, HttpServletRequest request) {
         
         String root = request.getSession().getServletContext().getRealPath("resources");
         
         String savePath = root + "\\boarduploadFiles";
         
         File folder = new File(savePath);
         
         if(!folder.exists()) {      // webapp아래에 있는 resources 폴더 아래에 
                              // nuploadFiles가 없어서 File객체를 찾을 수 없다면 
            folder.mkdirs();      
            
         }
         
         
         SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
         String imageOriginName = file.getOriginalFilename();
         String imageNewName = sdf.format(new java.sql.Date(System.currentTimeMillis()))
                  + "." + imageOriginName.substring(imageOriginName.lastIndexOf(".")+1);
         
         String imageFilepath = folder + "\\" + imageNewName;
         
         
         
         
         try {
            file.transferTo(new File(imageFilepath));
            // 이 상태로는 파일 업로드가 되지 않는다.
            // 왜냐면 파일 제한크기에 대한 설정을 주지 않았기 때문이다.
            // root-context.xml에 업로드 제한 파일 크기를 지정해 주자.
            
         } catch (Exception e) {
            e.printStackTrace();
         }
         
         
         return imageNewName;
         
      }
      


   





}