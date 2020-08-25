package com.kh.fooco.membership.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooco.membership.model.exception.MemberShipException;
import com.kh.fooco.membership.model.service.MemberShipService;
import com.kh.fooco.membership.model.vo.MemberShip;

@Controller
public class MemberShipController {
	@Autowired
	private MemberShipService memberShipService;
	
	//멤버십 메인 화면으로 이동
	/*
	 * @RequestMapping("goMembershipInfo.do") public String goMembershipInfo() {
	 * return "membership/membershipInfo"; }
	 */
	
	//멤버십 메인 화면으로 이동 + 멤버십 조회
	@RequestMapping("goMembershipInfo.do")
	public ModelAndView selectMembershipList(MemberShip mebership,ModelAndView mv) {
		ArrayList<MemberShip> membershiplist = memberShipService.selectMembershipList(mebership);
		System.out.println("멤버십 정보 불러오는 지 :" + membershiplist);
		
		mv.addObject("membershiplist", membershiplist);
		mv.setViewName("membership/membershipInfo");
		
		return mv;
	}
	
	
	//결제 
	@RequestMapping("buyMembership.do")
	public ModelAndView buyMemberShip(ModelAndView mv, String memberId) {
		System.out.println("뜨나");
		System.out.println("회원번호:" + memberId);	//안넘어옴
		
		mv.setViewName("redirect:goMembershipInfo.do");
		return mv;
		
	}
}
