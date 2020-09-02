package com.kh.fooco.admin.controller;

import static com.kh.fooco.common.Pagination.getPageInfo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.fooco.admin.model.exception.AdminException;
import com.kh.fooco.admin.model.service.AdminService;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.Search;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.exception.BoardException;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	//메일전송을 위한 Autowired
    @Autowired
    private JavaMailSender mailSender;
    
    
	// 08.17 dashboard.jsp로 이동시 정보 불러와서 이동하기
	@RequestMapping("dashboard.do")
	public ModelAndView dashboard(ModelAndView mv) {
		
		// 방문자수 조회 해온 결과를 담아주자
		VisitorCount vc = adminService.selectOneVisitorCount();
//		System.out.println(vc);
		
		// 회원현황을 조회해온 결과를 담아주자
		MembershipStatus membershipStatus = adminService.selectOneMembershipStatus();
//		System.out.println(membershipStatus);
		
		// 맴버십 정보를 조회해온 결과를 담아주자
		MembershipCount membershipCount = adminService.selectOneMembershipCount();
//		System.out.println(membershipCount);
		
		// 미답변 문의 조회
		ArrayList<Board> inquiry = adminService.selectListInquiryD();
//		System.out.println(inquiry);
		
			mv.addObject("inquiry", inquiry);
			mv.addObject("vc", vc);
			mv.addObject("membershipStatus", membershipStatus);
			mv.addObject("membershipCount",membershipCount);
			mv.setViewName("admin/dashboard");
		
		return mv;
	}
	
	// 방문자수 카운트 해주는 ajax
	@RequestMapping("visitCount.do")
	public void visitCount(HttpServletResponse response) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
		
		VisitorCount vc = adminService.selectOneVisitorCount();
//		System.out.println(vc);
		if(vc == null) {
			String maxCount = adminService.selectvisitorMaxCount();
			
			System.out.println("maxCount" + maxCount);
			if(maxCount == null) {
				int result = adminService.insertVisitorCount1();
			}else {
				int result = adminService.insertVisitorCount();				
			}
			
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson("성공", response.getWriter());
		}else {
			int result = adminService.updateVisitorCount();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson("성공", response.getWriter());		
		}		
	}
	
	
	// 회원관리 페이지로 이동
	@RequestMapping("memberManagement.do")
	public ModelAndView memberManagement(ModelAndView mv,
			@RequestParam(value="page", required=false) Integer page,
			@RequestParam(value="searchMemberTextbox", required=false) String searchMemberTextbox) {		
		// 페이징 관련 처리
				int currentPage = 1;
				if(page != null) {
					currentPage = page;
				}
				ArrayList<Member> m = new ArrayList<Member>();
				PageInfo pi = new PageInfo();
				int memberCount = 0;
			if(searchMemberTextbox == null) {
				// 회원수를 조회
				MembershipStatus membershipStatus = adminService.selectOneMembershipStatus();
				if(membershipStatus != null) {
					memberCount = membershipStatus.getTotalCount();					
				}
				System.out.println(memberCount);
					pi = getPageInfo(currentPage, memberCount);					
				
				
				// 회원 리스트 조회
				m = adminService.selectlistMember(pi);
//				System.out.println(m);				
			}else {
				// 검색 된 회원 수 조회
				memberCount = adminService.memberNameCount(searchMemberTextbox);
//				System.out.println(memberCount);
				pi = getPageInfo(currentPage, memberCount);
				
				// 회원 리스트 조회
				m = adminService.searchlistMember(pi, searchMemberTextbox);
			}
		
			mv.addObject("memberList", m);
			mv.addObject("pi", pi);
			mv.addObject("memberCount", memberCount);
			mv.addObject("searchName", searchMemberTextbox);
			mv.setViewName("admin/memberManagement");
		
		return mv;
	}
	
	// 회원권한
	@RequestMapping("membershipSuspension.do")
	public ModelAndView membershipSuspension(ModelAndView mv, String memberId) {
//		System.out.println(memberId);
		// 회원 상태를 조회해 오기위한 작업
		Member m = adminService.selectOneMember(memberId);
		int result = 0;
		
		if(m.getMemberStatus().equals("Y")) {
			// 회원 상태가 Y이면 N으로 변경
			result = adminService.updateMembershipSuspension(memberId);
		}else {
			// 회원 상태가 N이면 Y로 변경
			result = adminService.updateMembershipSuspension2(memberId);
		}
		
		if(result >0) {
			mv.setViewName("redirect:memberManagement.do");
		}else {
			throw new AdminException("권한 박탈 실패!");
		}
		
		return mv;
	}
	
	// 회원관리에서 관리버튼 눌렀을때 해당 회원의 정보를 modal에 넣어주는 ajax
	@RequestMapping("memberEditModal.do")
	public void memberEditModal(HttpServletResponse response, String memberId) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
		Member memberInfo = adminService.selectOneMember(memberId);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(memberInfo , response.getWriter());
		
	}
	
	// 리뷰권한
	@RequestMapping("reviewProhibition.do")
	public ModelAndView reviewProhibition(ModelAndView mv, String memberId) {
		System.out.println(memberId);
		// 회원번호로 맴버 조회
		Member m = adminService.selectOneMember(memberId);
		int result = 0;
					
		if(m.getReviewStatus().equals("Y")) {
			// 회원 리뷰 상태가 Y이면 N으로 변경
			result = adminService.updateMemberReviewStatus(memberId);
		}else {
			// 회원 리뷰 상태가 N이면 Y로 변경
			result = adminService.updateMemberReviewStatus2(memberId);
		}
		
		if(result >0) {
			mv.setViewName("redirect:memberManagement.do");
		}else {
			throw new AdminException("리뷰 권한 박탈 실패!");
		}
		
		return mv;
	}
		
	// 1:1문의 관리 페이지
	@RequestMapping("inquiryEdit.do")
	public ModelAndView inquiryEdit(ModelAndView mv, Board board,
			@RequestParam(value="page", required=false) Integer page) {
		System.out.println(page);
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int inquiryCount = adminService.selectInquiryCount(board);
		
		System.out.println(inquiryCount);
		PageInfo pi = getPageInfo(currentPage, inquiryCount);
		System.out.println(pi);
		ArrayList<Board> inquiry = adminService.selectListInquiry(pi, board);
//		System.out.println(inquiry);
//		System.out.println(pi);
		mv.addObject("pi",pi);
		mv.addObject("inquiry", inquiry);		
		mv.setViewName("admin/inquiryEdit");
		
		return mv;
	}
	
	// 1:1문의 관리 페이지 ajax
	@RequestMapping("inquiryEdit2.do")
	public void inquiryEdit2(HttpServletResponse response, Board board,
			@RequestParam(value="page", required=false) Integer page) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int inquiryCount = adminService.selectInquiryCount(board);
		
		PageInfo pi = getPageInfo(currentPage, inquiryCount);
		System.out.println(pi);
		ArrayList<Board> inquiry = adminService.selectListInquiry(pi, board);
