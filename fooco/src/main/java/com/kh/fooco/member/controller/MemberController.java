package com.kh.fooco.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.fooco.member.model.exception.MemberException;
import com.kh.fooco.member.model.service.MemberService;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.member.naver.NaverLoginBO;

@Controller
public class MemberController {
//	네이버 로그인을 위한 설정
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Autowired
	private MemberService memberService;
	
	// 암호화를 위한 빈 객체 등록
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	

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
			return "common/main";
		}else{
			System.out.println("회원가입 실패");
			throw new MemberException("회원 가입 실패");
		}
	}
	
	//08.18 로그인 - 지민
	@RequestMapping(value="mlogin.do",method=RequestMethod.POST)
	public String loginMember(Member m,Model model) {
		Member loginUser = memberService.loginMember(m);
		
		if(bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
			model.addAttribute("loginUser", loginUser);
			System.out.println("로그인성공");
			return "common/main";
		}else {
			System.out.println("로그인 실패");
			throw new MemberException("로그인 실패");
		}
		
	}
	
	//0819 로그아웃 - 지민
	@RequestMapping(value="mlogout.do",method=RequestMethod.GET)
	public String logout(SessionStatus status) {
		status.setComplete();
		System.out.println("로그아웃");
		return "common/main";
	}
	
	//0819 네이버 로그인 - 지민
	//로그인 첫 화면 요청 메소드
		@RequestMapping(value = "naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
		public String login(Model model, HttpSession session) {
			/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
			//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
			System.out.println("네이버:" + naverAuthUrl);
			//네이버
			model.addAttribute("url", naverAuthUrl);
			return "member/memberLoginTest";
		}
		//네이버 로그인 성공시 callback호출 메소드
		@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
		public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
			System.out.println("여기는 callback");
			OAuth2AccessToken oauthToken;
			oauthToken = naverLoginBO.getAccessToken(session, code, state);
			//1. 로그인 사용자 정보를 읽어온다.
			apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
			//2. String형식인 apiResult를 json형태로 바꿈
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(apiResult);
			JSONObject jsonObj = (JSONObject) obj;
			//3. 데이터 파싱
			//Top레벨 단계 _response 파싱
			JSONObject response_obj = (JSONObject)jsonObj.get("response");
			//사용자 정보 가져오기 - 지민 test
			String naverCode = (String)response_obj.get("id");
			String email = (String)response_obj.get("email");
			String name = (String)response_obj.get("name");
			String gender = (String)response_obj.get("gender");
			
			System.out.println("naverCode:" + naverCode);
			System.out.println("이메일:" + email);
			System.out.println("회원이름:" + name);
			System.out.println("성별" + gender);
			
			//response의 nickname값 파싱
			String nickname = (String)response_obj.get("nickname");
			System.out.println("닉네임:"+nickname);
			//4.파싱 닉네임 세션으로 저장
			session.setAttribute("sessionId",nickname); //세션 생성
			model.addAttribute("result", apiResult);
			return "common/subMenubar";
		}
		//로그아웃
		@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
		public String logout(HttpSession session)throws IOException {
			System.out.println("여기는 logout");
			session.invalidate();
			return "redirect:index.jsp";
		}
	
	
}
