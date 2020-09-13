<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mz-review-title {font-size:1.5rem; font-family:'bold'; margin-top:1rem;}
	.mz-sort-selection {width:25%; padding:0; margin:0;}
	.review-sort-label {font-size:1.1rem; font-family:'medium'; padding:0; margin:0; margin-right:1rem;}
	.mz-review-list {background:#ECECEC; padding:1rem; padding-bottom:0; border-radius:0.5rem;}
	.mz-review-div {padding:1rem; margin-bottom:1rem !important; background-color:white; border-radius:0.3rem;}
	.mz-review-userProfile-div {padding:0;}
	.mz-userProfile-img {border-radius:50%; width:4rem; height:4rem; overflow:hidden; align-items:center; justify-content:center;}
	.mz-userProfile {width:100%; height:100%;}
	.mz-review-content-div {padding-right:0;}
	.mz-review-content-div > div {padding:0;}
	.mz-review-content-div > div > div {padding:0;}
	.mz-review-follow-btn-div {padding:0 !important;}
	.mz-review-follow-btn {margin:0 !important; background:rgb(204,51,98); border:none; height:2rem; border-radius:0.2rem; color:white; font-family:'medium'; font-size:1rem; width:6rem;}
	.mz-review-delete-btn {margin:0 !important; background:rgb(204,51,98); border:none; height:2rem; border-radius:0.2rem; color:white; font-family:'medium'; font-size:1rem; width:7rem;}
	.mz-review-rating-row {font-size:0.8rem; display:block; margin-top:0.5rem !important;}
	.mz-review-rating-row > div > div {padding:0;}
	.mz-review-rating-row .col-11 {color:#F4E04E;}
	.mz-review-rating-date {margin-bottom:0.5rem !important;}
	.review-content-more {display:none;}
	.review-content-more-btn {color:rgb(204,51,98);}      
	.review-content-more-btn:hover {color:rgb(204,51,98);}
	.mz-review-rating-good {margin-top:0.5rem !important;}
	.mz-review-rating-good-btn {margin-bottom:0.5rem !important;}
	.mz-reviewPhoto-col {padding:0; padding-right:0.5rem !important;}
	.mz-reviewPhoto-div {border-radius:0.3rem; overflow:hidden;}
	.mz-reviewPhoto {width:100%; height:6rem; border-radius:0.3rem; transition-duration:0.3s; transition-timing-function:ease;}
	.mz-reviewPhoto-div:hover .mz-reviewPhoto {transform:scale(1.1);}
	
	/* 사진 자세히보기 모달 */
	.view-photoDetail-modal {background-color:rgba(0,0,0,0.7);}
	.modal {background-color:none !important;}
	.carousel-control-prev {width:7%;}
	.carousel-control-next {width:7%;}
	.carousel-control-prev-icon {color:rgb(204,51,98);}
	.carousel-control-next-icon {color:rgb(204,51,98);}
	.photoDetail-img {height:32rem; border-radius:0.5rem;}
	.mz-review-rating-row .col-10 {color:#F4E04E;}
	.noLatestImage {background:#ECECEC;}
	.carousel-control.left, .carousel-control.right {left: 0; z-index: 1};
}
</style>
</head>
<body>
	<div class="row">
		<div class="col" style="padding: 0;">
			<p class="mz-review-title">&#x1F4DD; 리뷰</p>
		</div>
		<div class="col form-group mz-sort-selection d-flex justify-content-end align-items-center">
			<label for="review-sort" class="review-sort-label">정렬</label>
			<div class="review-sort-input">
				<select class="form-control form-control-sm review-sort" id="review-sort">
					<option value="latest" selected>최신 순</option>
					<option value="oldest">오래된 순</option>
					<option value="highrating">평점 높은 순</option>
					<option value="lowrating">평점 낮은 순</option>
				</select>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${empty reviewList}">
			<div class="row row-cols-1 mz-review-list">
				<div class="emptyReviewList" style="color:rgb(204,51,98); font-family:'bold'; font-size:1.2rem;">
					&#x1F645; 등록된 리뷰가 없습니다.
				</div>
			</div>
		</c:when>
		<c:otherwise>
	<div class="row row-cols-1 mz-review-list" id="mz-review-list">
		<div class="col" style="padding: 0; margin: 0;">
			<c:forEach var="review" items="${reviewList}" varStatus="vs">
				<div class="row mz-review-div shadow-sm" id="mz-review-div">
				<!-- 사진 자세히보기 모달 -->
	
					<div class="col-1 mz-review-userProfile-div">
						<div class="mz-userProfile-img">
							<img src="${contextPath}/resources/profileImage/${review.reviewerProfileImg}" class="mz-userProfile">
						</div>
					</div>
					<div class="col-11 mz-review-content-div">
						<div class="row" style="padding-right: 0.5rem;">
							<div class="col-9">
								<div class="row">
									<input type="hidden" id="hiddenReviewId" value="${review.reviewId}"/>
									<span style="font-size: 1.2rem; font-family: 'bold';">${review.nickname}</span>
								</div>
								<div class="row">
									<span style="font-size: 0.7rem; color: gray;">리뷰 <fmt:formatNumber type="number" value="${review.reviewerReviewCount}" />개 · 팔로워 <fmt:formatNumber type="number" value="${review.reviewerFollowerCount}" />명</span>
								</div>
							</div>
							<div class="col-3">
								<div class="mz-review-follow-btn-div" style="text-align: end;">
									<c:choose>
										<c:when test="${'관리자' eq loginUser.nickName}">
											<input type="button" value="리뷰 삭제하기" class="mz-review-delete-btn" style="margin-top: 0.5rem;" onclick="deleteReview(${review.reviewId})">
										</c:when>
										<c:otherwise>
											<input type="button" value="팔로우" class="mz-review-follow-btn" style="margin-top: 0.5rem;" onclick="followReviewer(${review.memberId})">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<div class="row mz-review-rating-row">
							<div class="row">
								<div class="col-1">
									<span style="font-family: 'bold';">맛</span>
								</div>
								<div class="col-11">
									<c:forEach var="i" begin="1" end="5">
										<c:choose>
											<c:when test="${review.reviewTasterating ge i}">
												<i class="fas fa-star"></i>
											</c:when>
											<c:otherwise>
												<i class="far fa-star"></i>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>
							</div>
							<div class="row">
								<div class="col-1">
									<span style="font-family: 'bold';">가격</span>
								</div>
								<div class="col-11">
									<c:forEach var="i" begin="1" end="5">
										<c:choose>
											<c:when test="${review.reviewPricerating ge i}">
												<i class="fas fa-star"></i>
											</c:when>
											<c:otherwise>
												<i class="far fa-star"></i>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>
							</div>
							<div class="row">
								<div class="col-1">
									<span style="font-family: 'bold';">서비스</span>
								</div>
								<div class="col-11">
									<c:forEach var="i" begin="1" end="5">
										<c:choose>
											<c:when test="${review.reviewServicerating ge i}">
												<i class="fas fa-star"></i>
											</c:when>
											<c:otherwise>
												<i class="far fa-star"></i>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="row mz-review-rating-date">
							<span style="font-size: 0.7rem; color:gray;">${review.reviewCreateDate}</span>
						</div>
						<div class="row" style="padding-right:0.5rem;">
							<p style="font-size: 0.8rem; margin: 0;">${review.reviewContent}</p>
						</div>
						<div class="row mz-review-rating-good">
							<span style="font-size: 0.7rem; color: gray;">좋아요 <fmt:formatNumber type="number" value="${review.reviewGoodcount}"/>개</span>
						</div>
						<div class="row mz-review-rating-good-btn">
							<a class="review-content-good-btn" id="review-content-good-btn" onclick="upGood(${review.reviewId})" style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D; 좋아요</a>
						</div>
						<div class="row row-cols-4 mz-reviewPhoto-row">
							<c:if test="${0 ne review.reviewImages[0].imageId}">
								<c:forEach var="reviewImages" items="${review.reviewImages}">
									<div class="col mz-reviewPhoto-col">
										<div class="mz-reviewPhoto-div">
											<a data-toggle="modal" data-target="#view-photoDetail${vs.index}" data-backdrop="static" style="cursor:pointer;">
												<img src="${contextPath}/resources/${reviewImages.imageFilepath}/${reviewImages.imageNewName}" class="mz-reviewPhoto">
											</a>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
	<div class="modal fade modal" id="view-photoDetail${vs.index}" tabindex="-1">
		<div class="modal-dialog modal-xl modal-dialog-centered">
			<div class="modal-content view-photoDetail-modal">
				<div class="modal-body">
					<div class="row">
						<div class="col-7" style="padding: 0;">
							<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<c:if test="${0 ne review.reviewImages[0].imageId}">
									<c:forEach var="ris" items="${review.reviewImages}" varStatus="ff">
										<c:choose>
											<c:when test="${ff.index eq 0}">
												<div class="carousel-item active">
													<img src="${contextPath}/resources/${ris.imageFilepath}/${ris.imageNewName}" class="d-block w-100 photoDetail-img" alt="...">
												</div>
											</c:when>
											<c:otherwise>
												<div class="carousel-item">
													<img src="${contextPath}/resources/${ris.imageFilepath}/${ris.imageNewName}" class="d-block w-100 photoDetail-img" alt="...">
												</div>
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
									</c:if>
								</div>
								<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
						</div>
						<div class="col-5" style="padding-right: 0;">
							<div class="row d-flex justify-content-end" style="margin-bottom:1rem;">
								<button type="button" class="close d-flex justify-content-end" data-dismiss="modal" style="margin:0;">
									<i class="fas fa-times" style="color: white; font-size: 1.1rem;"></i>
								</button>
							</div>
							<div class="row mz-modal-div" style="padding-right: 0;">
								<div class="col-2 mz-review-userProfile-div">
									<div class="mz-userProfile-img">
										<img src="${contextPath}/resources/profileImage/${review.reviewerProfileImg}" class="mz-userProfile">
									</div>
								</div>
								<div class="col-10 mz-review-content-div">
									<div class="row" style="padding-right: 0.5rem;">
										<div class="col-8">
											<div class="row">
												<span style="font-size: 1.2rem; font-family: 'bold'; color: white;">${review.nickname}</span>
											</div>
											<div class="row">
												<span style="font-size: 0.7rem; color: lightgray;">리뷰 <fmt:formatNumber type="number" value="${review.reviewerReviewCount}" />개 · 팔로워 <fmt:formatNumber type="number" value="${review.reviewerFollowerCount}" />명</span>
											</div>
										</div>
										<div class="col-4">
											<div class="mz-review-follow-btn-div" style="text-align: end;">
												<input type="button" value="팔로우" onclick="followReviewer(${review.memberId})" class="mz-review-follow-btn" style="margin-top: 0.5rem;">
											</div>
										</div>
									</div>
									<div class="row mz-review-rating-row">
										<div class="row">
											<div class="col-2">
												<span style="font-family: 'medium'; color: white;">맛</span>
											</div>
											<div class="col-10">
												<c:forEach var="i" begin="1" end="5">
													<c:choose>
														<c:when test="${review.reviewTasterating ge i}">
															<i class="fas fa-star"></i>
														</c:when>
														<c:otherwise>
															<i class="far fa-star"></i>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</div>
										<div class="row">
											<div class="col-2">
												<span style="font-family: 'medium'; color: white;">가격</span>
											</div>
											<div class="col-10">
												<c:forEach var="i" begin="1" end="5">
													<c:choose>
														<c:when test="${review.reviewPricerating ge i}">
															<i class="fas fa-star"></i>
														</c:when>
														<c:otherwise>
															<i class="far fa-star"></i>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</div>
										<div class="row">
											<div class="col-2">
												<span style="font-family: 'medium'; color: white;">서비스</span>
											</div>
											<div class="col-10">
												<c:forEach var="i" begin="1" end="5">
													<c:choose>
														<c:when test="${review.reviewServicerating ge i}">
															<i class="fas fa-star"></i>
														</c:when>
														<c:otherwise>
															<i class="far fa-star"></i>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row mz-review-rating-date">
										<span style="font-size: 0.7rem; color: lightgray;">${review.reviewCreateDate}</span>
									</div>
									<div class="row" style="padding-right: 0.5rem; color: white;">
										<p style="font-size: 0.8rem; margin: 0;">${review.reviewContent}</p>
									</div>
									<div class="row mz-review-rating-good">
										<span style="font-size: 0.7rem; color: lightgray;">좋아요 <fmt:formatNumber type="number" value="${review.reviewGoodcount}"/>개</span>
									</div>
									<div class="row mz-review-rating-good-btn">
										<a class="review-content-good-btn" id="review-content-good-btn" onclick="upGood(${review.reviewId})" style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D; 좋아요</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
			</c:forEach>
		</div>
	</div>
	</c:otherwise>
	</c:choose>
	
	<script>
		function upGood(reviewId) {
			
			$.ajax({
				url:"upGood.do",
				data:{reviewId:reviewId},
				type:"POST",
				success:function(data){
					if("notvalid" == data) {
						swal("로그인이 필요한 서비스입니다.");
					}else if("success" == data){
						swal({
							text:"해당 리뷰를 '좋아요' 하였습니다.",
							button:"확인"
						}).then(function(isConfirm){
							window.location.reload();
						})
					}else {
						swal("좋아요에 실패하였습니다.");
					}					
				},
				error:function(request, status, errorData){
					swal("error code: " + request.status + "\n" + "message: " + request.responseText + "error: " + errorData);
				}
			})
		}
	</script>
	
	<script>
		function deleteReview(reviewId) {
			
			swal({
				text:"해당 리뷰를 삭제하시겠습니까?",
				buttons:["아니요", "예"]
			}).then(function(isConfirm){
				if(isConfirm) {
					$.ajax({
						url:"deleteReview.do",
						data:{reviewId:reviewId},
						type:"POST",
						success:function(data) {
							if("success" == data) {
								swal({
									text:"리뷰를 삭제하였습니다.",
									button:"확인"
								}).then(function(isConfirm){
									location.reload();
								})
							}else {
								swal("리뷰를 삭제하지 못 했습니다.");
							}
						}
					})
				}		
			})
		}
	</script>
	
	<script>
		function followReviewer(memberId) {
			
			$.ajax({
				url:"followReviewer.do",
				data:{memberId:memberId},
				type:"POST",
				success:function(data){
					if("notvalid" == data) {
						swal("로그인이 필요한 서비스입니다.");
					}else if("success" == data){
						swal("해당 리뷰어를 팔로우 하였습니다.");
					}else if("already" == data) {
						swal("이미 팔로우한 리뷰어입니다.");
					}else if("itsme" == data) {
						swal("본인과 팔로우 할 수 없습니다.");
					}else {
						swal("팔로우에 실패하였습니다.");
					}					
				},
				error:function(request, status, errorData){
					swal("error code: " + request.status + "\n" + "message: " + request.responseText + "error: " + errorData);
				}
			});
			
		}
	</script>
	
	<script>
		$("#carouselExampleControls").carousel();
	</script>
</body>
</html>