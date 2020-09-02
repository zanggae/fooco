<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

  /* 회원탈퇴 스타일 */
  .withdrawal_div{background-color: white; border-radius: 0.5rem; padding-top :2rem; padding-bottom: 2rem;}
  .withdrawal_font{margin: 0rem; font-family: 'medium'; font-size: 1.1rem; vertical-align: middle; padding: 0.5rem;}

</style>

<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<!-- 왼쪽 메뉴바 -->
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content" style="padding:0;">
					<div class="main_content_div shadow-sm">
						              <div class="row">
                <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F632; 회원탈퇴</p>
              </div>
              
              <div class="row shadow-sm withdrawal_div">
                <div class="col" align="center">
                 <form action="WithdrawalComplete.do" method="post" id="infoPwdCheckForm1">
                    <div class="row" style="margin-bottom: 0.7rem;">
                      <div class="col-4">
                        <p class="withdrawal_font" style="margin-right: 2.4rem;">비밀번호</p>
                      </div>
                      <div class="col-6">
                        <input type="password" class="form-control" id="memberPwd1" name="memberPwd" style="width: 20rem;">
                      </div>
                    </div>
                    <div class="row" style="margin-bottom: 0.7rem;">
                      <div class="col-4">
                        <p class="withdrawal_font">비밀번호 확인</p>
                      </div>
                      <div class="col-6">
                        <input type="password" class="form-control" id="memberPwd2" style="width: 20rem;">
                      </div>
                    </div>
                    	<input type="hidden" name="memberId" value="${loginUser.memberId }">
                    	<input type="hidden" id="email" name="email" value="${loginUser.email }">
                    <div class="row" style="margin-top: 2rem;">
                      <div class="col" align="center">
                      	<button type="button" id="withdrawalbtn" class="btn btn-secondary btn-sm">탈퇴완료</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>

					
					</div>
				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>


<script>
  function withdrawalcheck(){
    alert("그 동안 이용해주셔서 감사합니다.")
  }
</script>

<script>
 // 비밀번호 확인 후 내정보 수정하기 이동하는 ajax
  	$("#withdrawalbtn").click(function(){
  		var memberPwd = $("#memberPwd1").val();
  		var email = $("#email").val();
  		$.ajax({
  			url:"infoPwdCheck.do",
  			data:{memberPwd:memberPwd,email:email},
  			success:function(data){
  				if(data == "true" &&  $("#memberPwd1").val() == $("#memberPwd2").val()){
  					 alert("그 동안 이용해주셔서 감사합니다.")
  					$("#infoPwdCheckForm1").submit();
  				}else{
  					alert("비밀번호를 잘못 입력하셨습니다. 다시 입력해주세요.")
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