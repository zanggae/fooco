<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/4b6b63d8f6.js"
	crossorigin="anonymous"></script>
	
	
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

/* 페이지 전체 */
.mypage_container {
	padding: 0 !important;
	margin-top: 3rem !important;
}

.myPage-row {
	margin: 0;
}

/* 가운데 내용 */
.main_content {
	margin: 0;
	padding: 0;
}

.main_content_div {
	background: lightgray;
	border-radius: 0.5rem;
	padding: 1rem;
}

.main_content .row {
	margin: 0;
}

   .guide{
      display:none;
      font-size:0.8rem;;
   }
   label.ok{color:green;}
   label.error{color:red;}
</style>

<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content">
					<div class="main_content_div shadow-sm">
						<div class="row">
                <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F440; 내 정보 수정</p>
              </div>
		
					<div class="row shadow-sm" style="background-color: white; border-radius: 0.5rem; padding-top: 1rem; padding-left:2rem;">
                  <div class="col-12">
                    <form action="updateMember.do" method="get" id="infoModifyForm">
                    	<input type="hidden" name="memberId" value="${loginUser.memberId}">
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>이름</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="memberName" value="${loginUser.memberName }" readonly>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>이메일</span>
                        </div>
                        <div class="col-7">
                          <input type="email" name="email" value="${loginUser.email }" readonly>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>닉네임</span>
                        </div>
                        <div class="col-8">
                          <input type="text" id="nickName" class="nickNames" name="nickName" value="${loginUser.nickName }" readonly>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>새 비밀번호</span>
                        </div>
                        <div class="col-8">
                          <input type="password" id="userPwd1" name="memberPwd" required>
                           <span style="font-size: 0.63rem;">8~16자의 영문자,숫자 사용하여 입력</span>
              				<label id="resultPwd1"></label>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>새 비밀번호 확인</span>
                        </div>
                        <div class="col-7">
                          <input type="password" id="userPwd2" required>
                          <label id="resultPwd2"></label>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>성별</span>
                        </div>
                        <div class="col-7">
                          <input type="hidden" id="gender" name="gender" value="${loginUser.gender }">
                          <span id="genderArea"></span>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>연락처</span>
                        </div>
                        <div class="col-7">
                          <input type="tel" name="phone" value="${loginUser.phone }">
                        </div>
                      </div>
                      
                      <!-- address값이 null일때 -->
                      <c:if test="${empty loginUser.address }">
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>우편번호</span>
                        </div>
                        <div class="col-7">
                          <div class="row">
                          <input type="text" name="post" 
						 	class="postcodify_postcode5" value="${post }" style="width: 8rem;">&nbsp;
                          <button type="button" id="postcodify_search_button" class="btn btn-secondary btn-sm">검색</button>
                          </div>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>도로명 주소</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="address1"
						 	      class="postcodify_address" value="${address1 }">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 2rem;">
                        <div class="col-4">
                          <span>상세주소</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="address2"
						 		  class="postcodify_extra_info" value="${address2 }">
                        </div>
                      </div>
                      </c:if>
                      
                      <!-- address값이 null이 아닐때 -->
                      <c:if test="${!empty loginUser.address }">
                     <c:forTokens var="addr" items="${loginUser.address }" delims="," varStatus="status">
					 <c:if test="${status.index eq 0 }">
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>우편번호</span>
                        </div>
                        <div class="col-7">
                          <div class="row">
                          <input type="text" name="post" 
						 	class="postcodify_postcode5" value="${addr }" style="width: 8rem;">&nbsp;
                          <button type="button" id="postcodify_search_button" class="btn btn-secondary btn-sm">검색</button>
                          </div>
                        </div>
                      </div>
                      </c:if>
					 <c:if test="${status.index eq 1 }">
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-4">
                          <span>도로명 주소</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="address1"
						 	      class="postcodify_address" value="${addr }">
                        </div>
                      </div>
                      </c:if>
					 <c:if test="${status.index eq 2 }">
                      <div class="row" style="margin-bottom: 2rem;">
                        <div class="col-4">
                          <span>상세주소</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="address2"
						 		  class="postcodify_extra_info" value="${addr }">
                        </div>
                      </div>
                      </c:if>
                      </c:forTokens>
                      </c:if>
                      
                      <!-- Postcodify를 로딩하자 -->
				 <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				 <script>
				 	$(function(){
				 		$("#postcodify_search_button").postcodifyPopUp();
				 	})
				 </script>
                      
                                         
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col" align="center">
                          <button type="button" class="btn btn-primary btn-sm" onclick="validate();">수정완료</button>&nbsp;
                        </div>
                      </div>
                    </form>
                  </div>
                   
                </div>
					
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>

<script>
	$(function gender() {
		var man = "남자";
		var girl = "여자";

		if ($("#gender").val() == "M") {
			document.getElementById("genderArea").innerHTML = man;
		} else {
			document.getElementById("genderArea").innerHTML = girl;
		}
	})
</script>

<script>
	  //정규표현식(비밀번호)
	  $(function(){
	     var FalseStyle = {"color":"red","font-size":"0.8rem","margin-bottom":"0rem"};
	     var TrueStyle = {"color":"green","font-size":"0.8rem","margin-bottom":"0rem"};
	
	  //비밀번호 정규 표현식 : 8~16자의 영문자,숫자 + 비밀번호 일치 여부
	  $("#userPwd1").change(function(){
	    var regEx = /^[A-Za-z0-9]{8,16}$/;
	    if(!regEx.test($("#userPwd1").val())){
	      $("#resultPwd1").html("8~16자의 영문자,숫자 사용").css(FalseStyle);
	      $(this).val('').focus();
	    }else{
	      $("#resultPwd1").html("비밀번호로 사용 가능합니다.").css(TrueStyle);
	    }
	  }).keyup(function(){
	      if($(this).val()!=$('#userPwd2').val()&&$('#userPwd2').val()!=''){
	          $('#resultPwd2').html('비밀번호가 일치하지 않습니다.').css(FalseStyle)
	      }
	      if($(this).val()==$('#userPwd2').val()&&$('#userPwd2').val()!=''){
	          $('#resultPwd2').html('비밀번호가 일치합니다.').css(TrueStyle)
	      }
	  });
	
	  $('#userPwd2').change(function(){
	      if($(this).val()!=$('#userPwd1').val()){
	          $('#resultPwd2').html('비밀번호가 일치하지 않습니다').css(FalseStyle)
	          $('#userPwd2').prop('value', '').focus();
	      }else{
	          $('#resultPwd2').html('비밀번호가 일치합니다.').css(TrueStyle)
	      }
	  }).keyup(function(){
	      if($(this).val()==$('#userPwd1').val()&&$('#userPwd2').val()!=''){
	          $('#resultPwd2').html('비밀번호가 일치합니다.').css(TrueStyle)
	      }
	      if($(this).val()!=$('#userPwd1').val()&&$(this).val()!=''){
	          $('#resultPwd2').html('비밀번호가 일치하지 않습니다.').css(FalseStyle);
	      }
	  });
	
	     
	  })
</script>



<script>
// 조건 맞으면 submit
function validate(){

if($("#userPwd1").val()==""){
    swal("새 비밀번호를 입력하세요");
    $("#userPwd1").focus();
    return;
  }
if($("#userPwd1").val()!= $("#userPwd2").val()){
    swal("새 비밀번호 확인해 주세요");
    $("#userPwd2").focus();
    return;
  }  
  
	$("#infoModifyForm").submit();
	swal("전송이 되었습니다.");

}

</script>


</html>