//		System.out.println(inquiry);
		
		Map<String, Object> result = new HashMap<>();
		result.put("inquiry", inquiry);
		result.put("pi", pi);			
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(result , response.getWriter());
		
	}
	
	// 회원 관리에서 회원에게 이메일 보내는 컨트롤러
	@RequestMapping("sendEmailAdmin.do")
	public ModelAndView sendEmailAdmin(ModelAndView mv, String email, String emailContent, String title) {
		
		System.out.println("이메일 :" + email+ "내용" + emailContent+ "제목" + title);
		
		String toEmail = email;			// 받는사람의 email 주소
//		String title = ""; 				// 메일 제목
		String content = emailContent; 	// 보낼 내용
		
//		System.getProperty("line.separator")+		// 줄바꿈 필요시 사용하기
		
        try {
        	MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"utf-8");
			
			messageHelper.setTo(toEmail);       // 받는사람 이메일
            messageHelper.setSubject(title);    // 메일제목은 생략가능
            messageHelper.setText(content);    // 메일 내용
            
            mailSender.send(message);
            
		} catch (MessagingException e) {
			e.printStackTrace();
		}		
		
		mv.setViewName("redirect:memberManagement.do");
		return mv;
		
	}
	
	// 1:1문의 상세정보로 이동하는 컨트롤러
	@RequestMapping("selectInquiryOne.do")
	public ModelAndView selectInquiryOne(ModelAndView mv, Board board) {
//		System.out.println(board);
		
		Board inquiry = adminService.selectInquiryOne(board);
//		System.out.println(inquiry);
		
		mv.addObject("inquiry", inquiry);
		mv.setViewName("admin/inquiryReply");
		
		return mv;
	}
	
	// 1:1문의 답변하기
	@RequestMapping("replyInquiry.do")
	public ModelAndView replyInquiry(ModelAndView mv, Board board) {
		
		System.out.println(board);
		int result = adminService.updateReplyInquiry(board);
		
		if(result >0) {
			mv.setViewName("redirect:inquiryEdit.do");
		}else {
			throw new AdminException("1:1문의 답변하기 실패!");
		}
		
		
		return mv;
	}
	
	// 게시판 관리페이지
	@RequestMapping("boardEdit.do")
	public ModelAndView boardEdit(ModelAndView mv, Board board,
			@RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		if(board.getCategoryNo()==0) {
			board.setCategoryNo(1);			
		}
		int boardCategory = board.getCategoryNo();
		int bCount = adminService.selectBoardCount(board);
		PageInfo pi = getPageInfo(currentPage, bCount);
		
		ArrayList<Board> boardList = adminService.selectBoardList(board,pi);
		
		mv.addObject("boardList",boardList);
		mv.addObject("pi",pi);
		mv.addObject("boardCategory",boardCategory);
		mv.setViewName("admin/boardEdit");
		
		
		
		return mv;
	}
	
	// 게시물 삭제  status N으로 변경
	@RequestMapping("deleteBoardAdmin.do")
	public ModelAndView deleteBoardAdmin(ModelAndView mv, Board board) {
		
		int result = adminService.deleteBoardAdmin(board);
		
		if(result>0) {
			mv.setViewName("redirect:boardEdit.do");
		}else {
			throw new AdminException("게시물 삭제 실패!");
		}		
		
		return mv;
	}
	
	// 게시물 등록
	@RequestMapping(value="registrationBoard.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String registrationBoard(HttpServletRequest request, Board board,
			@RequestParam(value="uploadFile", required=false) MultipartFile file) {
		
		if(!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file,request);
			
			board.setImageOriginName(file.getOriginalFilename());
			board.setImageNewName(renameFileName);
		}
		
		int result = adminService.registrationBoard(board);
		if(result >0) {
			return "redirect:boardEdit.do";
		}else {
			throw new BoardException("게시글 등록 실패!");
		}
	}
	
	// 파일 저장 함수
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\buploadFiles";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {	// webapp아래에 있는 resources 폴더 아래에
								// buploadFiles가 없어서 File객체를 찾을 수 없다면
			folder.mkdirs();
			
		}
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName
			= sdf.format(new java.sql.Date(System.currentTimeMillis()))
			+ "." + originFileName.substring(originFileName.lastIndexOf(".")+1);
		
		
		String filePath = folder + "\\" + renameFileName;
		// 실제 저장 될 파일의 경로 + rename파일명
		
		try {
			file.transferTo(new File(filePath));
			// 이 상태로는 파일 업로드가 되지 않는다.
			// 왜냐면 파일 제한크기에 대한 설정을 주지 않았기 때문이다.
			// root-context.xml에 업로드 제한 파일 크기를 지정해 주자.
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return renameFileName;
	}
	
	// 파일 삭제 함수
	private void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\buploadFiles";
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) {
			f.delete();
		}
		
	}
	
	// 게시물 디테일 및 수정으로 이동
	@RequestMapping("selectBoardOneAdmin.do")
	public ModelAndView selectBoardOneAdmin(ModelAndView mv, Board board) {
		
		Board b = adminService.selectInquiryOne(board);
		
		mv.addObject("board", b);
		mv.setViewName("admin/boardModify");
		
		return mv;
	}
	
	// 게시물 수정시
	@RequestMapping(value="modifyBoardAdmin.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String modifyBoardAdmin(HttpServletRequest request, Board board,
			@RequestParam(value="uploadFile", required=false) MultipartFile file) {
		System.out.println(board);
		
		String imageNewName="";
		if(!file.getOriginalFilename().equals("")) {
			if(board.getImageNewName() != null) {
				deleteFile(board.getImageNewName(), request);				
			}
			
			imageNewName = saveFile(file,request);
			
			board.setImageOriginName(file.getOriginalFilename());
			board.setImageNewName(imageNewName);
			int result2 = adminService.modifyBoardAdmin2(board);
		}
		
		int result = adminService.modifyBoardAdmin(board);
		if(result >0) {
			return "redirect:boardEdit.do";
		}else {
			throw new BoardException("게시글 수정 실패!");
		}
		
	}
	
	// 음식점 관리 페이지로 이동
	@RequestMapping("restaurantEdit.do")
	public ModelAndView restaurantEdit(ModelAndView mv,Search search,
			@RequestParam(value="page", required=false) Integer page) {
		System.out.println(search);
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int rCount = adminService.selectOneRestaurantCount(search);
		
		PageInfo pi = getPageInfo(currentPage, rCount);
		
		ArrayList<Restaurant> r = adminService.selectListRestaurantAdmin(search,pi);
		
		
		mv.addObject("search",search);
		mv.addObject("restaurantList", r);
		mv.addObject("pi",pi);
		mv.addObject("rCount",rCount);
		mv.setViewName("admin/restaurantEdit");
		
		return mv;
	}
	
	// 음식점 삭제
	@RequestMapping("deleteRestaurant.do")
	public ModelAndView deleteRestaurant(ModelAndView mv, Restaurant r) {
		
		int result = adminService.deleteRestaurant(r);
		
		if(result>0) {
		mv.setViewName("redirect:restaurantEdit.do");
		}else {
			throw new BoardException("음식점 삭제 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="registrationRestaurant.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView registrationRestaurant(ModelAndView mv, Restaurant r, String[] menu, String[] filter,
			String post, String address1, String address2, Image i
			,HttpServletRequest request,
			@RequestParam(value="uploadFile", required=false) MultipartFile file) {
		
		
		return mv;
	}
	@RequestMapping("restaurantRegistration.do")
	public String restaurantRegistration() {
		return "admin/restaurantRegistration";
	}
	
	@RequestMapping("boardRegistration.do")
	public String boardRegistration() {
		return "admin/boardRegistration";
	}
	
	@RequestMapping("themeEdit.do")
	public String themeEdit() {
		return "admin/themeEdit";
	}
	@RequestMapping("test.do")
	public String test() {
		return "admin/test";
	}
	

}


