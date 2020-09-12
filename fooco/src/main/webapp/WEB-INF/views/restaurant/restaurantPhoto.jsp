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
	.mz-photo-container {background:#ECECEC; padding:0; border-radius:0.5rem;}
	.mz-photo-sort {width:25%; padding:0; margin:0;}
	.photo-sort-label {font-size:1.1rem; font-family:'medium'; padding:0; margin:0; margin-right:1rem;}
	.mz-photo-row {padding-left:0.5rem; padding-right:0.5rem; padding-top:1rem; padding-bottom:0;}
	.mz-photo-col {padding:0; padding-left:0.5rem; padding-right:0.5rem; margin-bottom:1rem;}
	.mz-photo-div {border-radius:0.3rem; overflow:hidden;}
	.mz-photo {width:100%; height:8rem; border-radius:0.3rem; transition-duration:0.3s; transition-timing-function:ease;}
	.mz-photo-div:hover .mz-photo {transform:scale(1.1);}
	.emptyPhotoListContainer {height:11rem;}	
</style>
</head>
<body>
	<div class="row">
		<div class="col" style="padding: 0">
			<p class="mz-review-title">&#x1F4F8; 사진</p>
		</div>
		<div
			class="col form-group mz-photo-sort d-flex justify-content-end align-items-center">
			<label for="photo-sort" class="photo-sort-label">정렬</label>
			<div class="photo-sort-input">
				<select class="form-control form-control-sm photo-sort"
					id="photo-sort">
					<option value="latest" selected>최신 순</option>
					<option value="oldest">오래된 순</option>
					<option value="highrating">평점 높은 순</option>
					<option value="lowrating">평점 낮은 순</option>
				</select>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${empty photoList}">
			<div class="row mz-photo-container d-flex justify-content-center align-items-center emptyPhotoListContainer">
				<div class="emptyPhotoList" style="color:rgb(204,51,98); font-family:'bold'; font-size:1.2rem;">
					&#x1F645; 등록된 사진이 없습니다.
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="row mz-photo-container">
				<div class="row row-cols-4 mz-photo-row">
					<c:forEach var="photo" items="${photoList}">
						<div class="col mz-photo-col">
							<div class="mz-photo-div">
								<img src="${contextPath}/resources/${photo.imageFilepath}/${photo.imageNewName}" class="mz-photo">
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	
	

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
										<img src="resPhoto/sushi (1).jpg" class="d-block w-100 photoDetail-img" alt="...">
									</div>
									<div class="carousel-item">
										<img src="resPhoto/sushi (2).jpg" class="d-block w-100 photoDetail-img" alt="...">
									</div>
									<div class="carousel-item">
										<img src="resPhoto/sushi (3).jpg" class="d-block w-100 photoDetail-img" alt="...">
									</div>
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
							<div class="row d-flex justify-content-end">
								<button type="button" class="close d-flex justify-content-end" data-dismiss="modal">
									<i class="fas fa-times" style="color: white; font-size: 1.1rem;"></i>
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
											맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots" id="dots">...</span>
											<span class="review-content-more" id="review-content-more">
												진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
												맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
												진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
												맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! </span>
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

</body>
</html>