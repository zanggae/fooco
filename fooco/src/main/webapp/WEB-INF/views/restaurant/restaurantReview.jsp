<<<<<<< HEAD
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
	.mz-review-list {background:#ECECEC; padding:1rem; border-radius:0.5rem;}
	.mz-review-list > div > div {background-color:white; border-radius:0.3rem;}
	.mz-review-div {padding:1rem; margin-bottom:1rem !important;}
	.mz-review-userProfile-div {padding:0;}
	.mz-userProfile-img {border-radius:50%; width:4rem; height:4rem; overflow:hidden; align-items:center; justify-content:center;}
	.mz-userProfile {width:100%; height:100%;}
	.mz-review-content-div {padding-right:0;}
	.mz-review-content-div > div {padding:0;}
	.mz-review-content-div > div > div {padding:0;}
	.mz-review-follow-btn-div {padding:0 !important;}
	.mz-review-follow-btn {margin:0 !important; background:rgb(204,51,98); border:none; height:2rem; border-radius:0.2rem; color:white; font-family:'medium'; font-size:1rem; width:6rem;}
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
	<div class="row row-cols-1 mz-review-list">
		<div class="col" style="padding:0; margin:0;">
		<c:forEach var="review" items="${reviewList}">
		<div class="row mz-review-div shadow-sm">
			<div class="col-1 mz-review-userProfile-div">
				<div class="mz-userProfile-img">
					<img src="${contextPath}/resources/${review.reviewerProfilePath}/${review.reviewerProfileImg}" class="mz-userProfile">
				</div>
			</div>
			<div class="col-11 mz-review-content-div">
				<div class="row" style="padding-right: 0.5rem;">
					<div class="col-9">
						<div class="row">
							<span style="font-size: 1.2rem; font-family: 'bold';">${review.nickname}</span>
						</div>
						<div class="row">
							<span style="font-size: 0.7rem; color: gray;">리뷰 	<fmt:formatNumber type="number" value="${review.reviewerReviewCount}"/>개 · 팔로워 <fmt:formatNumber type="number" value="${review.reviewerFollowerCount}"/>명</span>
						</div>
					</div>
					<div class="col-3">
						<div class="mz-review-follow-btn-div" style="text-align: end;">
							<input type="button" value="팔로우" class="mz-review-follow-btn" style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-row">
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">맛</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">가격</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">서비스</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-date">
					<span style="font-size: 0.7rem; color: gray;">${review.reviewCreateDate}</span>
				</div>
				<div class="row" style="padding-right: 0.5rem;">
					<p style="font-size: 0.8rem; margin: 0;">
						${review.reviewContent}
					</p>
				</div>
				<div class="row mz-review-rating-good">
					<span style="font-size: 0.7rem; color: gray;">좋아요 <fmt:formatNumber type="number" value="${review.reviewGoodcount}"/>개</span>
				</div>
				<div class="row mz-review-rating-good-btn">
					<a class="review-content-good-btn" id="review-content-good-btn" onclick="pushGood()" style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D; 좋아요</a>
				</div>		
				<div class="row row-cols-4 mz-reviewPhoto-row">
					<c:if test="${0 ne review.reviewImages[0].imageId}">
					<c:forEach var="reviewImages" items="${review.reviewImages}">
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="${contextPath}/resources/${reviewImages.imageFilepath}/${reviewImages.imageNewName}" class="mz-reviewPhoto">
						</div>
					</div>
					</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
		</c:forEach>
		</div>
	</div>
</body>
=======
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
	.mz-review-list {background:#ECECEC; padding:1rem; border-radius:0.5rem;}
	.mz-review-list > div > div {background-color:white; border-radius:0.3rem;}
	.mz-review-div {padding:1rem; margin-bottom:1rem !important;}
	.mz-review-userProfile-div {padding:0;}
	.mz-userProfile-img {border-radius:50%; width:4rem; height:4rem; overflow:hidden; align-items:center; justify-content:center;}
	.mz-userProfile {width:100%; height:100%;}
	.mz-review-content-div {padding-right:0;}
	.mz-review-content-div > div {padding:0;}
	.mz-review-content-div > div > div {padding:0;}
	.mz-review-follow-btn-div {padding:0 !important;}
	.mz-review-follow-btn {margin:0 !important; background:rgb(204,51,98); border:none; height:2rem; border-radius:0.2rem; color:white; font-family:'medium'; font-size:1rem; width:6rem;}
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
	<div class="row row-cols-1 mz-review-list">
		<div class="col" style="padding: 0; margin: 0;">
			<c:forEach var="review" items="${reviewList}">
				<div class="row mz-review-div shadow-sm">
					<div class="col-1 mz-review-userProfile-div">
						<div class="mz-userProfile-img">
							<img src="${contextPath}/resources/${review.reviewerProfilePath}/${review.reviewerProfileImg}" class="mz-userProfile">
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
									<input type="button" value="팔로우" class="mz-review-follow-btn" style="margin-top: 0.5rem;" onclick="followReviewer(${review.memberId})">
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
							<a class="review-content-good-btn" id="review-content-good-btn" onclick="upGood()" style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D; 좋아요</a>
						</div>
						<div class="row row-cols-4 mz-reviewPhoto-row">
							<c:if test="${0 ne review.reviewImages[0].imageId}">
								<c:forEach var="reviewImages" items="${review.reviewImages}">
									<div class="col mz-reviewPhoto-col">
										<div class="mz-reviewPhoto-div">
											<img src="${contextPath}/resources/${reviewImages.imageFilepath}/${reviewImages.imageNewName}" class="mz-reviewPhoto">
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<script>
		function upGood() {
			var selectedReview = document.getElementById("hiddenReviewId");
			var reviewId = document.getElementById("hiddenReviewId").value;
			
			$.ajax({
				url:"upGood.do",
				data:{reviewId:reviewId},
				type:"POST",
				success:function(data){
					if("notvalid" == data) {
						swal("로그인이 필요한 서비스입니다.");
					}else if("success" == data){
						swal("해당 리뷰를 '좋아요' 하였습니다.");
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
</body>
>>>>>>> refs/remotes/origin/master
</html>