package com.kh.fooco.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.fooco.member.model.service.MemberService;
import com.kh.fooco.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	//08.10 loginTest - 지민 (로그인모달창으로 이동하는 mapping)
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
	
	//08.18 로그인 - 지민
	@RequestMapping(value="mlogin.do",method=RequestMethod.POST)
	public String loginMember(Member m,HttpSession session,Model model) {
		Member loginUser = memberService.loginMember(m);
		
		if(loginUser!=null) {
			session.setAttribute("loginUser", loginUser);
			System.out.println("로그인성공");
			return "home";
		}else {
			model.addAttribute("msg","로그인실패!");
			System.out.println("로그인 실패");
			return "home";
		}
		
	}
	
	
}
