package com.kh.fooco.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fooco.member.model.service.MemberService;
import com.kh.fooco.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	//08.10 loginTest - 지민
	@RequestMapping("testMember.do")
	public String MemberLoginTest() {
		return "member/memberLoginTest";
	}
	
	//08.10 회원가입 폼으로 이동 - 지민
	@RequestMapping("joinMemberView.do")
	public String joinMemberView() {
		return "member/joinMember";
	}
	
	//08.10  회원가입 후 등록 버튼 클릭하여 insert - 지민
	@RequestMapping("memberInsert.do")
	public String memberInsert(Member m) {
		System.out.println(m);
		return null;
	}
	
	
	
	
}
