<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* 헤더 네비게이션 바 */
        .mainHeader {padding:0; background-color:rgb(253,215,129);}
        .logo {width:8rem; height:4.5rem;}
        .mh-navbar-brand {padding:0;}
        .fa-user-circle {margin-right:0.5rem; color:rgb(204,51,98); font-size:2.3rem;}
        .mh-dropdown-title {color:black; font-size:1.1rem;}
        .mh-dropdown-menu {text-align:right; border:none; background-color:whitesmoke;}
        .mh-dropdown-menu a:hover {color:white; background-color:rgb(204,51,98);}
        .mh-dropdown-toggle::after {display:none;}
        .mh-dropdown-item {font-family:'medium';}
        .header-menu-login {margin-right:0.3rem;}
        .header-menu-login:hover {text-decoration:none;}
        .header-menu-btn {border:0.2rem solid rgb(204,51,98); width:2rem; height:2rem; border-radius:0.2rem;}
        
        /* 모달 기본 설정 */
		.modal fade, .modal-content, .container {
			margin: 0 auto;
			padding: 0px;
		}
		/* ----------------------1.로그인 모달창----------------------- */
		/* 클릭 시 모달 창 띄우는 버튼 */
		#for_login_modal{
			background:none;
			border:none;
			color:black;
			font-size:16px;
			padding:0px;
			margin:0px;
			box-shadow:none;
		}
		/* 모달 가로 넓게 */
		#for_first_modal {
			width: 129%;
		}
		/* 모달 헤더(LOGIN) */
		#myModalLabel {
			margin: 5 auto;
			padding: 5px;
			padding-left: 15px;
			width: 210%;
			height: 12px;
			background: rgb(253, 215, 129);
			color: rgb(204, 51, 98);
			border-top-left-radius: 3px;
			border-top-right-radius: 3px;
			font-weight: bold;
			font-size: 50px;
		}
		/* 모달창 끄기(x표) */
		.close {
			margin-right: 10px;
			margin-top: 7px;
		}
		/* 세로선 */
		#forLine {
			top: 0px;
			bottom: 0px;
			height: 250px;
			border: none;
			border-left: 1px solid lightgray;
			margin-left: 60px;
			margin-top: -40px;
		}
		/* input태그 */
		#for_first_modal input {
			width: 90%;
			margin-left: 50px;
			border:none;
			border-bottom : 1px solid black;
			outline:none;
		}
		/* '매일매일 즐거운 푸코와 함께'' 문구 */
		#login_first_line{
			position:absolute;
			margin-top:10px;
			margin-left: 50px;
			font-size:11px;
		}
		/* 로그인 버튼 */
		#login_btn {
			margin-left: 125px;
			width: 80px;
			height: 36px;
			border: none;
			border-radius: 3px;
			color: white;
			background: RGB(204, 51, 98);
			box-shadow:none;
			/* font-weight: bold; */
		}
		#login_btn:hover {
			border: 1px solid rgb(204, 51, 98);
			background: rgb(253, 215, 129);
			color: rgb(204, 51, 98);
		}
		/* 회원가입 버튼 */
		#JoinMember_btn {
			margin-left: 54px;
			width: 150px;
			height: 36px;
			border: none;
			border-radius: 3px;
			/* color: RGB(253, 215, 129); */
			color: white;
			background: rgb(204, 51, 98);
			margin-top: 115px;
			/* font-weight: bold; */
		}
		#JoinMember_btn:hover {
			border: 1px solid rgb(204, 51, 98);
			background: rgb(253, 215, 129);
			color: rgb(204, 51, 98);
		}
		#naver_login_img{
			margin-left:-60px;
			margin-top:2px;
			width:200px;
			height:40px;
		}
		/* 이미지 사진 */
		#pwdimg {
			margin-top: -20px;
			margin-left: 59px;
			position: absolute;
			width: 45%;
			height: 55%;
		}
		/* 비밀번호 찾기 */
		#toPwdSearch {
			background: white;
			border: none;
			position: absolute;
			margin-left: 53%;
			font-size: 13px;
			color: gray;
		}
		#toPwdSearch:hover {
			text-decoration: underline;
		}
		/* ----------------------2.비밀번호 찾기 모달창----------------------- */
		/* 제목(Recovery Account) */
		#staticBackdropLabel {
			margin: 5 auto;
			padding: 5px;
			padding-left: 15px;
			color: rgb(204, 51, 98);
			font-weight: bold;
		}
		#forh5 h5, #forh5 p, #email {
			margin-left: 20px;
		}
		/* 이메일 입력창 */
		#emailchange {
			margin-left:30px;
			width: 400px;
			height:40px;
			border: 1px solid gray;
			border-radius: 3px;
		}
		/* 비밀번호 찾기 버튼 */
		#SearchPwd_btn {
			margin-left: 170px;
			margin-top:20px;
			width: 150px;
			height: 36px;
			border: none;
			border-radius: 3px;
			color: white;
			background: rgb(204, 51, 98);
		}
		#SearchPwd_btn:hover {
			border: 1px solid rgb(204, 51, 98);
			background: rgb(253, 215, 129);
			color: rgb(204, 51, 98);
		}
		/* 취소하기 버튼 */
		#SearchPwd_reset_btn {
			margin-left: 88%;
			background: white;
			border: none;
		}
		#SearchPwd_reset_btn:hover {
			text-decoration: underline;
		}

		
		

