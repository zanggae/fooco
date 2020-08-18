package com.kh.fooco.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.fooco.member.model.exception.MemberException;
import com.kh.fooco.member.model.service.MemberService;
import com.kh.fooco.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	// 암호화를 위한 빈 객체 등록
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	

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
	@RequestMapping("insertMember.do")
	public String memberInsert(Member m,
			@RequestParam("emailfront") String emailfront,	//주소 세개로 끊어서 가지고옴 
//			@RequestParam("emailself") String emailself,
			@RequestParam("emailback") String emailback) {
		System.out.println("jsp에서 값 잘 넘어오는 지 "+m);
		
		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());	//암호화된 비밀번호
		
		m.setMemberPwd(encPwd);
		
		m.setEmail(emailfront + "@" + emailback);	//추후 조건절 걸어서 선택 이메일 추가 해주기
		
		//insert작업 시작
		int result = memberService.insertMember(m);
		
		if(result >0) {
			System.out.println("회원가입성공");
			return "home";
		}else{
			System.out.println("회원가입 실패");
			throw new MemberException("회원 가입 실패");
		}
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
