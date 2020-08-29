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
                  <form action="">
                    <div class="row" style="margin-bottom: 0.7rem;">
                      <div class="col-4">
                        <p class="withdrawal_font" style="margin-right: 2.4rem;">비밀번호</p>
                      </div>
                      <div class="col-6">
                        <input type="password" class="form-control" style="width: 20rem;">
                      </div>
                    </div>
                    <div class="row" style="margin-bottom: 0.7rem;">
                      <div class="col-4">
                        <p class="withdrawal_font">비밀번호 확인</p>
                      </div>
                      <div class="col-6">
                        <input type="password" class="form-control" style="width: 20rem;">
                      </div>
                    </div>
                    <div class="row" style="margin-bottom: 0.7rem;">
                      <div class="col-4">
                        <p class="withdrawal_font" style="margin-right: 2rem;">탈퇴 사유</p>
                      </div>
                      <div class="col-6">
                        <select class="form-control" style="width: 20rem;">
                          <option selected value="">선택</option>
                          <option value="withdrawal1">탈퇴사유 1</option>
                          <option value="withdrawal2">탈퇴사유 2</option>
                          <option value="withdrawal3">탈퇴사유 3</option>
                          <option value="withdrawal4">탈퇴사유 4</option>
                        </select>
                      </div>
                    </div>
              
                    <div class="row" style="margin-top: 2rem;">
                      <div class="col" align="center">
                        <input type="submit" class="btn btn-secondary btn-sm" value="탈퇴완료" onclick="withdrawalcheck();">&nbsp;
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


</html>