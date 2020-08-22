package com.kh.fooco.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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
	
	//메일전송을 위한 Autowired
	@Autowired
	private JavaMailSender mailSender;

	// 암호화를 위한 빈 객체 등록
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberService memberService;
	

	//08.10 회원가입 폼으로 이동 - 지민
	@RequestMapping("joinMemberView.do")
	public String joinMemberView() {
		return "member/joinMember";
	}
	
	//08.10  회원가입 후 등록 버튼 클릭하여 insert - 지민
	@RequestMapping("insertMember.do")
	public String memberInsert(Member m,
			@RequestParam("emailfront") String emailfront,	//주소 세개로 끊어서 가지고옴 
			@RequestParam(value="emailself",required=false) String emailself,
			@RequestParam("emailback") String emailback) {
		System.out.println("jsp에서 값 잘 넘어오는 지 "+m);
		
		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());	//암호화된 비밀번호
		
		m.setMemberPwd(encPwd);
		
		if(emailself==null) {	//직접입력 이메일 안했으면
			m.setEmail(emailfront + "@" + emailback);
		}else if(emailself!=null) {
			m.setEmail(emailfront + "@" + emailself);
		}
		
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
	public String logoutMember(SessionStatus status) {
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
	
		//이메일전송
		@RequestMapping(value="sendEmailforMemerJoin.do",method=RequestMethod.POST)
		public void mailSending(HttpServletRequest request,String email, HttpServletResponse response) throws IOException {
			
			Random r = new Random();
			int dice = r.nextInt(4589362) + 49311;	//이메일로 받는 인증코드 부분(난수)
			
//			String setfrom = "ekfzma1004@gmail.com";		//보내는 사람
			String tomail = request.getParameter("email"); //받는 사람
			String title = "Fooco 인증 메일입니다";				//메일제목
			String content = 
					System.getProperty("line.separator")+
					System.getProperty("line.separaotr")+
					"안녕하세요! Fooco입니다."+
					System.getProperty("line.separator")+
					System.getProperty("line.separator")+
					"인증번호는 " + dice+ "입니다"+
					System.getProperty("line.separator")+
					System.getProperty("line.separator")+
					"위의 인증번호를 잘 입력해 주세요";
			
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"utf-8");
				
//				 messageHelper.setFrom(setfrom); 	// 보내는사람 생략하면 정상작동을 안함
	             messageHelper.setTo(tomail); 		// 받는사람 이메일
	             messageHelper.setSubject(title); 	// 메일제목은 생략가능
	             messageHelper.setText(content); 	// 메일 내용
	             
	             mailSender.send(message);
	             System.out.println("이메일 전송됨!_!");
				
			} catch (MessagingException e) {
				e.printStackTrace();
				System.out.println(e);
			}
			
			//난수 화면단으로 보내기
			response.setContentType("application/json;charset=utf-8");
	         
	         Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	         gson.toJson(dice, response.getWriter());
			
			 
			
			
		}
		
	
	
}