</style>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>

            <nav class="navbar navbar-expand-xl shadow-sm mainHeader">
                <div class="container d-flex justify-content-between">
                    <a class="navbar-brand mh-navbar-brand" href="goMain.do">
                        <img class="logo" src="resources/logo/logo.png">
                    </a>
                    <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarsExample07">
                        <div class="navbar-nav d-flex align-items-center">
                         <c:if test="${empty loginUser }">
                            <a class="header-menu-login d-flex align-items-center" href="#">
                                <i class="fas fa-user-circle"></i>
                                <span class="mh-dropdown-title" style="font-family:'bold'"><button type="button"  id="for_login_modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" >로그인</button></span>
                            </a>
                          </c:if>
                          <c:if test="${!empty loginUser }">
                          <a class="header-menu-login d-flex align-items-center" href="#">
                                <i class="fas fa-user-circle"></i>
                                <span class="mh-dropdown-title" style="font-family:'bold'"><c:out value="${loginUser.nickName}님"/></span>
                          </a>
                          </c:if>
                            <div class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle mh-dropdown-toggle" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="header-menu-btn d-flex justify-content-center align-items-center">
                                        <i class="dropdown-title fas fa-align-justify" id="fa-align-justify" style="color:rgb(204,51,98); font-size:1.3rem;"></i>
                                        <i class="dropdown-title fas fa-times" id="fa-times" style="color:rgb(204,51,98); display:none; font-size:1.3rem;"></i>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right mh-dropdown-menu" aria-labelledby="dropdown07">
                                	<c:if test="${!empty loginUser }">
                                	<c:url var="mypage" value="myPageInfo.do">
									<c:param name="memberId" value="${loginUser.memberId }"/>
									</c:url>                             	
                                    <a class="dropdown-item mh-dropdown-item" href="${mypage}">마이페이지&#x1F490;</a> 
                                    </c:if>                                   


                                    <!-- <a class="dropdown-item mh-dropdown-item" href="myPageInfo.do">지역 맛집</a> -->
                                    <a class="dropdown-item mh-dropdown-item" href="themeMain.do">테마 맛집&#x1F46A;</a>

                                    <a class="dropdown-item mh-dropdown-item" href="goSearchedRestaurant.do">지역 맛집&#x1F690;</a>
                                

                                    <a class="dropdown-item mh-dropdown-item" href="goMembershipInfo.do">멤버십&#x1F381;</a>
                                    <a class="dropdown-item mh-dropdown-item" href="serviceCenterMain.do">고객센터&#x1F4AC;</a>

                                    <!-- 회원 이름이 '관리자'만 보이도록-->
                                    <c:if test="${!empty loginUser && loginUser.nickName eq '관리자'}">
                                    <a class="dropdown-item mh-dropdown-item" href="dashboard.do">관리자페이지&#x1F4CA;</a>
                                    </c:if>
                                    <c:if test="${!empty loginUser }">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item mh-dropdown-item" href="mlogout.do">로그아웃 &#x1F494;</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            
	<!-- 김경남: 메뉴 열고 닫을 때 아이콘 변경하는 스크립트 -->
    <script>
    	function openMenu() {
    		var open = document.getElementById("fa-align-justify");
    		var close = document.getElementById("fa-times");
    		
    		if(open.style.display === "none") {
    			open.style.display = "inline";
    			close.style.display = "none";
    		}else {
    			open.style.display = "none";
				close.style.display = "inline";
			}
    	}
    </script>
            
            
            
    <!-- 1.로그인 모달 영역 -->
    <form action="mlogin.do" method="post" id="loginform">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content" id="for_first_modal">
          <div class="container">
            <div class="row">
              <div class="col">
                <h4 class="modal-title" id="myModalLabel">LOGIN</h4><br><br><br><br>
              </div>
              <div class="col">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">x</span></button>
              </div>
              <div class="w-100"></div>
              <div class="col">
              	<p id="login_first_line">매일매일 즐거운 Fooco와 함께!</p><br>
                <input type="text" name="email" placeholder="&#x1F4E7;이메일" id="email_input"><span style="line-height: 40px;"></span>
                <input type="password" name="memberPwd" placeholder="&#x1F512;비밀번호" id="pwd_input"><span style="line-height: 50px;"></span><br>
                <button id="login_btn" onclick="login_btn();">LOGIN</button> 
              </div>
              <div id="forLine"></div>
              <div class="col">
                <img id="pwdimg" src="resources/etcimage/membershipInfoimg2.png">
                <button id="JoinMember_btn" onclick="joinMemberView();">회원가입</button><br><br>
                <button type="button" id="toPwdSearch" class="btn btn-primary" data-toggle="modal"
                  data-target="#staticBackdrop">비밀번호 찾기</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
   
    <!--2.비밀번호 찾기 모달-->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
      aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h2 class="modal-title" id="staticBackdropLabel">Account Recovery</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div id="forh5">
            <br>
            <h5>패스워드를 잊으셨나요?&#x1F61F;</h5>
            <p>아래에 이메일 주소를 입력하시면 임시비밀번호를 보내드립니다.</p><br>
            <form id="searchPwdForm" action="searchMemberPwd.do" method="post">
			  <h5>이메일주소</h5>
              <input type="email" id="emailchange" name="emailchange" placeholder="가입메일주소" required>
              <input type="hidden" id="memberId" name="idForchange">
              <button type="button" id="SearchPwd_btn" onclick="searchPwd();">비밀번호 찾기</button><br>
              <input type="reset" value="취소" id="SearchPwd_reset_btn">
            </form><br>
          </div>
        </div>
      </div>
    </div>
            
            
            
   <!--------------------1. 비밀번호 찾기 모달 영역------------------------------>
  <script>
    //비밀번호 찾기 시 로그인 모달 꺼지도록 함
    $("#toPwdSearch").click(function () {
      $("#myModal").modal("hide");
    })

  </script>
  
    <!-- 비밀번호 찾기  이메일 전송 -->
  <script>
  	function searchPwd(){
  	   //이메일 정규 표현식
  	   var regEx =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
       var emailchange = $("#emailchange").val();
       var memberId = $("#memberId").val();
       console.log(emailchange);
       console.log("회원아이디 : " + memberId);
       
       if(!regEx.test($("#emailchange").val())){
    	   alert("이메일 올바르게 작성해주세요");
    	   $("#emailchange").focus();
    	   return;
       }
       if($("#emailchange").val()==""){
    	   alert("이메일을 입력하세요");
           $("#emailchange").focus();
           return;
       }else{
    	   location.href="searchMemberPwd.do?emailchange="+emailchange; 
       }
  	}
  </script>
  <!--------------------- 2.회원가입 페이지 이동 script -------------------------->
  <script>
  	function joinMemberView(){
  		$("#loginform").attr("action","joinMemberView.do");
    	$("#loginform").submit();
  	} 
  </script>
  
  <!-- 로그인 시 null처리 -->
  <script>
  	function loginbtn(){
  		console.log("여기오는지");
  		
  		document.location.href=returnUrl;
  		if($("#email_input").val()==""){
  			alert("이메일을 입력하세요");
  			 $("#email_input").focus();
  			 return;
  		}
  		if($("#pwd_input").val()==""){
  			alert("비밀번호를 입력하세요");
  			$("#pwd_input").focus();
  			return;
  		}
  		/* $("#loginform").submit();  */
  		}
  </script>
  

  
</body>
</html>