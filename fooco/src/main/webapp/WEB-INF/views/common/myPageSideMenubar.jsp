<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Insert title here</title>
</head>
<style>
@font-face {
	font-family: 'heavy';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff')
		format('woff');
	font-weight: bold;
	font-style: normal;
}

@font-face {
	font-family: 'bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'light';
}


/* a태그 */
a:hover {
	text-decoration: none;
	color: black;
}

a {
	color: black;
}



/* 왼쪽 메뉴바 */
.left_menubar {
	padding: 0 ;
	padding-right: 1rem;
}

.left_menubar_div {
	background: lightgray ;
	border-radius: 0.5rem ;
	padding: 1rem ;
}

.menubar_group {
	margin: 0;
	padding: 0.5rem;
	margin-bottom: 1rem;
	background: white;
	border-radius: 0.5rem;
}

.menubar_group_title {
	padding: 0;
}

.menubar_group_title>a>span {
	font-size: 1.3rem;
}

.menubar_group .row {
	margin: 0 ;
}

.menubar_group_member {
	margin-top: 0.3rem;
}

.menubar_group_member p {
	margin: 0;
	font-family: 'medium';
}

.menubar_group_member p:hover {
	color: rgb(204, 51, 98) ;
}

/* 내정보 확인 모달 버튼 스타일 */
.check_btn {
	width: 26rem;
	height: 2.5rem;
	font-size: 1rem ;
	font-family: 'medium';
}
</style>

<body>

	<div class="col-3 left_menubar">

		<div class="left_menubar_div shadow-sm">
			<div class="row row-cols-1 menubar_group shadow-sm">
				<div class="menubar_group_title">
				<c:url var="mypage" value="myPageInfo.do">
					<c:param name="memberId" value="${loginUser.memberId }"/>
				</c:url>
					<a href="${mypage }"><span style="font-family: 'bold';">&#x1F618;
							나의 활동</span></a>
				</div>
				<div class="col menubar_group_member">
				<c:url var="follow" value="follow.do">
					<c:param name="memberId" value="${loginUser.memberId }"/>
				</c:url>
				<c:url var="checkin" value="myPageCheckin.do">
					<c:param name="memberId" value="${loginUser.memberId }"/>
				</c:url>
				
					<a href="${follow }">
						<p>팔로우</p>
					</a> <a href="${checkin}">
						<p>체크인</p>
					</a> <a href="#">
						<p>마이리뷰</p>
					</a> <a href="myPageMylist.do">
						<p>마이리스트</p>
					</a>
				</div>
			</div>
			<div class="row row-cols-1 menubar_group">
				<div class="menubar_group_title">
					<span style="font-family: 'bold'; font-size: 1.3rem;">&#x1F495;
							즐겨찾기</span>
				</div>
				<div class="col menubar_group_member">
					<a href="myPageFavoritesMZ.do">
						<p>맛집</p>
					</a> <a href="myPageFavoritesTM.do">
						<p>테마</p>
					</a>
				</div>
			</div>
			<div class="row menubar_group">
				<div class="row menubar_group_title">
					<a href="#"><span style="font-family: 'bold';">&#x1F451;
							나의 멤버십</span></a>
				</div>
			</div>
			<div class="row menubar_group">
				<div class="row menubar_group_title">
					<a style="cursor: pointer;"><span style="font-family: 'bold';"
						data-toggle="modal" data-target="#pwdmodal">&#x1F440; 내 정보
							수정</span></a>
				</div>
			</div>
			<div class="row menubar_group">
				<div class="row menubar_group_title">
					<a href="myPageInquiry.do"><span style="font-family: 'bold';">&#x1F64B;
							1:1문의</span></a>
				</div>
			</div>
			<div class="row menubar_group" style="margin-bottom: 0;">
				<div class="row menubar_group_title ">
					<a href="myPageWithdrawal.do"><span style="font-family: 'bold';">&#x1F632;
							회원탈퇴</span></a>
				</div>
			</div>
		</div>
	</div>




	<!-- 내정보 수정 시 비밀번호 확인하는 Modal -->
	<form action="infoCheck.do" method="post" id="infoPwdCheckForm">
	<div class="modal fade" id="pwdmodal" tabindex="-1"
		aria-labelledby="pwdModalLabel" aria-hidden="true" style="top: 15rem;">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div style="text-align: center; padding-top: 1rem;">
					<span id="pwdModalLabel"
						style="margin: 0rem; font-family: 'bold'; font-size: 1.3rem;">비밀번호
						확인</span>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" style="padding-right: 1rem;">
						<span aria-hidden="true">&times;</span>
					</button>
					<hr style="margin-bottom: 0rem;">
				</div>

				<div class="modal-body" style="height: 12rem;">
					<div class="container-fluid"
						style="overflow-x: auto; height: 30rem;" align="center">
						<span style="font-family: 'medium';">회원님의 정보를 보호하기 위해 비밀번호를
							다시 확인합니다.</span>
						<div style="margin-top: 1.4rem; margin-bottom: 0.7rem;">
							<input type="password" id="memberPwd" name="memberPwd" placeholder="비밀번호"
								style="width: 26rem; height: 2.5rem;">
						</div>
							<input type="hidden" id="email" name="email" value="${loginUser.email }">
						<div>
							<button type="button" id="checkbtn" class="btn btn-primary btn-sm check_btn">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>


</body>

 <script>
 // 비밀번호 확인 후 내정보 수정하기 이동하는 ajax
  	$("#checkbtn").click(function(){
  		var memberPwd = $("#memberPwd").val();
  		var email = $("#email").val();
  		$.ajax({
  			url:"infoPwdCheck.do",
  			data:{memberPwd:memberPwd,email:email},
  			success:function(data){
  				if(data == "true"){
  					$("#infoPwdCheckForm").submit();
  				}else{
  					alert("비밀번호를 잘못 입력하셨습니다. 다시 입력해주세요.....")
  				}
  			},
  			error:function(request, status, errorData){
  				alert("error code: " + request.status + "\n"
  						+"message: " + request.responseText
  						+"error: " + errorData);
  			}
  		})
  	})
  	
  	
// 엔터 방지 - 엔터를 누르면 자동 submit이 되기때문에 방지하기위한 함수
$(document).keypress(function(e) {
	if (e.keyCode == 13) 
		e.preventDefault(); 
	});


  	
  </script>


</html>