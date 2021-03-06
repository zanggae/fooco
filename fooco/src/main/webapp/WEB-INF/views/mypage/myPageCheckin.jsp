
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
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

  /* 체크인 */
  .checkin_div {
    border-radius: 0.5rem;
    background-color: white;
    padding-top: 1rem;
    padding-bottom: 1rem;
    margin-bottom: 1rem;
    height:19rem;
  }

  .checkin_div_div {
    overflow-x: auto;
    height: 30rem;
    background-color: lightgray;
    padding: 1rem;
  }
  img{
  	margin:0rem;
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

				<div class="col-7 main_content">
					<div class="main_content_div shadow-sm">
						<div class="row">
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F618;
								나의 활동 - 체크인</p>
						</div>

						<div class="row" style="margin-bottom: 1.5rem;">
							<div class="col-8">
								<i class="fas fa-edit" style="font-size: 1.5rem;"></i> <span
									style="font-family: 'heavy'; font-size: 1.2rem;">방문한 맛집에
									대해 자유롭게 기록하세요!</span>
							</div>
							<div class="col-4" align="right">
								<button type="button" class="btn btn-warning btn-sm"
									style="padding: 0.2rem;" onclick="checkinRegister();">추가하기</button>
							</div>
						</div>

						<div class="checkin_div_div">
						<!-- 작성된 체크인이 없을 때 -->
						<c:if test="${empty checkinList }">
							<div style="background-color: white; height: 10rem; border-radius: 0.5rem; padding-top: 3.8rem;">
								<p style="font-size: 1.1rem; font-family: 'heavy'; color: rgb(204, 51, 98); text-align: center">&#x1F645;작성된 체크인이 없습니다.</p>
							</div>
						</c:if>
							<c:forEach var="checkinList" items="${checkinList }">
								<div class="checkin_div shadow-sm">
									<div class="row">
										<div class="col-3">
											<img
												src="${contextPath }/resources/restaurantImage/${checkinList.resImage}"
												style="width: 8rem; height: 6rem; margin: 0rem;">
										</div>
										<div class="col-9"
											style="padding-left: 0.3rem; margin-bottom: 0.5rem;">
											<div class="row">
												<div class="col-8" style="padding-left: 0rem;">
													<p
														style="font-family: 'medium'; font-size: 1.1rem; margin-bottom: 0.3rem;">${ checkinList.resName}</p>
												</div>
												<div class="col-4" align="right">
													<c:url var="CheckinModify" value="CheckinModify.do">
														<c:param name="checkinId" value="${checkinList.checkinId}" />
													</c:url>
													<c:url var="myPageCheckinDelete"
														value="myPageCheckinDelete.do">
														<c:param name="checkinId" value="${checkinList.checkinId}" />
													</c:url>
													<a href="${CheckinModify }"><button type="button"
															class="btn btn-primary btn-sm">수정</button></a> <a
														href="${myPageCheckinDelete }"><button type="button"
															class="btn btn-secondary btn-sm">삭제</button></a>
												</div>

											</div>
											<div class="row" style="margin-bottom: 0.3rem;">
												<p style="margin: 0rem; padding-left: 0rem;">${ checkinList.checkinVisitDate}</p>
											</div>
											<div class="row" style="overflow-x: auto; height: 5rem;">
												<p style="word-break: break-all;">${checkinList.checkinContent }
												</p>
											</div>
										</div>
									</div>
									<div class="row">
										<c:forEach var="checkinImageList"
											items="${checkinList.checkinImageList }">
											<c:if test="${!empty checkinImageList.imageNewName }">
												<div class="col-4">
													<img
														src="${contextPath }/resources/checkinImage/${checkinImageList.imageNewName}"
														style="width: 11rem; height: 7rem; margin: 0rem;">
												</div>
											</c:if>
										</c:forEach>
									</div>
									<!-- 첨부된 파일이 하나도 없을 때 -->
									<c:forEach var="checkinImageList1"
										items="${checkinList.checkinImageList }">
										<c:if test="${empty checkinImageList1.imageNewName }">
											<div style="height: 5rem; padding-top: 2.8rem;">
												<p
													style="font-size: 1.1rem; font-family: 'heavy'; color: rgb(204, 51, 98); text-align: center">&#x1F645;첨부된
													사진이 없습니다.</p>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>
		</div>
	</div>
	</section>
</body>


<script>
// 추가하기 버튼
function checkinRegister(){
	location.href="CheckinRegister.do?"; 
}



</script>



</html>