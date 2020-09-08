<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.mz-review-list > div {background-color:white; border-radius:0.3rem;}
	.mz-review-div {padding:1rem; margin-bottom:1rem !important;}
	.mz-review-userProfile-div {padding:0;}
	.mz-userProfile {max-width:100%; max-height:100%; border-radius:50%;}
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
	.mz-reviewPhoto-div:hover .mz-reviewPhoto {transform:scale(1.08);}
</style>
</head>
<body>
	<div class="row">
		<div class="col" style="padding: 0;">
			<p class="mz-review-title">&#x1F4DD; 리뷰</p>
		</div>
		<div
			class="col form-group mz-sort-selection d-flex justify-content-end align-items-center">
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
	<div class="row mz-review-list">
		<div class="row mz-review-div shadow-sm">
			<div class="col-1 mz-review-userProfile-div">
				<div class="mz-userProfile-img">
					<img src="profile/luffy.jpg" class="mz-userProfile">
				</div>
			</div>
			<div class="col-11 mz-review-content-div">
				<div class="row" style="padding-right: 0.5rem;">
					<div class="col-9">
						<div class="row">
							<span style="font-size: 1.2rem; font-family: 'bold';">와니</span>
						</div>
						<div class="row">
							<span style="font-size: 0.7rem; color: gray;">리뷰 32개 · 팔로워
								51명</span>
						</div>
					</div>
					<div class="col-3">
						<div class="mz-review-follow-btn-div" style="text-align: end;">
							<input type="button" value="팔로우" class="mz-review-follow-btn"
								style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-row">
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">맛</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">가격</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">서비스</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-date">
					<span style="font-size: 0.7rem; color: gray;">2020-07-30</span>
				</div>
				<div class="row" style="padding-right: 0.5rem;">
					<p style="font-size: 0.8rem; margin: 0;">
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots" id="dots">...</span>
						<span class="review-content-more" id="review-content-more">
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! </span>
					</p>
					<a class="review-content-more-btn" id="review-content-more-btn"
						style="font-size: 0.8rem; cursor: pointer;" onclick="readmore()">더
						보기</a>
				</div>
				<div class="row mz-review-rating-good">
					<span style="font-size: 0.7rem; color: gray;">좋아요 32개</span>
				</div>
				<div class="row mz-review-rating-good-btn">
					<a class="review-content-good-btn" id="review-content-good-btn"
						onclick="pushGood()"
						style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
						좋아요</a>
				</div>
				<div class="row row-cols-4 mz-reviewPhoto-row">
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant1.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant2.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant3.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant4.jpg" class="mz-reviewPhoto">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mz-review-div shadow-sm">
			<div class="col-1 mz-review-userProfile-div">
				<div class="mz-userProfile-img">
					<img src="profile/luffy.jpg" class="mz-userProfile">
				</div>
			</div>
			<div class="col-11 mz-review-content-div">
				<div class="row" style="padding-right: 0.5rem;">
					<div class="col-9">
						<div class="row">
							<span style="font-size: 1.2rem; font-family: 'bold';">와니</span>
						</div>
						<div class="row">
							<span style="font-size: 0.7rem; color: gray;">리뷰 32개 · 팔로워
								51명</span>
						</div>
					</div>
					<div class="col-3">
						<div class="mz-review-follow-btn-div" style="text-align: end;">
							<input type="button" value="팔로우" class="mz-review-follow-btn"
								style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-row">
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">맛</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">가격</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">서비스</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-date">
					<span style="font-size: 0.7rem; color: gray;">2020-07-30</span>
				</div>
				<div class="row" style="padding-right: 0.5rem;">
					<p style="font-size: 0.8rem; margin: 0;">
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots" id="dots">...</span>
						<span class="review-content-more" id="review-content-more">
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! </span>
					</p>
					<a class="review-content-more-btn" id="review-content-more-btn"
						style="font-size: 0.8rem; cursor: pointer;" onclick="readmore()">더
						보기</a>
				</div>
				<div class="row mz-review-rating-good">
					<span style="font-size: 0.7rem; color: gray;">좋아요 32개</span>
				</div>
				<div class="row mz-review-rating-good-btn">
					<a class="review-content-good-btn" id="review-content-good-btn"
						onclick="pushGood()"
						style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
						좋아요</a>
				</div>
				<div class="row row-cols-4 mz-reviewPhoto-row">
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant1.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant2.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant3.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant4.jpg" class="mz-reviewPhoto">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mz-review-div shadow-sm">
			<div class="col-1 mz-review-userProfile-div">
				<div class="mz-userProfile-img">
					<img src="profile/luffy.jpg" class="mz-userProfile">
				</div>
			</div>
			<div class="col-11 mz-review-content-div">
				<div class="row" style="padding-right: 0.5rem;">
					<div class="col-9">
						<div class="row">
							<span style="font-size: 1.2rem; font-family: 'bold';">와니</span>
						</div>
						<div class="row">
							<span style="font-size: 0.7rem; color: gray;">리뷰 32개 · 팔로워
								51명</span>
						</div>
					</div>
					<div class="col-3">
						<div class="mz-review-follow-btn-div" style="text-align: end;">
							<input type="button" value="팔로우" class="mz-review-follow-btn"
								style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-row">
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">맛</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">가격</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">서비스</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-date">
					<span style="font-size: 0.7rem; color: gray;">2020-07-30</span>
				</div>
				<div class="row" style="padding-right: 0.5rem;">
					<p style="font-size: 0.8rem; margin: 0;">
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots" id="dots">...</span>
						<span class="review-content-more" id="review-content-more">
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! </span>
					</p>
					<a class="review-content-more-btn" id="review-content-more-btn"
						style="font-size: 0.8rem; cursor: pointer;" onclick="readmore()">더
						보기</a>
				</div>
				<div class="row mz-review-rating-good">
					<span style="font-size: 0.7rem; color: gray;">좋아요 32개</span>
				</div>
				<div class="row mz-review-rating-good-btn">
					<a class="review-content-good-btn" id="review-content-good-btn"
						onclick="pushGood()"
						style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
						좋아요</a>
				</div>
				<div class="row row-cols-4 mz-reviewPhoto-row">
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant1.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant2.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant3.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant4.jpg" class="mz-reviewPhoto">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mz-review-div shadow-sm">
			<div class="col-1 mz-review-userProfile-div">
				<div class="mz-userProfile-img">
					<img src="profile/luffy.jpg" class="mz-userProfile">
				</div>
			</div>
			<div class="col-11 mz-review-content-div">
				<div class="row" style="padding-right: 0.5rem;">
					<div class="col-9">
						<div class="row">
							<span style="font-size: 1.2rem; font-family: 'bold';">와니</span>
						</div>
						<div class="row">
							<span style="font-size: 0.7rem; color: gray;">리뷰 32개 · 팔로워
								51명</span>
						</div>
					</div>
					<div class="col-3">
						<div class="mz-review-follow-btn-div" style="text-align: end;">
							<input type="button" value="팔로우" class="mz-review-follow-btn"
								style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-row">
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">맛</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">가격</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">서비스</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-date">
					<span style="font-size: 0.7rem; color: gray;">2020-07-30</span>
				</div>
				<div class="row" style="padding-right: 0.5rem;">
					<p style="font-size: 0.8rem; margin: 0;">
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots" id="dots">...</span>
						<span class="review-content-more" id="review-content-more">
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! </span>
					</p>
					<a class="review-content-more-btn" id="review-content-more-btn"
						style="font-size: 0.8rem; cursor: pointer;" onclick="readmore()">더
						보기</a>
				</div>
				<div class="row mz-review-rating-good">
					<span style="font-size: 0.7rem; color: gray;">좋아요 32개</span>
				</div>
				<div class="row mz-review-rating-good-btn">
					<a class="review-content-good-btn" id="review-content-good-btn"
						onclick="pushGood()"
						style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
						좋아요</a>
				</div>
				<div class="row row-cols-4 mz-reviewPhoto-row">
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant1.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant2.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant3.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant4.jpg" class="mz-reviewPhoto">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mz-review-div shadow-sm">
			<div class="col-1 mz-review-userProfile-div">
				<div class="mz-userProfile-img">
					<img src="profile/luffy.jpg" class="mz-userProfile">
				</div>
			</div>
			<div class="col-11 mz-review-content-div">
				<div class="row" style="padding-right: 0.5rem;">
					<div class="col-9">
						<div class="row">
							<span style="font-size: 1.2rem; font-family: 'bold';">와니</span>
						</div>
						<div class="row">
							<span style="font-size: 0.7rem; color: gray;">리뷰 32개 · 팔로워
								51명</span>
						</div>
					</div>
					<div class="col-3">
						<div class="mz-review-follow-btn-div" style="text-align: end;">
							<input type="button" value="팔로우" class="mz-review-follow-btn"
								style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-row">
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">맛</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">가격</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
					<div class="row">
						<div class="col-1">
							<span style="font-family: 'bold';">서비스</span>
						</div>
						<div class="col-11">
							<i class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i><i class="fas fa-star"></i><i
								class="fas fa-star"></i>
						</div>
					</div>
				</div>
				<div class="row mz-review-rating-date">
					<span style="font-size: 0.7rem; color: gray;">2020-07-30</span>
				</div>
				<div class="row" style="padding-right: 0.5rem;">
					<p style="font-size: 0.8rem; margin: 0;">
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
						진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! <span class="dots" id="dots">...</span>
						<span class="review-content-more" id="review-content-more">
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
							진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! </span>
					</p>
					<a class="review-content-more-btn" id="review-content-more-btn"
						style="font-size: 0.8rem; cursor: pointer;" onclick="readmore()">더
						보기</a>
				</div>
				<div class="row mz-review-rating-good">
					<span style="font-size: 0.7rem; color: gray;">좋아요 32개</span>
				</div>
				<div class="row mz-review-rating-good-btn">
					<a class="review-content-good-btn" id="review-content-good-btn"
						onclick="pushGood()"
						style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
						좋아요</a>
				</div>
				<div class="row row-cols-4 mz-reviewPhoto-row">
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant1.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant2.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant3.jpg" class="mz-reviewPhoto">
						</div>
					</div>
					<div class="col mz-reviewPhoto-col">
						<div class="mz-reviewPhoto-div">
							<img src="resThumb/restaurant4.jpg" class="mz-reviewPhoto">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>