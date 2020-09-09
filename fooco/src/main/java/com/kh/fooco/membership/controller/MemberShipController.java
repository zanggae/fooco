package com.kh.fooco.membership.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.member.model.exception.MemberException;
import com.kh.fooco.member.model.vo.Member;
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
	public ModelAndView selectMembershipList(MemberShip mebership,ModelAndView mv,HttpSession session) {
		//멤버십조회
		ArrayList<MemberShip> membershiplist = memberShipService.selectMembershipList(mebership);
		
		//쿠폰 조회
		ArrayList<Coupon> couponList = memberShipService.selectCouponList();
		

		//회원 불러오기
		int  MembershipUser= 0;
		//로그인한 회원이 있으면
	    if((Member)session.getAttribute("loginUser")!=null) {
	    	Member loginUser = (Member)session.getAttribute("loginUser");
	    	MembershipUser = loginUser.getMemberId();
	    	MemberShip m = memberShipService.checkmembership(MembershipUser);
	    	mv.addObject("m", m);
	    	mv.addObject("membershiplist", membershiplist);
	    	mv.addObject("couponList", couponList);
	    	mv.setViewName("membership/membershipInfo");
	    //로그인 안했을 시
	    }else {
	    	mv.addObject("membershiplist", membershiplist);
	    	mv.addObject("couponList", couponList);
	    	mv.setViewName("membership/membershipInfo");
	    }

		return mv;
	}
	
	
	//결제 + 골드멤버십 insert
		@RequestMapping("buyGoldMembership.do")
		public String insertGoldMembership(MemberShip membership) {
			System.out.println("membership:" + membership);	
			
			//insert작업
			int result = memberShipService.insertGoldMembership(membership);

//			관리자 테이블(static에 맴버십 컬럼 update)
		    int result4 = memberShipService.updateStaticGoldCount();
		   
			System.out.println("result:"+result);
			
			if(result>0) {
				System.out.println("insert성공");
				return "membership/membershipInfo";
			}else {
				System.out.println("inser실패");
				throw new MemberShipException("멤버십 등록 실패");
			}

		}
		//결제 + 실버멤버십 insert
		@RequestMapping("buySilverMembership.do")
		public String insertSilverMembership(MemberShip membership) {
			System.out.println("잘오는건 맞나");
			System.out.println("membership:" + membership);
			
			int result = memberShipService.insertSilverMembership(membership); 

			 
//		  	  관리자 테이블(static에 맴버십 컬럼 update)
	         int result4 = memberShipService.updateStaticSilverCount();
	         
			 if(result>0) { System.out.println("insert성공"); 
			 return "membership/membershipInfo"; 
			 }else { 
				 System.out.println("insert실패"); 
				 throw new MemberShipException("멤버십 등록 실패"); 
			}
		
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
	
	//멤버십 상태 update
	@RequestMapping("updateMembershipStatus.do")
	public ModelAndView updateMembership(ModelAndView mv,HttpSession session){
		
        int result = memberShipService.updateMembershipStatus();
        
//        System.out.println("UPDATE 잘 되는지" + result);
        
        if(result>0) {
        	System.out.println("update성공");
        	mv.addObject("result",result);
        	mv.setViewName("common/main");
        }else {
        	System.out.println("update실패");
        	mv.setViewName("common/main");
        }
        return mv;
	}
	
}
