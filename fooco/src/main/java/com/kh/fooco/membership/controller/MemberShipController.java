package com.kh.fooco.membership.controller;

import java.util.ArrayList;

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
	public String insertGoldMembership(MemberShip membership) {
		System.out.println("membership:" + membership);	
		
		//insert작업
		int result = memberShipService.insertGoldMembership(membership);
	    int result2 = memberShipService.insertCoupon1(membership);
	    int result3= memberShipService.insertCoupon2(membership);
		 
		
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
		
		
		 int result = memberShipService.insertSilverMembership(membership); int
		 result2 = memberShipService.insertCoupon1(membership); 
		 int result3= memberShipService.insertCoupon3(membership);
		 
		 if(result>0) { System.out.println("insert성공"); return
		 "membership/membershipInfo"; }else { System.out.println("insert실패"); throw
		 new MemberShipException("멤버십 등록 실패"); }
	
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
