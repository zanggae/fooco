<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
	/* 폰트 */
	@font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
	@font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
	@font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
	@font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
	* {font-family:'light';}


	/* breadcrumb */
	.breadcrumb {background-color:white; margin-bottom:0; padding-bottom:0;}
	.breadcrumb * {font-family:'medium'}
	.breadcrumb a {color:rgb(204,51,98);}
	
	
	/* 디테일 */
	.detail {padding-right:0;}
	.detail .row {margin:0;}
	.mz-img-biggest-col {padding:0;}
	.mz-img-biggest {width:100%; height:18.5rem;}
	.mz-img-small-col {padding:0;}
	.mz-img-small-col-inner {padding:0; padding-left:0.5rem; padding-bottom:0.5rem;}
	.mz-img-small {width:100%; height:9rem;}
	.mz-content {position:sticky; top:0; background:white; z-index:2;}
	.mz-content > div {padding:0;}
	.mz-content-top > div {padding:0;}
	.mz-content-bottom ul {width:100%;}    
	.mz-rating {color:#F4E04E; margin:0; text-align:end;}
	.mz-explanation {padding-top:0.5rem; padding-bottom:0.5rem;}
	.mz-buttons {padding-top:0.5rem; padding-bottom:0.5rem;}   
	.mz-location {padding:0;}
	.mz-address {padding-left:0;}
	.mz-bookmark-button {background-color:#ECECEC; border:none; font-family:'medium'; margin-right:0.5rem;}
	.mz-review-button {background-color:rgb(204,51,98); color:white; border:none; font-family:'medium';}
	.mz-nav-item a {font-family:'bold'; color:rgb(204,51,98);}
	.mz-content-bottom {width:100%;}
	
	
	/* 리뷰 탭 */
	.tab-content {width:100%;}
	
	
	/* 광고 */
	.sr-ad-col {height:9rem; margin-bottom:1rem; background-color:#ECECEC; border-radius:0.5rem;}


	/* 비슷한 음식점 */
	.sr-recommend-div {padding:1rem; padding-top:0;}
	.sr-recommend-col {padding:0.5rem; background-color:#ECECEC; border-radius:0.5rem; margin-bottom:1rem;}


	/* 파트너 음식점 추천 */
	.sr-partner-col {padding:1rem; height:20rem; background-color:#ECECEC; border-radius:0.5rem;}


	/* 리뷰 작성하기 모달 */
	.write-review-mz-img {width:100%; height:6rem;}
	.modal-header {text-align:center;}
	.modal-body .row {margin:0;}
	.starRating {cursor:pointer; margin:0;}
	.reviewContent {font-size:0.8rem;}
	#browseBtn {background-color:rgb(204,51,98); width:100%; height:2.5rem; color:white; font-family:'medium'; font-size:1rem; border:none; border-bottom-left-radius:0.25rem; border-bottom-right-radius:0.25rem;}
	
	
	/* 사진 자세히보기 모달 */
	.view-photoDetail-modal {background-color:rgba(0,0,0,0.7);}
	.carousel-control-prev {width:7%;}
	.carousel-control-next {width:7%;}
	.carousel-control-prev-icon {color:rgb(204,51,98);}
	.carousel-control-next-icon {color:rgb(204,51,98);}
	.photoDetail-img {height:30rem; border-radius:0.5rem;}
	.mz-review-rating-row .col-10 {color:#F4E04E;}
</style>
</head>
<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"/>
	</header>
	<section>
		<div class="container">
			<div class="row breadcrumb-row">
				<nav class="breadcrumb-nav">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">HOME</a></li>
						<li class="breadcrumb-item active" aria-current="page">검색 결과</li>
					</ol>
				</nav>
			</div>
			<div class="row" style="padding-top: 1rem;">
				<div class="col-9 detail">
					<div class="row mz-img-row">
						<div class="col mz-img-biggest-col">
							<div class="mz-img-biggest-div">
								<img src="resPhoto/sushi (1).jpg" class="mz-img-biggest">
							</div>
						</div>
						<div class="col mz-img-small-col">
							<div class="row row-cols-2">
								<div class="col mz-img-small-col-inner">
									<div class="mz-img-small-div">
										<img src="resPhoto/sushi (2).jpg" class="mz-img-small">
									</div>
								</div>
								<div class="col mz-img-small-col-inner">
									<div class="mz-img-small-div">
										<img src="resPhoto/sushi (3).jpg" class="mz-img-small">
									</div>
								</div>
								<div class="col mz-img-small-col-inner">
									<div class="mz-img-small-div">
										<img src="resPhoto/sushi (4).jpg" class="mz-img-small">
									</div>
								</div>
								<div class="col mz-img-small-col-inner">
									<div class="mz-img-small-div">
										<img src="resPhoto/sushi (5).jpg" class="mz-img-small">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mz-content">
						<div class="row mz-content-top">
							<div class="col-8">
								<div class="row mz-title">
									<span style="font-family: 'heavy'; font-size: 2.5rem;">경남스시</span>
								</div>
								<div class="row">
									<div class="col-2 mz-location">
										<i class="fas fa-map-marker-alt"
											style="color: rgb(204, 51, 98); font-size: 1.5rem;"></i> <span
											style="font-family: 'bold'; font-size: 1.5rem;">인천</span>
									</div>
									<div class="col-10 mz-address d-flex align-items-center">
										<p style="font-family: 'medium'; font-size: 1rem; margin: 0;">인천시
											남동구 서창동 661-3</p>
									</div>
								</div>
								<div class="row mz-explanation">
									<span style="font-size: 0.9rem;">수년간 자체 연구를 통해 개발한 그릴과
										숙성 기술로 차별화된 스테이크를 제공하는 정통 아메리칸 스테이크 하우스</span>
								</div>
							</div>
							<div class="col-4 d-flex align-items-start flex-column">
								<div class="ml-auto mb-auto mz-rating">
									<span style="font-family: 'heavy'; font-size: 2.5rem;"><i
										class="fas fa-star"></i>4.9</span>
								</div>
								<div class="ml-auto mz-buttons d-flex">
									<input type="button" value="&#x1F495; 즐겨찾기" class="form-control mz-bookmark-button shadow-sm"
										data-toggle="modal" data-target="#view-photoDetail"> <input
										type="button" value="&#x1F4DD; 리뷰쓰기"
										class="form-control mz-review-button shadow-sm"
										data-toggle="modal" data-target="#write-review">
								</div>
							</div>
						</div>
						<div class="row mz-content-bottom">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item mz-nav-item"><a class="nav-link active"
									data-toggle="tab" href="#mz-detail">상세정보</a></li>
								<li class="nav-item mz-nav-item"><a class="nav-link"
									data-toggle="tab" href="#mz-review">리뷰</a></li>
								<li class="nav-item mz-nav-item"><a class="nav-link"
									data-toggle="tab" href="#mz-photo">사진</a></li>
							</ul>
						</div>
					</div>
					<div class="row mz-selection">
						<div class="tab-content">
							<div class="tab-pane active" id="mz-detail">
								<jsp:include page="restaurantInfo.jsp"/>
							</div>
							<div class="tab-pane fade" id="mz-review">
								<jsp:include page="restaurantReview.jsp"/>
							</div>
							<div class="tab-pane fade" id="mz-photo">
								<jsp:include page="restaurantPhoto.jsp"/>
							</div>
						</div>
					</div>
				</div>
				<div class="col-3 sr-recommend">
					<div class="row row-cols-1 sr-recommend-div">
						<div class="col sr-ad-col">
							<jsp:include page="restaurantAd.jsp"/>
						</div>
						<div class="col sr-recommend-col">
							<jsp:include page="recommendedRestaurant.jsp"/>
						</div>
						<div class="col sr-partner-col">
							<jsp:include page="partnerRestaurant.jsp"/>
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- 리뷰 작성하기 모달 -->
		<div class="modal fade" id="write-review" data-backdrop="static"
			data-keyboard="false" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<span class="modal-title" id="write-review-title"
							style="font-family: 'heavy'; font-size: 1.5rem;">리뷰 작성하기</span>
					</div>
					<div class="modal-body">
						<div class="row d-block">
							<div class="row">
								<span style="font-family: 'bold'; font-size: 1.3rem;">경남스시</span>
							</div>
							<div class="row d-flex align-items-center">
								<i class="fas fa-map-marker-alt"
									style="color: rgb(204, 51, 98); font-size: 1.3rem; margin-right: 0.3rem;"></i>
								<span style="font-family: 'medium'; font-size: 1rem;">인천</span>
							</div>
							<div class="row">
								<span style="font-size: 0.8rem;">인천시 남동구 서창동 661-3</span>
							</div>
						</div>
						<hr>
						<div class="row d-block">
							<div class="row">
								<span>별점 매기기</span>
							</div>
							<div class="row d-block">
								<div class="row">
									<div class="col-2">
										<span>맛</span>
									</div>
									<div class="col-10 starRating">
										<i class="far fa-star" data-rating="1" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="2" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="3" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="4" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="5" style="font-size: 1rem"></i>
										<input type="hidden" name="tasteScore"
											class="tasteScore reviewScore" value="3">
									</div>
								</div>
								<div class="row">
									<div class="col-2">
										<span>가격</span>
									</div>
									<div class="col-10 starRating">
										<i class="far fa-star" data-rating="1" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="2" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="3" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="4" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="5" style="font-size: 1rem"></i>
										<input type="hidden" name="priceScore"
											class="priceScore reviewScore" value="3">
									</div>
								</div>
								<div class="row">
									<div class="col-2">
										<span>서비스</span>
									</div>
									<div class="col-10 starRating">
										<i class="far fa-star" data-rating="1" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="2" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="3" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="4" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="5" style="font-size: 1rem"></i>
										<input type="hidden" name="serviceScore"
											class="serviceScore reviewScore" value="3">
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="row d-block">
							<div class="row">
								<span>내용 입력하기</span>
							</div>
							<div class="row">
								<textarea class="form-control" rows="5" class="reviewContent"
									style="font-size: 0.8rem; resize: none;"></textarea>
							</div>
						</div>
						<hr>
						<div class="row d-block">
							<div class="row">
								<span>파일 첨부하기</span>
							</div>
							<div class="row">
								<div id="attachFile" style="width: 100%;"></div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn" data-dismiss="modal">취소하기</button>
						<button type="button" class="btn">등록하기</button>
					</div>
				</div>
			</div>
		</div>



		<!-- 사진 자세히보기 모달 -->
		<div class="modal fade" id="view-photoDetail" tabindex="-1">
			<div class="modal-dialog modal-xl modal-dialog-centered">
				<div class="modal-content view-photoDetail-modal">
					<div class="modal-body">
						<div class="row">
							<div class="col-7" style="padding: 0;">
								<div id="carouselExampleControls" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="carousel-item active">
											<img src="resPhoto/sushi (1).jpg"
												class="d-block w-100 photoDetail-img" alt="...">
										</div>
										<div class="carousel-item">
											<img src="resPhoto/sushi (2).jpg"
												class="d-block w-100 photoDetail-img" alt="...">
										</div>
										<div class="carousel-item">
											<img src="resPhoto/sushi (3).jpg"
												class="d-block w-100 photoDetail-img" alt="...">
										</div>
									</div>
									<a class="carousel-control-prev"
										href="#carouselExampleControls" role="button"
										data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="carousel-control-next"
										href="#carouselExampleControls" role="button"
										data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
							</div>
							<div class="col-5" style="padding-right: 0;">
								<div class="row d-flex justify-content-end">
									<button type="button" class="close d-flex justify-content-end"
										data-dismiss="modal">
										<i class="fas fa-times"
											style="color: white; font-size: 1.1rem;"></i>
									</button>
								</div>
								<div class="row mz-review-div" style="padding-right: 0;">
									<div class="col-2 mz-review-userProfile-div">
										<div class="mz-userProfile-img">
											<img src="profile/luffy.jpg" class="mz-userProfile">
										</div>
									</div>
									<div class="col-10 mz-review-content-div">
										<div class="row" style="padding-right: 0.5rem;">
											<div class="col-8">
												<div class="row">
													<span
														style="font-size: 1.2rem; font-family: 'bold'; color: white;">와니</span>
												</div>
												<div class="row">
													<span style="font-size: 0.7rem; color: lightgray;">리뷰
														32개 · 팔로워 51명</span>
												</div>
											</div>
											<div class="col-4">
												<div class="mz-review-follow-btn-div"
													style="text-align: end;">
													<input type="button" value="팔로우"
														class="mz-review-follow-btn" style="margin-top: 0.5rem;">
												</div>
											</div>
										</div>
										<div class="row mz-review-rating-row">
											<div class="row">
												<div class="col-2">
													<span style="font-family: 'medium'; color: white;">맛</span>
												</div>
												<div class="col-10">
													<i class="fas fa-star"></i><i class="fas fa-star"></i><i
														class="fas fa-star"></i><i class="fas fa-star"></i><i
														class="fas fa-star"></i>
												</div>
											</div>
											<div class="row">
												<div class="col-2">
													<span style="font-family: 'medium'; color: white;">가격</span>
												</div>
												<div class="col-10">
													<i class="fas fa-star"></i><i class="fas fa-star"></i><i
														class="fas fa-star"></i><i class="fas fa-star"></i><i
														class="fas fa-star"></i>
												</div>
											</div>
											<div class="row">
												<div class="col-2">
													<span style="font-family: 'medium'; color: white;">서비스</span>
												</div>
												<div class="col-10">
													<i class="fas fa-star"></i><i class="fas fa-star"></i><i
														class="fas fa-star"></i><i class="fas fa-star"></i><i
														class="fas fa-star"></i>
												</div>
											</div>
										</div>
										<div class="row mz-review-rating-date">
											<span style="font-size: 0.7rem; color: lightgray;">2020-07-30</span>
										</div>
										<div class="row" style="padding-right: 0.5rem; color: white;">
											<p style="font-size: 0.8rem; margin: 0;">
												진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
												맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots"
													id="dots">...</span> <span class="review-content-more"
													id="review-content-more"> 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
													진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
													맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
													진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
													맛있어요~! 진짜 진짜 맛있어요~! </span>
											</p>
											<a class="review-content-more-btn"
												id="review-content-more-btn"
												style="font-size: 0.8rem; font-family: 'medium'; cursor: pointer;"
												onclick="readmore()">더 보기</a>
										</div>
										<div class="row mz-review-rating-good">
											<span style="font-size: 0.7rem; color: lightgray;">좋아요
												32개</span>
										</div>
										<div class="row mz-review-rating-good-btn">
											<a class="review-content-good-btn"
												id="review-content-good-btn" onclick="pushGood()"
												style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
												좋아요</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer></footer>
</body>
</html>