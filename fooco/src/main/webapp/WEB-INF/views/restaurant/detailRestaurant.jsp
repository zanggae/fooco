<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
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
	.resContentP {min-width:37rem; margin-right:3rem;}
 	.mz-rating {color:#F4E04E; margin:0; text-align:end;}
	.mz-explanation {padding-top:0.5rem; padding-bottom:0.5rem;}
	.mz-buttons {padding-top:0.5rem; padding-bottom:0.5rem;}   
	.mz-location {padding:0;}
	.mz-address {padding-left:0;}
	.mz-bookmark-button {background-color:#ECECEC; border:none; font-family:'medium'; margin-right:0.5rem;}
	.mz-review-button {background-color:rgb(204,51,98); color:white; border:none; font-family:'medium';}
	.mz-nav-item a {font-family:'bold'; color:#495057;}
	.nav-link.active {color:rgb(204,51,98) !important;}
	.mz-content-bottom {width:100%;}
	
	
	/* 리뷰 탭 */
	.tab-content {width:100%;}
	
	
	/* 광고 */
	.sr-ad-col {height:9rem; margin-bottom:1rem; background-color:#ECECEC; border-radius:0.5rem; padding:0.5rem;}


	/* 비슷한 음식점 */
	.sr-recommend-div {padding:1rem; padding-top:0;}
	.sr-recommend-col {padding:0.5rem; padding-bottom:0; background-color:#ECECEC; border-radius:0.5rem; margin-bottom:1rem;}


	/* 파트너 음식점 추천 */
	.sr-partner-col {padding:0.5rem; padding-bottom:0; background-color:#ECECEC; border-radius:0.5rem;}


	/* 리뷰 작성하기 모달 */
	.write-review-mz-img {width:100%; height:6rem;}
	.modal-header {text-align:center;}
	.modal-body .row {margin:0;}
	.starRating {cursor:pointer; margin:0;}
	.reviewContent {font-size:0.8rem;}
	#browseBtn {background-color:rgb(204,51,98); width:100%; height:2.5rem; color:white; font-family:'medium'; font-size:1rem; border:none; border-bottom-left-radius:0.25rem; border-bottom-right-radius:0.25rem;}
	.fas.fa-star {color:#F4E04E;}
	.far.fa-star {color:black;}
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
						<li class="breadcrumb-item active" aria-current="page">${res.resName}</li>
					</ol>
				</nav>
			</div>
			<div class="row" style="padding-top: 1rem;">
				<div class="col-9 detail">
					<div class="row mz-img-row">
						<div class="col mz-img-biggest-col">
							<div class="mz-img-biggest-div">
								<img src="${contextPath}/resources/${res.resThumbnailImage.imageFilepath}/${res.resThumbnailImage.imageNewName}" class="mz-img-biggest"/>
							</div>
						</div>
						<div class="col mz-img-small-col">
							<div class="row row-cols-2">
								<c:forEach var="images" items="${res.resLatestImages}">
									<c:choose>
										<c:when test="${not empty images.imageId}">
											<div class="col mz-img-small-col-inner">
												<div class="mz-img-small-div">
													<img src="${contextPath}/resources/${images.imageFilepath}/${images.imageNewName}" class="mz-img-small" />
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="col mz-img-small-col-inner">
												<div class="mz-img-small-div">
													<img src="#" class="mz-img-small noLatestImage"/>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="row mz-content">
						<div class="row mz-content-top">
							<div class="col-8">
								<div class="row mz-title">
									<input type="hidden" value="${res.resId}" id="hiddenResId"/>
									<span style="font-family: 'heavy'; font-size: 2.5rem;">${res.resName}</span>
								</div>
								<div class="row">
									<div class="col-2 mz-location">
										<i class="fas fa-map-marker-alt" style="color: rgb(204, 51, 98); font-size: 1.5rem;"></i>
										<span style="font-family: 'bold'; font-size: 1.5rem;">${res.locationName}</span>
									</div>
									<div class="col-10 mz-address d-flex align-items-center">
										<c:set var="address" value="${fn:split(res.resAddress,',')}"/>
										<p style="font-family: 'medium'; font-size: 1rem; margin: 0;">${address[1]}</p>
									</div>
								</div>
								<div class="row mz-explanation">
									<p style="font-size: 0.9rem;" class="resContentP">${res.resContent}</p>
								</div>
							</div>
							<div class="col-4 d-flex align-items-start flex-column">
								<div class="ml-auto mb-auto mz-rating">
									<span style="font-family: 'bold'; font-size: 2.5rem;">
										<i class="fas fa-star"></i><fmt:formatNumber value="${res.reviewRating}" pattern="0.0"/>
									</span>
								</div>
								<div class="ml-auto mz-buttons d-flex">
									<input type="button" value="&#x1F495; 즐겨찾기" class="form-control mz-bookmark-button shadow-sm" onclick="enrollBookmark()">
									<input type="button" value="&#x1F4DD; 리뷰쓰기" class="form-control mz-review-button shadow-sm" onclick="certificateReview()">
									<input type="hidden" id="goReviewRealBtn" data-toggle="modal" data-target="#write-review">
								</div>
								<script>
									function certificateReview() {
										$.ajax({
											url:"certificateReview.do",
											type:"POST",
											success:function(data){
												if("notvalid" == data) {
													swal("로그인이 필요한 서비스입니다.");
												}else if("success" == data){
													var success = $("#goReviewRealBtn");
													success.click();
													
												}else if("notStatus" == data) {
													swal("리뷰 작성이 제한된 회원입니다.");
												}else {
													swal("리뷰쓰기에 실패하였습니다.");
												}
											},
											error:function(request, status, errorData){
												swal("error code: " + request.status + "\n" + "message: " + request.responseText + "error: " + errorData);
											}
										})
									}
								</script>
								<script>
									function enrollBookmark() {
										var resId = document.getElementById("hiddenResId").value;
										
										$.ajax({
											url:"enrollBookmark.do",
											data:{resId:resId},
											type:"POST",
											success:function(data){
												if("notvalid" == data) {
													swal("로그인이 필요한 서비스입니다.");
												}else if("success" == data){
													swal("즐겨찾기에 추가되었습니다.");
												}else if("already" == data) {
													swal("이미 즐겨찾기 목록에 추가되어 있습니다.");
												}else {
													swal("즐겨찾기 추가에 실패하였습니다.");
												}
											},
											error:function(request, status, errorData){
												swal("error code: " + request.status + "\n" + "message: " + request.responseText + "error: " + errorData);
											}
										})
									}
								</script>
							</div>
						</div>
						<div class="row mz-content-bottom">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item mz-nav-item"><a class="nav-link active" data-toggle="tab" href="#mz-detail">상세정보</a></li>
								<li class="nav-item mz-nav-item"><a class="nav-link" data-toggle="tab" href="#mz-review">리뷰</a></li>
								<li class="nav-item mz-nav-item"><a class="nav-link" data-toggle="tab" href="#mz-photo">사진</a></li>
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
		
		
		<!--  
		<script>
 			$('#myTab a').click(function(e) {
				e.preventDefault();
				$(this).tab('show');
			}); 
			
			$("ul.nav-tabs > li > a").on("shown.bs.tab", function(e) {
				var id = $(e.target).attr("href").substr(1);
				window.location.hash = id;
			});
			
			
			var hash = window.location.hash;
				$('#myTab a[href="' + hash + '"]').tab('show');
		</script>
		
		<script>
			var scrollmem = $("html,body").scrollTop();
			window.location.hash = hash;
			$("html,body").scrollTop();
		</script>
		-->


		<!-- 리뷰 작성하기 모달 -->
		<form id="uploadReview" name="uploadReview" action="uploadReview.do" method="POST">
		<div class="modal fade" id="write-review" data-backdrop="static"
			data-keyboard="false" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<span class="modal-title" id="write-review-title" style="font-family: 'heavy'; font-size: 1.5rem;">리뷰 작성하기</span>
					</div>
					<div class="modal-body">
						<div class="row d-block">
							<div class="row">
								<input type="hidden" name="resId" value="${res.resId}">
								<span style="font-family: 'bold'; font-size: 1.3rem;">${res.resName}</span>
							</div>
							<div class="row d-flex align-items-center">
								<i class="fas fa-map-marker-alt" style="color: rgb(204, 51, 98); font-size: 1.3rem; margin-right: 0.3rem;"></i>
								<span style="font-family: 'medium'; font-size: 1rem;">${res.locationName}</span>
							</div>
							<div class="row">
								<c:set var="address" value="${fn:split(res.resAddress,',')}"/>
								<span style="font-size: 0.8rem;">${address[1]}</span>
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
										<input type="hidden" name="reviewTasterating" class="tasteScore reviewScore" value="3">
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
										<input type="hidden" name="reviewPricerating" class="priceScore reviewScore" value="3">
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
										<input type="hidden" name="reviewServicerating" class="serviceScore reviewScore" value="3">
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
						<button type="button" class="btn" onclick="formSubmit();" style="font-family:'heavy'; font-size:1.1rem;">등록하기</button>
						<input type="hidden" id="realname" name="realname" value=""/>
						<input type="hidden" id="filename" name="filename" value=""/>
						<input type="hidden" id="filesize" name="filesize" value=""/>
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
                    ("내용을 입력해주세요.");
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
            
    		function goDetail(resId) {
    			var locationId = document.getElementById("listLocation").value;
    			window.location.href="goDetailRestaurant.do?resId=" + resId + "&locationId=" + locationId;
    		};
        </script>
	</section>
	<footer></footer>
</body>
</html>