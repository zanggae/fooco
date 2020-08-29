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
import com.kh.fooco.membership.model.vo.MemberShip;

@Controller
public class MemberShipController {
	@Autowired
	private MemberShipService memberShipService;
	
	//멤버십 메인 화면으로 이동 + 멤버십 조회
	@RequestMapping("goMembershipInfo.do")
	public ModelAndView selectMembershipList(MemberShip mebership,ModelAndView mv) {
		ArrayList<MemberShip> membershiplist = memberShipService.selectMembershipList(mebership);
		System.out.println("멤버십 정보 불러오는 지 :" + membershiplist);
		
		mv.addObject("membershiplist", membershiplist);
		mv.setViewName("membership/membershipInfo");
		
		return mv;
	}
	
	
	//결제 + 멤버십 insert
	@RequestMapping("buyMembership.do")
	public String insertMembership(MemberShip membership) {
		System.out.println("뜨나");
		System.out.println("membership:" + membership);	
		
		//insert작업
		int result = memberShipService.insertMembership(membership);
		
		System.out.println("result:"+result);
		
		if(result>0) {
			System.out.println("insert성공");
			return "redirect:goMembershipInfo.do";
		}else {
			System.out.println("inser실패");
			throw new MemberShipException("멤버십 등록 실패");
		}
		
		
		
		
	}
}
