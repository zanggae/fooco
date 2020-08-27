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

.card_div {
	padding: 0.2rem;
}

.card_img_div {
	height: 5rem;
}

.card_heart {
	color: rgb(204, 51, 98);
	position: absolute;
	z-index: 1;
	top: 4.3rem;
	left: 7rem;
	font-size: 1.5rem;
}

.card {
	padding: 0.5rem !important;
}

.card-body {
	padding: 0;
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
				<div class="col-7 main_content" style="padding: 0rem;">
					<div class="main_content_div shadow-sm">
						<div class="row">
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F495;
								즐겨찾기 - 맛집</p>
						</div>
						<div class="row row-cols-4 center_content shadow_sm">
							<a href="">
								<div class="card_div">
									<div class="col card shadow-sm" style="height: 12rem;">
										<div style="position: relative;">
											<img src="resources/logo/galbi.jpg" class="card-img-top"
												style="z-index: 0;">
										</div>
										<i class="fas fa-heart card_heart"></i>
										<div class="card-body" style="margin: 0; padding: 0;">
											<p class="card-text" style="font-family:'bold'; font-size:1rem; height:3rem; margin-bottom:0;">동원이가 제일
												좋아하는 갈비찜</p>
											<p
												style="font-family: 'bold'; font-size: 0.8rem; color: #F4E04E
											; margin-bottom: 0;">
												<i class="fas fa-star"></i>4.9
											</p>
											<p
												style="font-family: 'medium'; font-size: 0.8rem; margin-bottom: 0;">
												<i class="fas fa-map-marker-alt"
													style="color: rgb(204, 51, 98); margin-bottom: 0;"></i> 인천
											</p>
										</div>
									</div>
								</div>
							</a>
							<a href="">
								<div class="card_div">
									<div class="col card shadow-sm" style="height: 12rem;">
										<div style="position: relative;">
											<img src="resources/logo/galbi.jpg" class="card-img-top"
												style="z-index: 0;">
										</div>
										<i class="fas fa-heart card_heart"></i>
										<div class="card-body" style="margin: 0; padding: 0;">
											<p class="card-text" style="font-family:'bold'; font-size:1rem; height:3rem; margin-bottom:0;">동원이가 제일
												좋아하는 갈비찜</p>
											<p
												style="font-family: 'bold'; font-size: 0.8rem; color: #F4E04E
											; margin-bottom: 0;">
												<i class="fas fa-star"></i>4.9
											</p>
											<p
												style="font-family: 'medium'; font-size: 0.8rem; margin-bottom: 0;">
												<i class="fas fa-map-marker-alt"
													style="color: rgb(204, 51, 98); margin-bottom: 0;"></i> 인천
											</p>
										</div>
									</div>
								</div>
							</a>
							<a href="">
								<div class="card_div">
									<div class="col card shadow-sm" style="height: 12rem;">
										<div style="position: relative;">
											<img src="resources/logo/galbi.jpg" class="card-img-top"
												style="z-index: 0;">
										</div>
										<i class="fas fa-heart card_heart"></i>
										<div class="card-body" style="margin: 0; padding: 0;">
											<p class="card-text" style="font-family:'bold'; font-size:1rem; height:3rem; margin-bottom:0;">동원이가 제일
												좋아하는 갈비찜</p>
											<p
												style="font-family: 'bold'; font-size: 0.8rem; color: #F4E04E
											; margin-bottom: 0;">
												<i class="fas fa-star"></i>4.9
											</p>
											<p
												style="font-family: 'medium'; font-size: 0.8rem; margin-bottom: 0;">
												<i class="fas fa-map-marker-alt"
													style="color: rgb(204, 51, 98); margin-bottom: 0;"></i> 인천
											</p>
										</div>
									</div>
								</div>
							</a>
							<a href="">
								<div class="card_div">
									<div class="col card shadow-sm" style="height: 12rem;">
										<div style="position: relative;">
											<img src="resources/logo/galbi.jpg" class="card-img-top"
												style="z-index: 0;">
										</div>
										<i class="fas fa-heart card_heart"></i>
										<div class="card-body" style="margin: 0; padding: 0;">
											<p class="card-text" style="font-family:'bold'; font-size:1rem; height:3rem; margin-bottom:0;">동원이가 제일
												좋아하는 갈비찜</p>
											<p
												style="font-family: 'bold'; font-size: 0.8rem; color: #F4E04E
											; margin-bottom: 0;">
												<i class="fas fa-star"></i>4.9
											</p>
											<p
												style="font-family: 'medium'; font-size: 0.8rem; margin-bottom: 0;">
												<i class="fas fa-map-marker-alt"
													style="color: rgb(204, 51, 98); margin-bottom: 0;"></i> 인천
											</p>
										</div>
									</div>
								</div>
							</a>
							<a href="">
								<div class="card_div">
									<div class="col card shadow-sm" style="height: 12rem;">
										<div style="position: relative;">
											<img src="resources/logo/galbi.jpg" class="card-img-top"
												style="z-index: 0;">
										</div>
										<i class="fas fa-heart card_heart"></i>
										<div class="card-body" style="margin: 0; padding: 0;">
											<p class="card-text" style="font-family:'bold'; font-size:1rem; height:3rem; margin-bottom:0;">동원이가 제일
												좋아하는 갈비찜</p>
											<p
												style="font-family: 'bold'; font-size: 0.8rem; color: #F4E04E
											; margin-bottom: 0;">
												<i class="fas fa-star"></i>4.9
											</p>
											<p
												style="font-family: 'medium'; font-size: 0.8rem; margin-bottom: 0;">
												<i class="fas fa-map-marker-alt"
													style="color: rgb(204, 51, 98); margin-bottom: 0;"></i> 인천
											</p>
										</div>
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