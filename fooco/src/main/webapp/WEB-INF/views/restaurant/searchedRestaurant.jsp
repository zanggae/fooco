<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

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
	
	/* 필터(1열) */
    .sr-filter {padding:1rem;}
    .sr-filter-div {border-radius:0.5rem; padding:1rem; background-color:#ECECEC;} 
    .sr-filter-title {font-family:'medium'; font-size:1rem;}
    .sr-filter-group {font-size:0.9rem;}

    /* 조회(2열) */
    .sr-content p {margin:0;}
    .sr-content-div {padding:1rem; padding-left:0; padding-right:0;}
    .sr-content-input {height:4rem; margin-bottom:0.5rem; background-color:#ECECEC; border-radius:0.5rem;}
    .sr-content-title {height:5rem; margin-bottom:0.5rem;}

    /* 검색 */
    .searchResult {margin-bottom:7rem;}
    .sr-content-selectLocal {width:10rem; margin-right:0.5rem;}
    .sr-content-input-local {text-align:center;}
    select {font-family:'FontAwesome'}
    .input-group-text {background-color:white;}
    .fa-map-marker-alt {color:rgb(204,51,98); font-size:1.3rem;}

    /* 검색 결과 맛집 리스트 */        
    .sr-content-list {margin-bottom:0.5rem; border-radius:0.5rem; background-color:#ECECEC; padding:0.9rem; }
    .sr-mz {margin:0; margin-bottom:1rem; padding-top:0.5rem; padding-bottom:0.5rem; padding-right:0.5rem; background-color:white; border-radius:0.5rem; cursor:pointer;}
    .sr-mz-title {padding-left:0.5rem;}
    .sr-mz-address {padding-left:0.5rem;}
    .sr-mz-address span {padding-left:0.5rem;}
    .sr-mz-rating {text-align:right;}
    .sr-mz-rating * {font-size:1.5rem; font-family:'bold'; color:#F4E04E;}
    .sr-mz-content {padding:0;}
    .sr-mz-content .row {padding-top:0.1rem; padding-bottom:0.1rem;}
    .sr-mz-content * {margin:0;}
    .sr-mz-bestReview > * {padding:0;}
    .sr-mz-bestReview-profile {padding:0; width:3rem; height:3rem;}
    .userProfile {max-width:100%; max-height:100%; border-radius:50%;}
    .badge-pill {background:rgb(204,51,98); color:white; margin-right:0.5rem;}
    .sr-mz-bestReview-content-div {padding-left:0; padding-right:0.5rem; margin-top:0.6rem; margin-bottom:0.3rem;}
    .sr-mz-viewWishBookmark {padding-right:0.5rem;}
    .sr-mz-viewWishBookmark * {font-size:0.7rem;}
    .sr-mz-viewWishBookmark i {margin-left:0.4rem;}
    .sr-mz-viewWishBookmark span {margin-left:0.2rem;}
    .sr-mz-img-col {padding-left:0.5rem; padding-right:0.5rem;}
    .sr-mz-img {border-radius:0.2rem; overflow:hidden;}
    .resThumbnail {width:100%; height:9.5rem; border-radius:0.2rem; transition-duration:0.3s; transition-timing-function:ease;}
    .sr-mz:hover .resThumbnail {transform:scale(1.1);}
    .bookmarkheart {font-size:2.3rem; margin:0.5rem; color:#BA262B;}

    /* 광고 */
    .sr-ad-col {height:9rem; margin-bottom:1rem; background-color:#ECECEC; border-radius:0.5rem;}

    /* 비슷한 음식점 */
    .sr-recommend-div {padding:1rem;}
    .sr-recommend-col {padding:0.5rem; background-color:#ECECEC; border-radius:0.5rem; margin-bottom:1rem;}
    .sr-recommend-title-row {margin:0;}
    .sr-recommend-title-row p {margin:0.3rem;}
    .sr-recommend-content-row {margin:0; margin-bottom:0.3rem; padding:0;}
    .sr-recommend-boundary {padding:0.1rem; margin-bottom:0.3rem;}
    .sr-recommend-boundary .row {margin:0;}
    .sr-recommend-card {background-color:white; border-radius:0.5rem; margin:0;}
    .sr-recommend-card-title {height:2rem;}
    .sr-recommend-card-content {padding:0.5rem;}
    .sr-recommend-card-img {padding:0.5rem; height:4.5rem;}
    .sr-recommend-card-img img {width:100%;}

    /* 파트너 음식점 추천 */
    .sr-partner-col {padding:1rem; height:20rem; background-color:#ECECEC; border-radius:0.5rem;}
    .sr-partner-title-row {margin:0;}
</style>
</head>
<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"/>
	</header>
	<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
	<section>
		<div class="container searchResult">
			<div class="row sr-breadcrumb">
				<nav class="sr-breadcrumb-nav">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">HOME</a></li>
						<li class="breadcrumb-item active" aria-current="page">검색 결과</li>
					</ol>
				</nav>
			</div>
			<div class="row row-cols-3 sr-row">
				<div class="col-2 sr-filter">
					<div class="sr-filter-div">
						<div style="margin-bottom: 1.2rem;">
							<span class="sr-filter-title">정렬</span>
							<div class="sr-filter-group">
								<div class="custom-control custom-radio">
									<input id="highrating" type="radio" name="sort-radio" value="highrating" class="custom-control-input" checked required>
									<label class="custom-control-label" for="highrating">평점 높은 순</label>
								</div>
								<div class="custom-control custom-radio">
									<input id="highReviewCount" type="radio" name="sort-radio" value="highReviewCount" class="custom-control-input" required>
									<label class="custom-control-label" for="highReviewCount">리뷰 많은 순</label>
								</div>
								<div class="custom-control custom-radio">
									<input id="highViewCount" type="radio" name="sort-radio" value="highViewCount" class="custom-control-input" required>
									<label class="custom-control-label" for="highViewCount">조회수 많은 순</label>
								</div>
							</div>
						</div>
						<div style="margin-bottom: 1.2rem;">
							<span class="sr-filter-title">메뉴</span>
							<div class="sr-filter-group">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="korean">
									<label class="custom-control-label" for="korean">한식</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="flour">
									<label class="custom-control-label" for="flour">분식</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="cafe">
									<label class="custom-control-label" for="cafe">카페·디저트</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="japanese">
									<label class="custom-control-label" for="japanese">돈까스·회·일식</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="chicken">
									<label class="custom-control-label" for="chicken">치킨</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="pizza">
									<label class="custom-control-label" for="pizza">피자</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="global-food">
									<label class="custom-control-label" for="global-food">아시안·양식</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="chinese">
									<label class="custom-control-label" for="chinese">중식</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="jokbo">
									<label class="custom-control-label" for="jokbo">족발·보쌈</label>
								</div>
							</div>
						</div>
						<div>
							<span class="sr-filter-title">기타</span>
							<div class="sr-filter-group">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="parking">
									<label class="custom-control-label" for="parking">주차</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="wifi">
									<label class="custom-control-label" for="wifi">와이파이</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="indoor-room">
									<label class="custom-control-label" for="indoor-room">룸</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="no-kids-zone">
									<label class="custom-control-label" for="no-kids-zone">노키즈존</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="outdoor-chair">
									<label class="custom-control-label" for="outdoor-chair">야외좌석</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="baby-facility">
									<label class="custom-control-label" for="baby-facility">유아시설</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="partner-restaurant">
									<label class="custom-control-label" for="partner-restaurant">파트너 맛집</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-7 sr-content">
					<div class="row row-cols-1 sr-content-div">
						<div class="col sr-content-input d-flex align-items-center">
							<div class="sr-content-selectLocal input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">
										<i class="fas fa-map-marker-alt"></i>
									</span>
								</div>
								<select class="form-control sr-content-input-local">
									<option selected>전체</option>
									<option>서울</option>
									<option>인천</option>
									<option>부산</option>
									<option>대구</option>
									<option>광주</option>
									<option>대전</option>
									<option>울산</option>
									<option>그 외</option>
								</select>
							</div>
							<input type="search" class="form-control" placeholder="먹고 싶은 음식(한식, 중식, 분식)이나 맛집 이름을 입력하세요."/>
						</div>
						<div class="col sr-content-title d-flex flex-column justify-content-center">
							<p style="font-family: 'medium'; color: rgb(204, 51, 98);">${location}</p>
							<p style="font-family: 'bold'; font-size: 1.5rem;">'${keyword}'(으)로 검색한 결과</p>
						</div>
						<div class="col sr-content-list">
							<c:forEach var="res" items="${list}">
							<div class="row sr-mz shadow-sm" id="sr-mz" onclick="goDetail(${res.resId});">
								<div class="col-4 sr-mz-img-col">
									<div class="sr-mz-img shadow-sm d-flex justify-content-end align-items-end">
										<img class="resThumbnail" src="${contextPath}/resources/${res.resThumbnailImage.imageFilepath}/${res.resThumbnailImage.imageNewName}">
									</div>
								</div>
								<div class="col-8 sr-mz-content">
									<div class="row sr-mz-titleRating">
										<div class="col-9 sr-mz-title">
											<span style="font-family: 'bold'; font-size: 1.5rem; color:black;">${res.resName}</span>
										</div>
										<div class="col-3 sr-mz-rating">
											<span><i class="fas fa-star"></i><fmt:formatNumber type="number" value="${res.reviewRating}" pattern="0.0"/></span>
										</div>
									</div>
									<div class="row sr-mz-address d-flex align-items-center">
										<i class="fas fa-map-marker-alt"></i>
										<span style="font-family: 'medium'; font-size: 1rem;">${res.locationName}</span>
										<span style="font-size: 0.8rem;">${res.resAddress}</span>
									</div>
									<div class="row">
										<c:if test="${not empty res.bestReview}">
										<div class="row" class="sr-mz-bestReview">
											<div class="col-2 sr-mz-bestReview-profile">
												<div class="sr-mz-bestReview-profile-div">
													<img class="userProfile" src="${contextPath}/resources/${res.bestReview.reviewerProfilePath}/${res.bestReview.reviewerProfileImg}"/>
												</div>
											</div>
											<div class="col-10 sr-mz-bestReview-content-div">
												<div class="row sr-mz-bestReivew-nickname" style="font-size: 0.8rem;">
													<span class="badge badge-pill">best</span>
													<span style="font-family: 'medium'">${res.bestReview.nickname}</span>
												</div>
												<div class="row sr-mz-bestReivew-content" style="font-size: 0.8rem;">
													<span>${res.bestReview.reviewContent}</span>
												</div>
											</div>
										</div>
										</c:if>
									</div>
									<div class="row sr-mz-viewWishBookmark d-flex justify-content-end align-items-center">
										<i class="fas fa-eye"></i> <span><fmt:formatNumber type="number" value="${res.resViewCount}"/></span>
										<i class="fas fa-heart"></i> <span><fmt:formatNumber type="number" value="${res.resBookmarkCount}"/></span>
										<i class="fas fa-pencil-alt"></i> <span><fmt:formatNumber type="number" value="${res.resReviewCount}"/></span>
									</div>
								</div>
							</div>
							</c:forEach>
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
	</section>
	<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
	<footer>
	</footer>
	
	<script>
		function goDetail(resId) {
			window.location.href="goDetailRestaurant.do?resId=" + resId;
		};
	</script>
	
	<script>
		window.onload = function(){
			var sortType = document.querySelector("input[name='sort-radio']:checked").value;
			console.log(sortType);
		};
	</script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</body>
</html>