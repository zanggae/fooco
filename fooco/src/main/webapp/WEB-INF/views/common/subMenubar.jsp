<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
     

        /* 헤더 네비게이션 서브 */
        .mainSubHeader {padding:0; height:3rem; background-color:rgb(204,51,98);}
        .nav-underline {margin:auto;}
        .msh-items {color:white; font-size:1.1rem;}
        .nav-underline a:hover {color:rgb(253,215,129);}
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
	margin:0px
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
}
/* hr태그 */
#for_first_modal hr {
	margin-left: 28px;
	width: 107%;
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
#selfSiteName {
	width: 100px;
	border: 1px solid gray;
	border-radius: 3px;
}
#selectEmail {
	height: 29px;
}
/* 비밀번호 찾기 버튼 */
#SearchPwd_btn {
	margin-left: 170px;
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
		
		
           <header>
            <nav class="navbar navbar-expand-xl shadow-sm mainHeader">
                <div class="container d-flex justify-content-between">
                    <a class="navbar-brand mh-navbar-brand" href="#">
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
                                <a class="nav-link dropdown-toggle mh-dropdown-toggle" onclick="openMenu();" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="header-menu-btn d-flex justify-content-center align-items-center">
                                        <i class="dropdown-title fas fa-align-justify" id="fa-align-justify" style="color:rgb(204,51,98); font-size:1.3rem;"></i>
                                        <i class="dropdown-title fas fa-times" id="fa-times" style="color:rgb(204,51,98); display:none; font-size:1.3rem;"></i>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right mh-dropdown-menu" aria-labelledby="dropdown07">
                                	<c:if test="${!empty loginUser }">                             	
                                    <a class="dropdown-item mh-dropdown-item" href="#">마이페이지</a> 
                                    </c:if>                                   
                                    <a class="dropdown-item mh-dropdown-item" href="#">지역 맛집</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">테마 맛집</a>

                                    <a class="dropdown-item mh-dropdown-item" href="#">멤버십</a>
                                    <a class="dropdown-item mh-dropdown-item" href="serviceCenterMain.do">고객센터</a>

                                    <!-- 추후 관리자 회원등록 시 수정 -->
                                    <a class="dropdown-item mh-dropdown-item" href="dashboard.do">관리자페이지</a>
                                    <div class="dropdown-divider"></div>
                                    <c:if test="${!empty loginUser }">
                                    <a class="dropdown-item mh-dropdown-item" href="mlogout.do">로그아웃</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="nav-scroller d-flex align-items-center shadow-sm mainSubHeader">
                <div class="container msh-container">
                    <div class="nav nav-underline d-flex justify-content-around">
                        <a class="nav-link msh-items" style="font-family:'medium'" href="#">지역 맛집</a>
                        <a class="nav-link msh-items" style="font-family:'medium'" href="#">테마 맛집</a>
                        <a class="nav-link msh-items" style="font-family:'medium'" href="#">멤버십</a>
                        <a class="nav-link msh-items" style="font-family:'medium'" href="serviceCenterMain.do">고객센터</a>
                    </div>
                </div>
            </div>
        </header>
            
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
                <input type="text" name="email" placeholder="이메일" id="email_input" required><span style="line-height: 30px;"></span>
                <input type="password" name="memberPwd" placeholder="비밀번호" id="pwd_input" required><span style="line-height: 50px;"></span>
                <button id="login_btn">LOGIN</button>
                <hr>
                <!-- 네이버 로그인 창으로 이동 -->
				<div id="naver_id_login" style="text-align:center"><a href="${url}">
				<img id="naver_login_img" width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div> 
              </div>
              <div id="forLine"></div>
              <div class="col">
                <img id="pwdimg" src="image/PlateCoupon.png">
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
            <h5>패스워드를 잊으셨나요?</h5>
            <p>아래에 이메일 주소를 입력하시면 임시비밀번호를 보내드립니다.</p><br>
            <form>
              <h5>이메일주소</h5>
              <input type="text" required id="email" placeholder="가입메일주소">
              <span style="font-size: 17px;">@</span>
              <input type="text" id="selfSiteName" required disabled>
              <select class="" id="selectEmail">
                <option value="e_option" selected>선택하세요</option>
                <option value="naver.com">naver.com</option>
                <option value="daum.net">daum.net</option>
                <option value="google.com">google.com</option>
                <option value="hanmail.net">hanmail.net</option>
                <option value="selfEmail" id="selfEmail">직접 입력</option>
              </select><br><br><br>
              <button type="button" id="SearchPwd_btn">비밀번호 찾기</button><br>
              <input type="reset" value="취소" id="SearchPwd_reset_btn">
            </form><br>
          </div>
        </div>
      </div>
    </div>
    
    <!-- 동적제어 시작 -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
    </script>
    <!-- 경남오빠 -->
    <script>
            function openMenu() {
                var open = document.getElementById("fa-align-justify");
                var close = document.getElementById("fa-times");

                if (open.style.display === "none") {
                    open.style.display = "inline";
                    close.style.display = "none";
                } else {
                    open.style.display = "none";
                    close.style.display = "inline";
                }
            }
            
        </script>
    <!--------------------1. 비밀번호 찾기 모달 영역------------------------------>
  <script>
    //비밀번호 찾기 시 로그인 모달 꺼지도록 함
    $("#toPwdSearch").click(function () {
      $("#myModal").modal("hide");
    })

    $("#SearchPwd_btn").on("click",function(){
      if($("#email").val()==""){
        alert("이메일을 입력해주세요");
        return;
      }
      if($("#selfSiteName").val()=="" &&($("#selectEmail").val()==""||$("#selectEmail").val()=="e_option")){
        alert("이메일주소를 선택해주세요");
        return;
      }
      if($("#selectEmail").val()=="selfEmail" && ($("#selfSiteName").val()=="")){
        alert("이메일 주소를 입력해주세요");
        $("#selfSiteName").focus();
        return;
      }
    })
    //이메일 선택 시 직접 입력창 활성화
    $("#selectEmail").change(function(){
            var selectedValue = $("#selectEmail").children("option:selected").html();
                
            if(selectedValue==$("#selfEmail").html()){
                $("#selfSiteName").prop("disabled", false).focus().prop("value", "");
            }else if(!$("#selfSiteName").prop("disabled")){
                $("#selfSiteName").prop("disabled", true).prop("value", "");
            }
            if($("#selfSiteName").prop("disabled")){
                $("#selfSiteName").css("background", "lightgray");
            }else if($("#selfSiteName").prop("disabled")==false){
                $("#selfSiteName").css("background", "white");
            }
        });
        if($("#selfSiteName").prop("disabled")){
                $("#selfSiteName").css("background", "lightgray");
        }


  </script>
  <!--------------------- 2.회원가입 페이지 이동 script -------------------------->
  <script>
  	function joinMemberView(){
  		$("#loginform").attr("action","joinMemberView.do");
    	$("#loginform").submit();
  	}
  </script>
  
  <!-- 추가로 해야할 것(지민)-->
<!--
  1. 로그인 - 존재하지않는 아이디나 비밀번호일 경우 alert창 띄워주기
-->
  
    
  
            
</body>
</html>