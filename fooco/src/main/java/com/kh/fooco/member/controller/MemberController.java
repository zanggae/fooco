package com.kh.fooco.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.fooco.admin.model.vo.MyListAdmin;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.member.model.exception.MemberException;
import com.kh.fooco.member.model.service.MemberService;
import com.kh.fooco.member.model.vo.BoardInfo;
import com.kh.fooco.member.model.vo.Checkin;
import com.kh.fooco.member.model.vo.CheckinImage;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.MZ;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.member.model.vo.Select_Board;
import com.kh.fooco.member.model.vo.Select_Checkin;
import com.kh.fooco.member.model.vo.Select_Coupon;
import com.kh.fooco.member.model.vo.Select_ReviewInfo;
import com.kh.fooco.member.model.vo.TM;
import com.kh.fooco.member.naver.NaverLoginBO;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.restaurant.model.vo.Review;


@SessionAttributes("loginUser")
@Controller
public class MemberController {
   // 네이버 로그인을 위한 설정
   /* NaverLoginBO */
   private NaverLoginBO naverLoginBO;
   private String apiResult = null;

   @Autowired
   private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
      this.naverLoginBO = naverLoginBO;
   }

   // 메일전송을 위한 Autowired
   @Autowired
   private JavaMailSender mailSender;

   // 암호화를 위한 빈 객체 등록
   @Autowired
   private BCryptPasswordEncoder bcryptPasswordEncoder;

   @Autowired
   private MemberService memberService;

   // 08.10 회원가입 폼으로 이동 - 지민
   @RequestMapping("joinMemberView.do")
   public String joinMemberView() {
      return "member/joinMember";
   }

   // 08.10 회원가입 후 등록 버튼 클릭하여 insert - 지민
   @RequestMapping("insertMember.do")
   public String memberInsert(Member m, @RequestParam("emailfront") String emailfront, // 주소 세개로 끊어서 가지고옴
         @RequestParam(value = "emailself", required = false) String emailself,
         @RequestParam("emailback") String emailback) {
      System.out.println("jsp에서 값 잘 넘어오는 지 " + m);

      String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd()); // 암호화된 비밀번호

      m.setMemberPwd(encPwd);

      // 이메일 정보 합쳐서 set
      if (emailself == null) { // 직접입력 이메일 안했으면
         m.setEmail(emailfront + "@" + emailback);
      } else if (emailself != null) {
         m.setEmail(emailfront + "@" + emailself);
      }

      // insert작업 시작
      int result = memberService.insertMember(m);

      if (result > 0) {
         System.out.println("회원가입성공");
         return "common/main";
      } else {
         System.out.println("회원가입 실패");
         throw new MemberException("회원 가입 실패");
      }
   }

   // 약관동의 페이지로 이동
   @RequestMapping("memberTerms.do")
   public String movetoTerms() {
      return "member/terms";
   }

   // 08.18 로그인 - 지민
   @RequestMapping(value = "mlogin.do", method = RequestMethod.POST)
   public String loginMember(Member m, Model model, HttpServletResponse response, HttpServletRequest request) throws IOException {

      Member loginUser = memberService.loginMember(m);

      if (loginUser == null) {
         System.out.println("일치하는 회원이 없음");
         response.setContentType("text/html; charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.println("<script>alert('아이디와 비밀번호를 다시 확인해주세요'); location.href='main.do';</script>");
         out.flush();
      } else if (bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
         model.addAttribute("loginUser", loginUser);
         System.out.println("로그인 성공");
         
			
			  //이전 페이지 정보 가져오기 
         	  String referer = request.getHeader("Referer");
			  request.getSession().setAttribute("redirectURI", referer); 
			  String result = referer.substring(referer.lastIndexOf("/")+1);
			  System.out.println("result 주소값 "+result);
			  
			  //회원가입 후 로그인바로 시 메인으로 들어가도록 조건 
			  if(result.equals("insertMember.do")) {
			  result="main.do"; 
			  } 
			  return "redirect:"+result;

      } else {
         System.out.println("로그인 실패");
         response.setContentType("text/html; charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.println("<script>alert('비밀번호를 다시 확인해주세요'); location.href='main.do';</script>");
         out.flush();
      }
		return "common/main";  
   }

   // 0819 로그아웃 - 지민
   @RequestMapping(value = "mlogout.do", method = RequestMethod.GET)
   public String logoutMember(SessionStatus status) {
      status.setComplete();
      System.out.println("로그아웃");
      return "redirect:mainpage1.do";
   }

   @RequestMapping("mainpage1.do")
   public String mainpage1() {
      return "common/main";
   }

   // 0819 네이버 로그인 - 지민
   // 로그인 첫 화면 요청 메소드
   @RequestMapping(value = "naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
   public String login(Model model, HttpSession session) {
      /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
      String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
      // https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
      // redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
      System.out.println("네이버:" + naverAuthUrl);
      // 네이버
      model.addAttribute("url", naverAuthUrl);
      return "member/memberLoginTest";
   }

   // 네이버 로그인 성공시 callback호출 메소드
   @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
   public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
         throws IOException, ParseException {
      System.out.println("여기는 callback");
      OAuth2AccessToken oauthToken;
      oauthToken = naverLoginBO.getAccessToken(session, code, state);
      // 1. 로그인 사용자 정보를 읽어온다.
      apiResult = naverLoginBO.getUserProfile(oauthToken); // String형식의 json데이터
      // 2. String형식인 apiResult를 json형태로 바꿈
      JSONParser parser = new JSONParser();
      Object obj = parser.parse(apiResult);
      JSONObject jsonObj = (JSONObject) obj;
      // 3. 데이터 파싱
      // Top레벨 단계 _response 파싱
      JSONObject response_obj = (JSONObject) jsonObj.get("response");
      // 사용자 정보 가져오기 - 지민 test
      String naverCode = (String) response_obj.get("id");
      String email = (String) response_obj.get("email");
      String name = (String) response_obj.get("name");
      String gender = (String) response_obj.get("gender");

      System.out.println("naverCode:" + naverCode);
      System.out.println("이메일:" + email);
      System.out.println("회원이름:" + name);
      System.out.println("성별" + gender);

      // response의 nickname값 파싱
      String nickname = (String) response_obj.get("nickname");
      System.out.println("닉네임:" + nickname);
      // 4.파싱 닉네임 세션으로 저장
      session.setAttribute("sessionId", nickname); // 세션 생성
      model.addAttribute("result", apiResult);
      return "common/subMenubar";
   }

   // 로그아웃
   @RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
   public String logout(HttpSession session) throws IOException {
      System.out.println("여기는 logout");
      session.invalidate();
      return "redirect:index.jsp";
   }

   // 이메일전송
   @RequestMapping(value = "sendEmailforMemerJoin.do", method = RequestMethod.POST)
   public void mailSending(HttpServletRequest request, String email, HttpServletResponse response) throws IOException {

      Random r = new Random();
      int dice = r.nextInt(4589362) + 49311; // 이메일로 받는 인증코드 부분(난수)

      String setfrom = "fooco@gmail.com"; // 보내는 사람
      String tomail = request.getParameter("email"); // 받는 사람
      String title = "Fooco 인증 메일입니다"; // 메일제목
      String content = "안녕하세요! Fooco입니다." + System.getProperty("line.separator")
            + System.getProperty("line.separator") + "인증번호는 " + dice + "입니다" + System.getProperty("line.separator")
            + System.getProperty("line.separator") + "위의 인증번호를 잘 입력해 주세요";

      try {
         MimeMessage message = mailSender.createMimeMessage();
         MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "utf-8");

         messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
         messageHelper.setTo(tomail); // 받는사람 이메일
         messageHelper.setSubject(title); // 메일제목은 생략가능
         messageHelper.setText(content); // 메일 내용

         mailSender.send(message);
         System.out.println("이메일 전송됨!_!");

      } catch (MessagingException e) {
         e.printStackTrace();
         System.out.println(e);
      }

      // 난수 화면단으로 보내기
      response.setContentType("application/json;charset=utf-8");

      Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
      gson.toJson(dice, response.getWriter());

   }

   // 닉네임 중복 체크
   @RequestMapping(value = "checkNickName.do")
   public void checkNickName(String nickName, HttpServletResponse response) throws JsonIOException, IOException {
      boolean trueorfalse = memberService.checkNickName(nickName) == 0 ? true : false;

      // gson boolean형태 안 먹기 떄문에 int형으로 바꿔서 넘기기
      int chekchnickName = memberService.checkNickName(nickName);

      Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
      gson.toJson(chekchnickName, response.getWriter());

   }

   // 비밀번호 찾기
   @RequestMapping("searchMemberPwd.do")
   public String searchMemberPwd(String emailchange, Member m, HttpServletRequest request,
         HttpServletResponse response) throws IOException {
      System.out.println("비밀번호 맵핑 잘 오나");
      System.out.println("email잘 나오는지" + emailchange);
      StringBuilder sb = new StringBuilder();
      // 임의 난수 생성
      Random r = new Random();
      for (int i = 0; i < 4; i++) {
         sb.append((char) (r.nextInt(26) + 'A') + ""); // 대문자
         sb.append((char) (r.nextInt(10) + '0') + ""); // 숫자
      }
      String dice = sb.toString();

      String tomail = request.getParameter("emailchange"); // 받는 사람
      String title = "[Fooco]임시 비밀번호가 발급되었습니다"; // 메일제목
      String content = "안녕하세요! Fooco입니다." + System.getProperty("line.separator")
            + System.getProperty("line.separator") + "임시비밀번호는 " + dice + "입니다"
            + System.getProperty("line.separator") + System.getProperty("line.separator")
            + "위의 임시번호로  로그인 후 마이페이지에서 비밀번호를 변경해주세요.";

      try {
         MimeMessage message = mailSender.createMimeMessage();
         MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "utf-8");
         messageHelper.setTo(tomail); // 받는사람 이메일
         messageHelper.setSubject(title); // 메일제목은 생략가능
         messageHelper.setText(content); // 메일 내용
         mailSender.send(message);
         System.out.println("비밀번호 이메일 전송됨!");
      } catch (MessagingException e) {
         e.printStackTrace();
      }

      // 임시 비밀번호로 DB업데이트 작업 시작
      m.setMemberPwd(dice);
      String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd()); // 암호화된 비밀번호
      m.setMemberPwd(encPwd);
      m.setEmail(emailchange);
      String pwdtest = m.getMemberPwd();
      String emailtest = m.getEmail();
      System.out.println("비밀번호 바뀌었는지 테스트:" + pwdtest);
      System.out.println("이메일값:" + emailtest);

      Member loginUser = memberService.loginMember(m);
      int result = memberService.searchMemberPwd(m);

      if (loginUser == null) {
         System.out.println("일치하는 회원이 없음");
         response.setContentType("text/html; charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.println("<script>alert('존재하지 않는 이메일입니다. 이메일을 다시 한번 확인 해 주세요'); history.go(-1);</script>");
         out.flush();
      } else {
         if (result > 0) {
            System.out.println("비밀번호 찾기 성공");
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('임시 비밀번호가 발급되었습니다. 이메일을 확인해 주세요'); history.go(-1);</script>");
            out.flush();
         } else {
            System.out.println("비밀번호 찾기 실패");
            throw new MemberException("비밀번호 찾기 실패");
         }
      }
      return "common/main";
   }

   // 이메일 중복체크
   @RequestMapping(value = "checkemailDup.do")
   public void checkEmailDup(String email, HttpServletResponse response) throws JsonIOException, IOException {
      /* System.out.println("이메일 잘 가지고 오는지 확인  " + email); */
      boolean trueorfalse = memberService.chekchemailDup(email) == 0 ? true : false;

      // gson boolean형태 안 먹기 떄문에 int형으로 바꿔서 넘기기
      int chekchemail = memberService.chekchemailDup(email);

      Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
      gson.toJson(chekchemail, response.getWriter());

   }

   // ================================== MyPage 동원 ===========================================
   
         // 메인페이지에서 로그인 후 마이페이지 버튼 클릭 시
         @RequestMapping("myPageInfo.do")
         public ModelAndView myPageInfo(ModelAndView mv, Member m) {
            
            
            int followCount = memberService.selectOneFollowCount(m);
            int followingCount = memberService.selectOneFollowingCount(m);
            int reviewCount = memberService.selectOneReviewCount(m);
            int mylistCount = memberService.selectOneMyListCount(m);      
            int checkinCount = memberService.selectOneCheckInCount(m);
            String rename_name = memberService.selectOneProFile(m);
            
            System.out.println("팔로워 수 : " + followCount);
            System.out.println("팔로잉 수 : " + followingCount);
            
            mv.addObject("followCount",followCount);
            mv.addObject("followingCount",followingCount);
            mv.addObject("reviewCount",reviewCount);
            mv.addObject("mylistCount",mylistCount);
            mv.addObject("checkinCount",checkinCount);
            mv.addObject("rename_name",rename_name);
            mv.setViewName("mypage/myPageInfo");
            
            return mv;
         }
         
         
         
         // 나의활동에서 프로필 사진 변경 시
         @RequestMapping(value="proFileUpDate.do", method=RequestMethod.POST)
         public ModelAndView proFileUpDate(HttpServletRequest request, Member m, ModelAndView mv,
               @RequestParam(value="profile", required=false) MultipartFile file) {
            
            String folderName = "profileImage";
            
            if(!file.getOriginalFilename().equals("")) {
            	
               deleteFile(m.getRenameName(), request, folderName);
            	
               String renameFileName = saveFile(file,request, folderName);
               
               m.setOriginalName(file.getOriginalFilename());
               m.setRenameName(renameFileName);
               
            }
            
            int result = memberService.updateMemberProfile(m);
            
            int followCount = memberService.selectOneFollowCount(m);
            int followingCount = memberService.selectOneFollowingCount(m);
            int reviewCount = memberService.selectOneReviewCount(m);
            int mylistCount = memberService.selectOneMyListCount(m);      
            int checkinCount = memberService.selectOneCheckInCount(m);
            String rename_name = memberService.selectOneProFile(m);
            
            System.out.println(m);
            
            
            mv.addObject("followCount",followCount);
            mv.addObject("followingCount",followingCount);
            mv.addObject("reviewCount",reviewCount);
            mv.addObject("mylistCount",mylistCount);
            mv.addObject("checkinCount",checkinCount);
            mv.addObject("rename_name",rename_name);
            mv.setViewName("mypage/myPageInfo");
            
            if(result > 0) {
               
               return mv;
               
            } else {
               throw new MemberException("프로필 파일 업로드 실패");
            }
         }
         
         
         // 변경 파일을 ProFiles폴더에 저장하는 메소드
         private String saveFile(MultipartFile file, HttpServletRequest request, String folderName) {
            
            // webapp 경로
            String root = request.getSession().getServletContext().getRealPath("resources");
            // == webapp/resources
//            System.out.println("경로를 확인해 보자 : " + root);
            
            String savePath = root + "\\" + folderName;
            
            File folder = new File(savePath); // import java.io.File;
            
            if(!folder.exists()) { // webapp아래에 있는 resources 폴더 아래에
                              // nuploadFiles가 없어서 File객체를 찾을 수 없다면
               folder.mkdirs();
            }
            
            
            // 공지글은 파일명 중복 제거는 신경쓰지 않고 했지만
            // 게시판에서는 파일명을 날짜(업로드 시간)로 rename 해보자
            int randomNum = (int)(Math.random() * 10000) + 1;
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String originFileName = file.getOriginalFilename();
            String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))
               + randomNum + "." + originFileName.substring(originFileName.lastIndexOf(".")+1); // 시스템에서 현재시간을 long형으로 변환해줌
            
            String filePath = folder + "\\" + renameFileName;
            // 실제 저장 될 파일의 경로 + rename 파일명
            
            System.out.println("내파일 경로 :"+ filePath);
            
            try {
               file.transferTo(new File(filePath)); 
               // 사용자가 넘겨줄 파일을 집어넣어라
               // 이 상태로는 파일 업로드가 되지 않는다.
               // 왜냐하면 파일 제한크기에 대한 설정을 주지 않았기 때문이다.
               // root-context.xml에 업로드 제한 파일 크기를 지정해 주자!
               
            } catch (Exception e) {
               e.printStackTrace();
            }
            return renameFileName;
         }
         
         private void deleteFile(String fileName, HttpServletRequest request, String folderName) {
            String root = request.getSession().getServletContext().getRealPath("resources");
            String savePath = root + "\\" + folderName;
            
            File f = new File(savePath + "\\" + fileName);
            if(f.exists()) {
               f.delete(); // 그 경로안에 있는 파일을 지워주는 메소드
            }
            
         }
         
         
         // 팔로우 페이지 이동
         @RequestMapping("follow.do")
         public ModelAndView followpage(ModelAndView mv, Member m){
            
            // 팔로워
            ArrayList<Follower> followerlist = memberService.selectFollower(m);
            
            System.out.println(followerlist);          
            
            
            // 팔로잉
            ArrayList<Following> followinglist = memberService.selectFollowing(m);
            
            System.out.println(followinglist);
            
            
            mv.addObject("followerlist",followerlist);
            mv.addObject("followinglist",followinglist);
            mv.setViewName("mypage/myPageFollow");
         
            return mv;
         }
         
         
         // 내정보 수정 시 비밀번호 확인 ajax
         @RequestMapping("infoPwdCheck.do")
         public void infoPwdCheck(HttpServletResponse response, Member m) throws IOException {
            
            Member loginUser = memberService.loginMember(m);
            
            System.out.println("넘어온 비밀번호 : " + m);
            System.out.println("로그인 유저의 비밀번호 : " + loginUser.getMemberPwd());
            
            boolean isUserble = (bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())) ? true : false;
            
            System.out.println("내정보 수정 블린값 : " + isUserble);
            
            PrintWriter out = response.getWriter();
            out.print(isUserble);
            out.flush();
            out.close();
         }
         
         // 내정보 수정 페이지 이동
         @RequestMapping(value="infoCheck.do", method=RequestMethod.POST)
         public String infomationModifyView() {
            
            return "mypage/myPageInfomationModify";
         }
            
         
         // 개인정보 수정
         @RequestMapping(value="updateMember.do", method=RequestMethod.POST)
         public ModelAndView updateMember(ModelAndView mv, Member m, 
               @RequestParam("post") String post,
               @RequestParam("address1") String address1,
               @RequestParam("address2") String address2) {
            
            // 주소(우편번호, 도로명 주소, 상세주소) 
            m.setAddress(post + "," + address1 + "," + address2);
            
            // 새 비밀번호 암호화
            String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());
            m.setMemberPwd(encPwd);
            
            System.out.println(m);
            
            int followCount = memberService.selectOneFollowCount(m);
            int followingCount = memberService.selectOneFollowingCount(m);
            int reviewCount = memberService.selectOneReviewCount(m);
            int mylistCount = memberService.selectOneMyListCount(m);      
            int checkinCount = memberService.selectOneCheckInCount(m);
            String rename_name = memberService.selectOneProFile(m);
            
            int result = memberService.updateMemberInfo(m);
            
            if(result > 0) {
               mv.addObject("loginUser", m);
               mv.addObject("followCount",followCount);
               mv.addObject("followingCount",followingCount);
               mv.addObject("reviewCount",reviewCount);
               mv.addObject("mylistCount",mylistCount);
               mv.addObject("checkinCount",checkinCount);
               mv.addObject("rename_name",rename_name);
               mv.setViewName("mypage/myPageInfo");
            } else {
               throw new MemberException("내 정보 수정 실패");
            }
            
            return mv;
         }
         
         
         // 1:1문의 수정페이지 이동
         @RequestMapping("InquiryModify.do")
         public ModelAndView myPageInquiryModifyView(ModelAndView mv, int boardId) {
            System.out.println("넘어온 보드번호 : " + boardId);
            
            BoardInfo boardInfo = memberService.selectBoardInfo(boardId);
            
            System.out.println("조회된 보드 정보 는 : " + boardInfo);
            
            mv.addObject("boardInfo", boardInfo);
            mv.setViewName("mypage/myPageInquiryModify");
            return mv;
         }
         
         // 1:1문의 수정 버튼 클릭 시
         @RequestMapping(value="InquiryModifyBtn.do", method=RequestMethod.POST)
         public String myPageInquiryModifyBtn(BoardInfo boardInfo) {
            System.out.println("수정버튼 클릭 후 넘어온 값 : " + boardInfo);
            
            int result1 = memberService.updateBoard(boardInfo);
            int result2 = memberService.updateInquiry(boardInfo);
            
            
            return "redirect:myPageInquiry.do";
         }
         
         // 1:1 문의 삭제 버튼 클릭 시
         @RequestMapping("updateBoardStatus.do")
         public String updateBoardStatus(int boardId) {
            
            int result = memberService.updateBoardStatus(boardId);
            
            return "redirect:myPageInquiry.do";
         }
         
         // 1:1문의 페이지 이동
         @RequestMapping("myPageInquiry.do")
         public ModelAndView myPageInquiryView(ModelAndView mv, HttpSession session) {
            Member loginUser = (Member)session.getAttribute("loginUser");
             int memberId = loginUser.getMemberId();
            
             ArrayList<Select_Board> InquiryList = memberService.selectInquiry(memberId);
             
             System.out.println("조회된 문의 리스트 : " + InquiryList);
             mv.addObject("InquiryList",InquiryList);
            mv.setViewName("mypage/myPageInquiry");
            return mv;
         }
         
         
         // 회원 탈퇴페이지 이동
         @RequestMapping("myPageWithdrawal.do")
         public String myPageWithdrawalView() {
            return "mypage/myPageWithdrawal";
         }
         
         // 회원탈퇴 후 메인페이지로 이동
         @RequestMapping(value="WithdrawalComplete.do", method=RequestMethod.POST)
         public ModelAndView WithdrawalComplete(ModelAndView mv, Member m, SessionStatus status) {
            System.out.println(m); // 회원번호 확인용
            int result = memberService.updateMemberWithdrawal(m);
            
            if(result > 0) {
               status.setComplete(); // 회원탈퇴 후 메인페이지로 이동할 때 세션이 남아있는것을 방지
               mv.setViewName("redirect:main.do");
            }
            
            return mv;
         }

         
         
         // 체크인 페이지 이동
         @RequestMapping("myPageCheckin.do")
         public ModelAndView myPageCheckinView(ModelAndView mv, HttpSession session) {
            
            Member loginUser = (Member)session.getAttribute("loginUser");
            int memberId = loginUser.getMemberId();
            
            
            ArrayList<Select_Checkin> checkinList = memberService.selectCheckinList(memberId);
            System.out.println("뽑혀라!!! " + checkinList);
            
            mv.addObject("checkinList",checkinList);
            mv.setViewName("mypage/myPageCheckin");
            
            return mv;
         }
         
         
         
         // 체크인 등록 페이지 이동
         @RequestMapping("CheckinRegister.do")
         public String myPageCheckinRegisterView() {
            
            return "mypage/myPageCheckinRegister";
         }
         
         // 체크인 등록페이지 음식점 조회 ajax
         @RequestMapping("selectRes.do")
         public void myPageSelectRes(HttpServletResponse response, String restitle) throws JsonIOException, IOException {
            response.setContentType("application/json;charset=utf-8");
            
            System.out.println(restitle);
            ArrayList<Restaurant> res = memberService.selectListRestaurant(restitle);
            new Gson().toJson(res, response.getWriter());
            System.out.println(res);
            
         }
         
         
         // 체크인 등록 페이지에서 등록버튼 클릭 시
         @RequestMapping(value="myPageCheckinRegister.do", method=RequestMethod.POST)
         public ModelAndView myPageCheckinRegister(HttpServletRequest request, ModelAndView mv, Checkin ck, Member m,
               Image img, CheckinImage ckimg, @RequestParam(value="file", required=false) List<MultipartFile> files)
             {
            String folderName = "checkinImage";
            
            System.out.println("클릭페이지 : " + ck);
            // 체크인 테이블 인서트
            int result = memberService.insertCheckin(ck);
           
            for (MultipartFile file : files) {
               
               if(!file.getOriginalFilename().equals("")) {
            	   
            	   
            	   
                  String renameFileName = saveFile(file,request,folderName);
                  img.setImageOriginName(file.getOriginalFilename());
                  img.setImageNewName(renameFileName);
                  
                  // 이미지 테이블 인서트
                  int result2 = memberService.insertImage(img);
                  // 체크인 이미지 테이블 인서트
                  int result3 = memberService.insertCheckinImage(ckimg);
                  
               }
            }
            
            
            mv.setViewName("redirect:myPageCheckin.do");
            
            return mv;
         }
         
         
         // 체크인 수정 페이지 이동
         @RequestMapping("CheckinModify.do")
         public ModelAndView myPageCheckinModifyView(ModelAndView mv, int checkinId) {
            System.out.println("수정페이지로 넘어가는 체크인번호 : " + checkinId);
            
            ArrayList<Select_Checkin> modifyCheckinList = memberService.selectModifyCheckinList(checkinId);
            
            System.out.println(modifyCheckinList);
            
            mv.addObject("modifyCheckinList", modifyCheckinList);
            mv.addObject("checkinId", checkinId);
            mv.setViewName("mypage/myPageCheckinModify");
            return mv;
         }
         
         // 체크인 수정 페이지에서 수정버튼 클릭 시
         @RequestMapping(value="myPageCheckinModify.do", method=RequestMethod.POST)
         public ModelAndView myPageCheckinModify(HttpServletRequest request, ModelAndView mv, Checkin ck, String imageIds,
               Image img, CheckinImage ckimg, @RequestParam(value="file", required=false) List<MultipartFile> files)
             {
            String folderName = "checkinImage";
            
            System.out.println("수정페이지에서 넘어오는 값 : " + ck);
            System.out.println("수정페이지에서 넘어오는 이미지 번호 값 : " + imageIds);
            
            int result1 = 0;
            int result2 = 0;
            
            if(imageIds != null) {
               String[] IL = imageIds.split(",");      
               for(String imageNum : IL) {
                  result2 = memberService.deleteCheckinImage(imageNum);
                  result1 = memberService.deleteImage(imageNum);
               }
            }
            
            System.out.println("체크인 번호" + ckimg);
            
            // 체크인 테이블 인서트
            int result3 = memberService.updateCheckin(ck);
            
            for (MultipartFile file : files) {
               
               if(!file.getOriginalFilename().equals("")) {
            	   
                  String renameFileName = saveFile(file,request,folderName);
                  img.setImageOriginName(file.getOriginalFilename());
                  img.setImageNewName(renameFileName);
                  
                  // 이미지 테이블 인서트
                  int result4 = memberService.insertImage(img);
                  // 체크인 수정 시 체크인 이미지 테이블 인서트
                  int result5 = memberService.insertCheckinImage2(ckimg);
                  
               }
            }
            mv.setViewName("redirect:myPageCheckin.do");
            
            return mv;
         }
         
         // 체크인 삭제 버튼 클릭 시
         @RequestMapping("myPageCheckinDelete.do")
         public String myPageDelete( int checkinId) {
            System.out.println("체크인 번호 : " + checkinId);
            
            int result = memberService.deleteCheckinImage2(checkinId);
            int result2 = memberService.deleteCheckin(checkinId);
            
            
            return "redirect:myPageCheckin.do";
         }

         
         // 즐겨찾기 - 맛집 조회
         @RequestMapping("myPageFavoritesMZ.do")
         public ModelAndView myPageFavoritesMZView(ModelAndView mv, HttpSession session) {
             Member loginUser = (Member)session.getAttribute("loginUser");
              int memberId = loginUser.getMemberId();
            
              // 즐겨찾기한 맛집 리스트 조회
              ArrayList<MZ> MZList = memberService.selectMZ(memberId);
               
              System.out.println("맛집리스트 조회 결과 : " +MZList);
             
             mv.addObject("MZList",MZList);
            mv.setViewName("mypage/myPageFavoritesMZ");
            return mv;
         }
         
         // 즐겨찾기 - 맛집 목록 삭제
         @RequestMapping("deleteMZ.do")
         public ModelAndView deleteMZ(ModelAndView mv, int resBookMarkId) {
            System.out.println("클릭한 resBookMark번호 :" + resBookMarkId);
            
            int result = memberService.deleteMZ(resBookMarkId);
             
            mv.setViewName("redirect:myPageFavoritesMZ.do");
            return mv;
         }
         
         // 즐겨 찾기 - 맛집 클릭 시 해당 맛집 상세페이지로 이동
         @RequestMapping("detailMZ.do")
         public ModelAndView goDetailRestaurant(ModelAndView mv, int resId)
         {
            System.out.println(resId);
            Res restaurant = memberService.getRestaurantDetail(resId);
            Info info = memberService.getRestaurantInfo(resId);

				System.out.println(restaurant);
				mv.addObject("res", restaurant);
				mv.addObject("info", info);
				mv.setViewName("restaurant/detailRestaurant");
				return mv;
			}
			
         // 즐겨찾기 - 테마 조회
         @RequestMapping("myPageFavoritesTM.do")
         public ModelAndView myPageFavoritesTMView(ModelAndView mv, HttpSession session) {
             Member loginUser = (Member)session.getAttribute("loginUser");
              int memberId = loginUser.getMemberId();
            
              // 즐겨찾기한 맛집 리스트 조회
              ArrayList<TM> TMList = memberService.selectTM(memberId);
               
              System.out.println("맛집리스트 조회 결과 : " +TMList);
             
             mv.addObject("TMList",TMList);
            mv.setViewName("mypage/myPageFavoritesTM");
            return mv;
         } 
         
         // 즐겨찾기 - 테마 목록 삭제
         @RequestMapping("deleteTM.do")
         public ModelAndView deleteTM(ModelAndView mv, int themeBookMarkId) {
            System.out.println("클릭한 themeBookMarkId :" + themeBookMarkId);
            
            int result = memberService.deleteTM(themeBookMarkId);
             
            mv.setViewName("redirect:myPageFavoritesTM.do");
            return mv;
         }
         
         // 나의 멤버십 페이지 이동
         @RequestMapping("myPageMembership.do")
         public ModelAndView myPageMembershipView(ModelAndView mv, HttpSession session) {
            Member loginUser = (Member)session.getAttribute("loginUser");
             int memberId = loginUser.getMemberId();
            
             ArrayList<Select_Coupon> couponList = memberService.selectCouponList(memberId);
             
             System.out.println(couponList);
             
             mv.addObject("couponList",couponList);
            mv.setViewName("mypage/myPageMembership");
            return mv;
         }
         
         // 쿠폰 상태 변경 및 이메일 전송
         @RequestMapping("cStatusChange.do")
         public String cStatusChange(int couponListId, HttpSession session, Date couponStartDate, Date couponExpireDate) throws IOException {
            Member loginUser = (Member)session.getAttribute("loginUser");
             String email = loginUser.getEmail();
            
             // 쿠폰 상태 N -> Y
             int result = memberService.updatecStatus(couponListId);
             
             
             Random r = new Random();
            int dice = r.nextInt(4589362) + 49311;   //이메일로 받는 인증코드 부분(난수)
            
            String setfrom = "fooco@gmail.com";      //보내는 사람
            String title = "Fooco 인증 메일입니다";            //메일제목
            String content = "안녕하세요! Fooco입니다."+
                  System.getProperty("line.separator")+
                  System.getProperty("line.separator")+
                  "★★★★★유효기간은 "+ couponStartDate + " 부터 " +
                  couponExpireDate + " 까지입니다.★★★★★" +
                  System.getProperty("line.separator")+
                  System.getProperty("line.separator")+
                  "쿠폰 코드번호는 " + dice+ "입니다"+
                  System.getProperty("line.separator")+
                  System.getProperty("line.separator")+
                  "위의 코드번호를 사용하여 서비스를 제공받으세요!";
             
            
             try {
               MimeMessage message = mailSender.createMimeMessage();
               MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"utf-8");
               
                messageHelper.setFrom(setfrom);    // 보내는사람 생략하면 정상작동을 안함
                   messageHelper.setTo(email);       // 받는사람 이메일
                   messageHelper.setSubject(title);    // 메일제목은 생략가능
                   messageHelper.setText(content);    // 메일 내용
                  
                   mailSender.send(message);
                   System.out.println("이메일 전송됨!_!");
               
            } catch (MessagingException e) {
               e.printStackTrace();
               System.out.println(e);
            }
             
             
            return "redirect:myPageMembership.do";
         }
         
         
         	// 마이리뷰 페이지 이동
      			@RequestMapping("myPageReview.do")
      			public ModelAndView myPageReviewView(ModelAndView mv, HttpSession session) {
      				Member loginUser = (Member)session.getAttribute("loginUser");
      			    int memberId = loginUser.getMemberId();
      				
      			    ArrayList<Review> reviewList = new ArrayList<Review>();		
      				
      			    
      			    HashMap<String, Object> searchParameter = new HashMap<>();
      				searchParameter.put("memberId", memberId);
      			    
      				reviewList = memberService.getReviewList(searchParameter);
      				
      				System.out.println(reviewList);
      				
      				
      				mv.addObject("reviewList",reviewList);
      				mv.setViewName("mypage/myPageReview");
      				return mv;
      			}
                           
			// 마이리뷰 삭제 버튼 클릭 시
			@RequestMapping("deleteReview.do")
			public String deleteReview(int reviewId) {
				
				// 리뷰 이미지 관계 제거 메소드
				int result = memberService.deleteReviewImage2(reviewId);
				
				// 리뷰 삭제 작업 메소드
				int result2 = memberService.deleteReview(reviewId);
				
				return "redirect:myPageReview.do";
			}
			
			
			// 마이리뷰 수정 버튼 클릭 시 모달 ajax
			@RequestMapping("selectReviewInfo.do")
			public void selectReviewInfo(HttpServletResponse response, int reviewId) throws JsonIOException, IOException {
	            response.setContentType("application/json;charset=utf-8");
	            
	            System.out.println(reviewId);
	            Select_ReviewInfo reviewInfo = memberService.selectReviewInfo(reviewId);
	            
	            
	            new Gson().toJson(reviewInfo, response.getWriter());
	            System.out.println(reviewInfo);
	            
	         }
			
			
			// 마이리뷰 모달창에서 수정하기 버튼 클릭 시
			@RequestMapping(value="updateReview.do", method=RequestMethod.POST)
			public String updateReview(int reviewId, Review review, @RequestParam(value="realname", required=false) String realname
					, @RequestParam(value="filename", required=false) String filename
					, @RequestParam(value="filesize", required=false) String filesize)
			{
				System.out.println("수정값 넘어온것들 : " + review);
				System.out.println("realname" + realname + "filename" + filename + "filesize" + filesize);
				
				// 해당 리뷰번호에 대한 이미지 리스트 조회
				ArrayList<Image> imageList = memberService.selectImageList(reviewId);
				
				System.out.println("해당 리뷰의 이미지 리스트 : " + imageList);
				
				int result = 0;
				int result1 = 0;
				
				if(imageList != null) {
					
					for(int i=0; i<imageList.size(); i++) {
						// 해당 이미지 번호에 대한 리뷰이미지 테이블 관계 제거
						result = memberService.deleteReviewImage(imageList.get(i).getImageId());
						// 해당 이미지 번호에 대한 이미지 삭제 작업
						result1 = memberService.deleteImage2(imageList.get(i).getImageId());
						
					}
				}
				
				if(!realname.equals("") && !filename.equals("")) {
				
					String[] realnameArray = realname.split(",");
					String[] filenameArray = filename.split(",");
					
					ArrayList<Image> imageList2 = new ArrayList<Image>();
					
					for(int i=0; i<realnameArray.length; i++) {
						Image image = new Image();
						image.setImageOriginName(realnameArray[i].toString());
						image.setImageNewName(filenameArray[i].toString());	
						imageList2.add(image);
					}
					
		
				int result2 = 0;
				int result3 = 0;
				// 첨부파일이 없으면 인서트작업 안하기
			
					for(int i=0; i<imageList2.size(); i++) {
						// 이미지 테이블 인서트 작업
						result2 = memberService.insertImage2(imageList2.get(i));
						
						// 리뷰 이미지 테이블 인서트 작업
						result3 = memberService.insertReviewImage2(reviewId);
					}
					
					System.out.println("첨부된 이미지 객체 정보 :" + imageList2);
				}	
				// 마이리뷰 수정 버튼 클릭 시 리뷰값 수정
				int result4 = memberService.updateReview(review);
				
				
				
				System.out.println("모달 수정버튼에서 넘어오는 리뷰 번호 : " + reviewId);
				
				return "redirect:myPageReview.do";
				
			}
			
			
			
			
			
			
			
			
			
	
			
			
			
			
			
			
			
			
			
			
   // ================================== MyList 영은 ===========================================

   
   // 마이리스트 등록 페이지로 이동
   @RequestMapping("mylistRegist.do")
   public String mylistRegist() {
      return "mypage/mypageMylistRegist";
   }
   @RequestMapping("mylistRegistrationFin.do")
   public String mylistRegistrationFin() {
	   return "mypage/mylistRegistrationFin";
   }

   // 마이리스트 - 등록
   @RequestMapping(value = "insertMylist.do", method = { RequestMethod.GET, RequestMethod.POST })
   public ModelAndView restaurantThemeAdmin(HttpSession session, ModelAndView mv, String themeRList,
         String themeTitle) {
      int themeRListResult = 0;

      int themeWriter = 3002;
      Member loginUser = (Member) session.getAttribute("loginUser");
      themeWriter = loginUser.getMemberId();

      System.out.println(themeTitle);

      int result = memberService.insertMylist(themeTitle, themeWriter);

      String[] tRL = themeRList.split(",");
      for (String th : tRL) {
         themeRListResult = memberService.insertMylistRes(th);
      }

      mv.setViewName("redirect:mylistRegistrationFin.do");
      
      return mv;
   }

   // 마이리스트 - 등록된 마이리스트 확인
   @RequestMapping("myPageMylist.do")
   public ModelAndView selectmyPageMylist(ModelAndView mv, HttpSession session) {
      int memberId = ((Member) session.getAttribute("loginUser")).getMemberId();

      ArrayList<MyListAdmin> mylist = memberService.selectmyPageMylist(memberId);

      System.out.println("mylist db조회 후 화면에 뿌리기 전 : " + mylist);
 
         mv.addObject("mylist", mylist);
         mv.setViewName("mypage/myPageMylist");
       
      return mv;
   }

   //마이리스트 - 수정페이지로 이동
   @RequestMapping("moveMylistModifyPage.do")
   public ModelAndView MylistModifyPage(ModelAndView mv, MyListAdmin ma) {
      MyListAdmin mylistAdmin = memberService.selectOneMylist(ma);
      
      ArrayList<Restaurant> mylistRlist = memberService.selectListMylistRestaurant(ma);
      System.out.println(mylistRlist);
      
      mv.addObject("ma",mylistAdmin);
      mv.addObject("mylistRList",mylistRlist);
      mv.setViewName("mypage/mypageMylistModify");
      return mv;
   }

   
   //마이리스트 - 수정완료 후 이동되는 화면
   @RequestMapping("ModifyMylist.do")
   public ModelAndView MylistModifyPage(HttpSession session, ModelAndView mv, String mylistRList, MyListAdmin ma) {
      int mylistRListResult = 0;
      System.out.println(ma);
      System.out.println(mylistRList);
      //마이리스트 수정
      int result = memberService.modifyMylist(ma);
      
      //기존에 등록되어있는 음식점 리스트 삭제
      int deleteRListResult = memberService.deleteRList(ma);
      //새로운 리스트 추가 
      String[] tRL = mylistRList.split(",");
      for(String mh : tRL) {
         mylistRListResult = memberService.insertMylistRestaurant(mh,ma);
         
      }
      mv.setViewName("redirect:myPageMylist.do");
      return mv;
      
   }
   
   		//마이리스트 - 삭제 
      @RequestMapping("deleteMylist.do")
      public ModelAndView deleteMylist(ModelAndView mv, MyListAdmin ma) {
         int resultR = memberService.deleteMylistR(ma);
         int result = memberService.deleteMylist(ma);
         
         if(result > 0) {
            mv.setViewName("redirect:myPageMylist.do");
         }else {
            throw new MemberException("마이리스트 삭제 실패!");
         }
         
         return mv;
      }
      
      
      //마이리스트 - 추천
      @RequestMapping("recommendMylist.do")
      public ModelAndView recommendMylist(ModelAndView mv, MyListAdmin ma) {
    	  System.out.println(ma);
         int result = memberService.recommendMylist(ma);
         if(result > 0) {
        	 mv.setViewName("redirect:myPageMylist.do");
        	
         }else {
        	 throw new MemberException("추천하기 실패!");
         }
               
         return mv;
      }
      
      
      //마이리스트 -상세보기
      @RequestMapping("MylistDetail.do")
      public ModelAndView mylistDetail(ModelAndView mv, MyListAdmin mylist, Restaurant res) {
    	  MyListAdmin ma = memberService.mylistDetail(mylist);
    	  ArrayList<Restaurant> restaurant = memberService.mylistDetailR(mylist);
    	  System.out.println("마이리스트 디테일 : " + restaurant);
    	  mv.addObject("mylist",ma);
    	  mv.addObject("restaurant", restaurant);
    	  mv.setViewName("mypage/mypageMylistDetail");
    	  
    	  return mv;
      }
      
      
      
}