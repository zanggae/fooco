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

					<div class="row shadow-sm" style="background-color: white; border-radius: 0.5rem; padding-top: 1rem;">
                  <div class="col-2"></div>
                  <div class="col-8">
                    <form action="">
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>이름</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="name">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>이메일</span>
                        </div>
                        <div class="col-7">
                          <input type="email" name="email">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>닉네임</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="nickname">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>새 비밀번호</span>
                        </div>
                        <div class="col-7">
                          <input type="password" name="newpwd">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>새 비밀번호 확인</span>
                        </div>
                        <div class="col-7">
                          <input type="password" name="checknewpwd">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>성별</span>
                        </div>
                        <div class="col-7">
                          <input type="radio" id="male" name="gender" value="M" checked>
                          <label for="male">남자</label>&nbsp;&nbsp;&nbsp;
          
                          <input type="radio" id="female" name="gender" value="F">
                          <label for="female">여자</label>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>연락처</span>
                        </div>
                        <div class="col-7">
                          <input type="tel" name="phone">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>우편번호</span>
                        </div>
                        <div class="col-7">
                          <div class="row">
                          <input type="text" name="post" style="width: 8rem;">&nbsp;
                          <button type="button" class="btn btn-secondary btn-sm">검색</button>
                          </div>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-5">
                          <span>도로명 주소</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="address1">
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 2rem;">
                        <div class="col-5">
                          <span>상세주소</span>
                        </div>
                        <div class="col-7">
                          <input type="text" name="address2">
                        </div>
                      </div>                   
                      <div class="row" style="margin-bottom: 1rem;">
                        <div class="col" align="center">
                          <input type="submit" class="btn btn-primary btn-sm" value="수정완료">&nbsp;
                        </div>
                      </div>
                    </form>
                  </div>
                    <div class="col-2"></div>
                </div>

						

					
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>



</html>