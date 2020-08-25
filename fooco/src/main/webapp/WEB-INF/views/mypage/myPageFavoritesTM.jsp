<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
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

  .card_div {padding:0.2rem;}
  .card_img_div {height:5rem;}
  .card_heart{color: rgb(204,51,98); position: absolute; z-index: 1; top: 7.7rem; left: 9.3rem; font-size: 2.5rem;}
  .card {padding:0.5rem; height: 11rem;}
  .thema_title{z-index: 2; position: absolute; top: 3rem; word-break: break-all; width: 10.5rem; font-size: 0.8rem; font-family: 'bold'; margin-left:0rem;}
</style>

<body>
	<header>
		<jsp:include page="../common/subMenubar.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content" style="padding:0rem;">
					<div class="main_content_div shadow-sm">
						 <div class="row center_title">
                <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F495; 즐겨찾기 - 테마</p>
              </div>
              <div class="row row-cols-3 center_content shadow_sm">
                
                <a href="#">
                <div class="card_div">
                  <div class="col card shadow-sm">
                    <div style="position: relative;">
                      <img src="img/버거테마.PNG" class="card-img-top" style="z-index: 0; height: 10rem;">
                    </div>
                    <p class="thema_title" align="center">서울 버거 맛집 Best 5!</p>
                    <i class="fas fa-heart card_heart"></i>
                  
                  </div>
                </div>
              </a>


              <a href="#">
                <div class="card_div">
                  <div class="col card shadow-sm">
                    <div style="position: relative;">
                      <img src="img/버거테마.PNG" class="card-img-top" style="z-index: 0; height: 10rem;">
                    </div>
                    <p class="thema_title" align="center">서울 버거 맛집 Best 5!</p>
                    <i class="fas fa-heart card_heart"></i>
                  
                  </div>
                </div>
              </a>

              <a href="#">
                <div class="card_div">
                  <div class="col card shadow-sm">
                    <div style="position: relative;">
                      <img src="resources/logo/galbi.jpg" class="card-img-top" style="z-index: 0; height: 10rem; margin:0rem;">
                    </div>
                    <p class="thema_title" align="center">서울 버거 맛집 Best 5!</p>
                    <i class="fas fa-heart card_heart"></i>
                  
                  </div>
                </div>
              </a>

              <a href="#">
                <div class="card_div">
                  <div class="col card shadow-sm">
                    <div style="position: relative;">
                      <img src="img/버거테마.PNG" class="card-img-top" style="z-index: 0; height: 10rem;">
                    </div>
                    <p class="thema_title" align="center">서울 버거 맛집 Best 5!asfsafasfafsafafaf</p>
                    <i class="fas fa-heart card_heart"></i>
                  
                  </div>
                </div>
              </a>

              <a href="#">
                <div class="card_div">
                  <div class="col card shadow-sm">
                    <div style="position: relative;">
                      <img src="img/버거테마.PNG" class="card-img-top" style="z-index: 0; height: 10rem;">
                    </div>
                    <p class="thema_title" align="center">서울 버거 맛집 Best 5!</p>
                    <i class="fas fa-heart card_heart"></i>
                  
                  </div>
                </div>
              </a>


              <a href="#">
                <div class="card_div">
                  <div class="col card shadow-sm">
                    <div style="position: relative;">
                      <img src="img/버거테마.PNG" class="card-img-top" style="z-index: 0; height: 10rem;">
                    </div>
                    <p class="thema_title" align="center">서울 버거 맛집 Best 5!</p>
                    <i class="fas fa-heart card_heart"></i>
                  
                  </div>
                </div>
              </a>


              </div>

					

						

					
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>




</html>