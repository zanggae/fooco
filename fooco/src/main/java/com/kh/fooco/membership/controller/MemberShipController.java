package com.kh.fooco.membership.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.member.model.exception.MemberException;
import com.kh.fooco.membership.model.exception.MemberShipException;
import com.kh.fooco.membership.model.service.MemberShipService;
import com.kh.fooco.membership.model.vo.Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

@Controller
public class MemberShipController {
	@Autowired
	private MemberShipService memberShipService;
	
	//멤버십 메인 화면으로 이동 + 멤버십 조회
	@RequestMapping("goMembershipInfo.do")
	public ModelAndView selectMembershipList(MemberShip mebership,ModelAndView mv) {
		ArrayList<MemberShip> membershiplist = memberShipService.selectMembershipList(mebership);
		ArrayList<Coupon> couponList = memberShipService.selectCouponList();
		System.out.println("멤버십 정보 불러오는 지 :" + membershiplist);
		System.out.println("쿠폰 정보 잘 불러오는지 : " + couponList);
		
		mv.addObject("membershiplist", membershiplist);
		mv.addObject("couponList", couponList);
		mv.setViewName("membership/membershipInfo");
		
		return mv;
	}
	
	
	//결제 + 골드멤버십 insert
	@RequestMapping("buyGoldMembership.do")
	public String insertGoldMembership(MemberShip membership,HttpServletResponse response) throws IOException {
		System.out.println("membership:" + membership);	
		
	    
	    ArrayList<MemberShip> m = memberShipService.checkmembership(membership);
	    
		System.out.println("멤버십 있는 지 조회해오기 : " + m);
		
		if(m!=null) {
			System.out.println("사용 하는 멤버십이 조회됨");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 사용하는 멤버십이 있습니다'); history.go(-1);</script>"); 
			out.flush();
		}else{
			//insert작업
			int result = memberShipService.insertGoldMembership(membership);
		    int result2 = memberShipService.insertCoupon1(membership);
		    int result3= memberShipService.insertCoupon2(membership);
		    System.out.println("result:"+result);
		    
			if(result>0) {
				System.out.println("insert성공");
				response.setContentType("text/html; charset=UTF-8"); 
				PrintWriter out = response.getWriter();
				out.println("<script>alert('결제 성공'); history.go(-1);</script>"); 
				out.flush();
			}else {
			System.out.println("inser실패");
			System.out.println("insert성공");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			out.println("<script>alert('결제 실패'); history.go(-1);</script>"); 
			out.flush();
			throw new MemberShipException("멤버십 등록 실패");
		}
	}
		return "membership/membershipInfo";
	}
	//결제 + 실버멤버십 insert
	@RequestMapping("buySilverMembership.do")
	public String insertSilverMembership(MemberShip membership, HttpServletResponse response) throws IOException {
		System.out.println("membership:" + membership);
		
	    ArrayList<MemberShip> m = memberShipService.checkmembership(membership);
		
	    System.out.println("멤버십 있는 지 조회해오기 : " + m);
		
		if(m!=null) {
			System.out.println("사용 하는 멤버십이 조회됨");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 사용하는 멤버십이 있습니다'); history.go(-1);</script>"); 
			out.flush();
		}else{
			//insert작업
			int result = memberShipService.insertGoldMembership(membership);
		    int result2 = memberShipService.insertCoupon1(membership);
		    int result3= memberShipService.insertCoupon2(membership);
		    System.out.println("result:"+result);
		    
			if(result>0) {
				System.out.println("insert성공");
				response.setContentType("text/html; charset=UTF-8"); 
				PrintWriter out = response.getWriter();
				out.println("<script>alert('결제 성공'); history.go(-1);</script>"); 
				out.flush();
			}else {
			System.out.println("inser실패");
			System.out.println("insert성공");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			out.println("<script>alert('결제 실패'); history.go(-1);</script>"); 
			out.flush();
			throw new MemberShipException("멤버십 등록 실패");
		}
	}
		return "membership/membershipInfo";

	
	}
	
	//멤버십 조회
	@RequestMapping("goMembershipList.do")
	public ModelAndView goMembershiplist(ModelAndView mv, String memberId) {
		System.out.println("회원번호 잘 넘어오는지 :" + memberId);
		
		ArrayList<MemberShip> m = memberShipService.selectforMembership(memberId);
		
		System.out.println("db에서 결과 잘 받아오는지 m: " +m);
		
		mv.addObject("m", m);
		mv.setViewName("membership/membershiplist");

		return mv;
	}
}
