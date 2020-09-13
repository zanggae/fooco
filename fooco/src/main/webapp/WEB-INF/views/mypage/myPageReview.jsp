<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/gu-upload/css/guupload.css"/>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
<!-- gu-upload -->
<script type="text/javascript" src="${contextPath}/resources/gu-upload/guuploadManager.js"></script>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

  /* 리뷰 */
	.mz-review-title {font-size:1.5rem; font-family:'bold'; margin-top:1rem;}
	.mz-sort-selection {width:25%; padding:0; margin:0;}
	.review-sort-label {font-size:1.1rem; font-family:'medium'; padding:0; margin:0; margin-right:1rem;}
	.mz-review-list {background:lightgray; padding:1rem; border-radius:0.5rem;}
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


	/* 리뷰 작성하기 모달 */
	.write-review-mz-img {width:100%; height:6rem;}
	.modal-header {text-align:center;}
	.modal-body .row {margin:0;}
	.starRating {cursor:pointer; margin:0;}
	.reviewContent {font-size:0.8rem;}
	#browseBtn {background-color:rgb(204,51,98); width:100%; height:2.5rem; color:white; font-family:'medium'; font-size:1rem; border:none; border-bottom-left-radius:0.25rem; border-bottom-right-radius:0.25rem;}
	.fas {color:#F4E04E;}
	
	/* 사진 자세히보기 모달 */
	.view-photoDetail-modal {background-color:rgba(0,0,0,0.7);}
	.carousel-control-prev {width:7%;}
	.carousel-control-next {width:7%;}
	.carousel-control-prev-icon {color:rgb(204,51,98);}
	.carousel-control-next-icon {color:rgb(204,51,98);}
	.photoDetail-img {height:30rem; border-radius:0.5rem;}
	.mz-review-rating-row .col-10 {color:#F4E04E;}
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

				<div class="col-7 main_content" style="padding: 0;">
					<div class="row row-cols-1 mz-review-list main_content_div">
						<div class="row">
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F618;
								나의 활동 - 마이리뷰</p>
						</div>



						<div class="col" style="padding: 0; margin: 0;">
							<c:forEach var="review" items="${reviewList}">						
								<div class="row mz-review-div shadow-sm">
									<div class="col-2 mz-review-userProfile-div" align="center">
										<div class="mz-userProfile-img">
											<img
												src="${contextPath}/resources/ProFiles/${review.reviewerProfileImg}"
												class="mz-userProfile">
										</div>
									</div>
									<div class="col-10 mz-review-content-div">
										<div class="row" style="padding-right: 0.5rem;">
											<div class="col-6">
												<div class="row">
													<input type="hidden" id="hiddenReviewId" value="${review.reviewId}" /> <span
														style="font-size: 1.2rem; font-family: 'bold';">${review.nickname}</span>
												</div>
												<div class="row">
													<span style="font-size: 0.7rem; color: gray;">리뷰 <fmt:formatNumber
															type="number" value="${review.reviewerReviewCount}" />개
														· 팔로워 <fmt:formatNumber type="number"
															value="${review.reviewerFollowerCount}" />명
													</span>
												</div>
											</div>
											<div class="col-3">
												<div class="mz-review-follow-btn-div"
													style="text-align: end; margin-right:0.3rem;">
													<button type="button" value="${review.reviewId }" class="form-control mz-review-button shadow-sm" onclick="goReview(this)">리뷰수정</button>
													<input type="hidden" id="showmodal" data-toggle="modal" data-target="#write-review">
									
									
									
												</div>
											</div>
											<div class="col-3">
											<div class="mz-review-follow-btn-div"
													style="text-align: end;">
													<c:url var="deleteReview" value="deleteReview.do">
														<c:param name="reviewId" value="${review.reviewId }"></c:param>
													</c:url>
													<a href="${deleteReview }"><button type="button" class="form-control mz-bookmark-button shadow-sm">리뷰삭제</button></a>
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
											<span style="font-size: 0.7rem; color: gray;">${review.reviewCreateDate}</span>
										</div>
										<div class="row" style="padding-right: 0.5rem;">
											<p style="font-size: 0.8rem; margin: 0;">${review.reviewContent}</p>
										</div>
										<div class="row mz-review-rating-good">
											<span style="font-size: 0.7rem; color: gray;">좋아요 <fmt:formatNumber
													type="number" value="${review.reviewGoodcount}" />개
											</span>
										</div>
										<div class="row mz-review-rating-good-btn">
											<a class="review-content-good-btn"
												id="review-content-good-btn" onclick="upGood()"
												style="font-size: 0.8rem; color: mediumseagreen; font-family: 'medium'; cursor: pointer;">&#x1F44D;
												좋아요</a>
										</div>
										<div class="row row-cols-4 mz-reviewPhoto-row">
											<c:if test="${0 ne review.reviewImages[0].imageId}">
												<c:forEach var="reviewImages" items="${review.reviewImages}">
													<div class="col mz-reviewPhoto-col">
														<div class="mz-reviewPhoto-div">
															<img
																src="${contextPath}/resources/${reviewImages.imageFilepath}/${reviewImages.imageNewName}"
																class="mz-reviewPhoto">
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

				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>
				
				
		<!-- 리뷰 작성하기 모달 -->
		<form id="uploadReview" name="uploadReview" action="updateReview.do" method="post">
	
		<div class="modal fade" id="write-review" data-backdrop="static"
			data-keyboard="false" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<span class="modal-title" id="write-review-title" style="font-family: 'heavy'; font-size: 1.5rem;">리뷰 수정하기</span>
					</div>
					<div class="modal-body">
						<div class="row d-block">
							<div class="row">
								
								<span style="font-family: 'bold'; font-size: 1.3rem;" id="resName" ></span>
							</div>
							<div class="row d-flex align-items-center">
								<i class="fas fa-map-marker-alt" style="color: rgb(204, 51, 98); font-size: 1.3rem; margin-right: 0.3rem;"></i>
								<span style="font-family: 'medium'; font-size: 1rem;" id="locationName"></span>
							</div>
							<div class="row">
								<span style="font-size: 0.8rem;" id="resAddress"></span>
							</div>
						</div>
						<hr>
						<div class="row d-block">
							<div class="row">
								<span style="font-family:'bold'; font-size:1.05rem;">별점</span>
							</div>
							<div class="row d-block">
								<div class="row">
									<div class="col-2">
										<span style="font-family:'medium';">맛</span>
									</div>
									<div class="col-10 starRating tasteRating">
										<i class="far fa-star" data-rating="1" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="2" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="3" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="4" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="5" style="font-size: 1rem"></i>
										<input type="hidden" id="reviewTasterating" name="reviewTasterating" class="tasteScore reviewScore">
									</div>
								</div>
								<div class="row">
									<div class="col-2">
										<span style="font-family:'medium';">가격</span>
									</div>
									<div class="col-10 starRating priceRating">
										<i class="far fa-star" data-rating="1" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="2" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="3" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="4" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="5" style="font-size: 1rem"></i>
										<input type="hidden" id="reviewPricerating" name="reviewPricerating" class="priceScore reviewScore">
									</div>
								</div>
								<div class="row">
									<div class="col-2">
										<span style="font-family:'medium';">서비스</span>
									</div>
									<div class="col-10 starRating serviceRating">
										<i class="far fa-star" data-rating="1" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="2" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="3" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="4" style="font-size: 1rem"></i>
										<i class="far fa-star" data-rating="5" style="font-size: 1rem"></i>
										<input type="hidden" id="reviewServicerating" name="reviewServicerating" class="serviceScore reviewScore">
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="row d-block">
							<div class="row">
								<span style="font-family:'bold'; font-size:1.05rem;">내용 입력하기</span>
							</div>
							<div class="row">
								<textarea class="form-control" rows="5" class="reviewContent" id="reviewContent" name="reviewContent" style="font-size: 0.8rem; resize: none;"></textarea>
							</div>
						</div>
						<hr>
						<div class="row d-block">
							<div class="row">
								<span style="font-family:'bold'; font-size:1.05rem;">파일 첨부하기</span>
							</div>
							<div class="row">
								<div id="attachFile" style="width: 100%;"></div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn" data-dismiss="modal" style="font-family:'heavy'; font-size:1.1rem;">취소하기</button>
						<button type="button" class="btn" onclick="formSubmit();" style="font-family:'heavy'; font-size:1.1rem;">수정하기</button>
						<input type="hidden" id="realname" name="realname"/>
						<input type="hidden" id="filename" name="filename"/>
						<input type="hidden" id="filesize" name="filesize"/>
						<input type="hidden" id="reviewId" name="reviewId"/>
					</div>
				</div>
			</div>
		</div>
		</form>
				<!-- 세 가지 평점 주기-->
		<script>
			var tasteRating = $(".tasteRating .fa-star");
			
			var SetTasteRatingStar = function() {
				return tasteRating.each(function() {
                    if(parseInt(tasteRating.siblings('input.reviewScore').val()) >= parseInt($(this).data('rating'))) {
                        return $(this).removeClass('far').addClass('fas');
                    }else {
                        return $(this).removeClass('fas').addClass('far');
                    }
                })
            }
            
            tasteRating.on('click',function() {
            	tasteRating.siblings('input.reviewScore').val($(this).data('rating'));
            	return SetTasteRatingStar();
            })
            
            SetTasteRatingStar();
     
			var priceRating = $(".priceRating .fa-star");
			
			var SetPriceRatingStar = function() {
				return priceRating.each(function() {
                    if(parseInt(priceRating.siblings('input.reviewScore').val()) >= parseInt($(this).data('rating'))) {
                        return $(this).removeClass('far').addClass('fas');
                    }else {
                        return $(this).removeClass('fas').addClass('far');
                    }
                })
            }
            
			priceRating.on('click',function() {
				priceRating.siblings('input.reviewScore').val($(this).data('rating'));
            	return SetPriceRatingStar();
            })
            
            SetPriceRatingStar();
       
			var serviceRating = $(".serviceRating .fa-star");
			
			var SetServiceRatingStar = function() {
				return serviceRating.each(function() {
                    if(parseInt(serviceRating.siblings('input.reviewScore').val()) >= parseInt($(this).data('rating'))) {
                        return $(this).removeClass('far').addClass('fas');
                    }else {
                        return $(this).removeClass('fas').addClass('far');
                    }
                })
            }
            
			serviceRating.on('click',function() {
				serviceRating.siblings('input.reviewScore').val($(this).data('rating'));
            	return SetServiceRatingStar();
            })
            
            SetServiceRatingStar();
        </script>
        
		
		<!-- 사진 첨부 -->
		<script>
            var guManager = null;

            window.onload = function () {
                var option = {
                    listtype: "thumbnail",
                    fileid: "attachFile",
                    uploadURL: "uploadFile.do",
                    maxFileCount:4,
                    afterFileTransfer: afterFileTransfer
                }
                guManager = new guUploadManager(option);
            }

            function formSubmit() {
                var brd_title = document.getElementById("reviewContent");
                if (brd_title.value === "") {
                    alert("내용을 입력해주세요.");
                    return;
                }

                guManager.uploadFiles();
            }

            function afterFileTransfer(filesize, realname, filename) {
                var realname9 = document.getElementById('realname');
                var filename9 = document.getElementById('filename');
                var filesize9 = document.getElementById('filesize');

                realname9.value = realname;
                filename9.value = filename;
                filesize9.value = filesize;

                document.uploadReview.submit();
            }
        </script>		
				
			</div>
		</div>
	</section>

</body>



<script>
	function goReview(reviewId) {
		var reviewId = $(reviewId).val();
		$.ajax({
			url:"selectReviewInfo.do",
			dataType:"json",
			data:{reviewId:reviewId},
			success:function(data){
				$("#reviewContent").text(data.reviewContent);
				$("#resName").text(data.resName);
				$("#locationName").text(data.locationName);
				$("#resAddress").text(data.resAddress);
				$("#reviewTasterating").prop("value", data.reviewTasterating);
				$("#reviewPricerating").prop("value", data.reviewPricerating);
				$("#reviewServicerating").prop("value", data.reviewServicerating);
				$("#reviewId").prop("value", data.reviewId);
				changetasteRating();
				changepriceRating();
				changeserviceRating();

				$("#showmodal").click();


			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
			
		})

	}

		
</script>

<script>
function changetasteRating(){

var tasteRating = $(".tasteRating .fa-star");

var SetTasteRatingStar = function() {
	return tasteRating.each(function() {
        if(parseInt(tasteRating.siblings('input.reviewScore').val()) >= parseInt($(this).data('rating'))) {
            return $(this).removeClass('far').addClass('fas');
        }else {
            return $(this).removeClass('fas').addClass('far');
        }
    })
}

tasteRating.on('click',function() {
	tasteRating.siblings('input.reviewScore').val($(this).data('rating'));
	return SetTasteRatingStar();
})

SetTasteRatingStar();

}

function changepriceRating(){
	
	var priceRating = $(".priceRating .fa-star");
	
	var SetPriceRatingStar = function() {
		return priceRating.each(function() {
            if(parseInt(priceRating.siblings('input.reviewScore').val()) >= parseInt($(this).data('rating'))) {
                return $(this).removeClass('far').addClass('fas');
            }else {
                return $(this).removeClass('fas').addClass('far');
            }
        })
    }
    
	priceRating.on('click',function() {
		priceRating.siblings('input.reviewScore').val($(this).data('rating'));
    	return SetPriceRatingStar();
    })
    
    SetPriceRatingStar();	
	
	
	
	
}



function changeserviceRating(){
	var serviceRating = $(".serviceRating .fa-star");
	
	var SetServiceRatingStar = function() {
		return serviceRating.each(function() {
            if(parseInt(serviceRating.siblings('input.reviewScore').val()) >= parseInt($(this).data('rating'))) {
                return $(this).removeClass('far').addClass('fas');
            }else {
                return $(this).removeClass('fas').addClass('far');
            }
        })
    }
    
	serviceRating.on('click',function() {
		serviceRating.siblings('input.reviewScore').val($(this).data('rating'));
    	return SetServiceRatingStar();
    })
    
    SetServiceRatingStar();
	
	
}



</script>


</html>