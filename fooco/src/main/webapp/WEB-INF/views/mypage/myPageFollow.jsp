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
	padding: 0rem !important;
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

 /* 팔로우 */
  .follow_img{
    width: 3rem; height: 3rem; border-radius: 50%; border:solid 1px black; margin:0rem;
  }
  .follow_div{overflow-x: auto; height:10rem; margin-bottom: 1rem;}
  .follow_font{font-family: 'medium'; margin: 0rem;}
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
                <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F618; 나의 활동 - 팔로우</p>
              </div>

						 <div class="row">
                <p style="font-size:1.3rem; font-family:'heavy'; color:rgb(204,51,98);">팔로워</p>
              </div>

              <div class="follow_div">
              <!-- 팔로워가 없을 때  -->
				<c:if test="${empty followerlist}">
				<div>
					팔로워가 없습니다 ㅠㅡㅠ
				</div>
				</c:if>			
				<c:forEach var="follower" items="${followerlist }">
                <div class="row shadow-sm" style="background-color: white; border-radius: 0.5rem; margin-bottom: 0.5rem;">
                  <div class="col-1">
                    <img class="follow_img" src="resources/ProFiles/${follower.renameName}">
                  </div>
                  <div class="col-6">
                    <div class="row" style="padding-left: 1rem;">
                      <p class="follow_font">${follower.nickName}</p>
                    </div>
                    <div class="row">
                      <div class="col-5" style="padding-right: 0rem;">
                        <p class="follow_font">팔로워 ${follower.followerCount}</p>
                      </div>
                      <div class="col-6" style="padding-left: 0rem;">
                        <p class="follow_font">팔로잉 ${follower.followingCount}</p>
                      </div>
                    </div>
                  </div>
                </div>
				</c:forEach>
              </div>



              <!-- 팔로잉 -->
              <div class="row" style="margin-top: 2rem;">
                <p style="font-size:1.3rem; font-family:'heavy'; color:rgb(204,51,98);">팔로잉</p>
              </div>


              <div class="follow_div">
              <!-- 팔로잉이 없을 때  -->
				<c:if test="${empty followinglist}">
				<div>
					팔로잉이 없습니다 ㅠㅡㅠ
				</div>
				</c:if>	
				<c:forEach var="following" items="${followinglist }">
                <div class="row shadow-sm" style="background-color: white; border-radius: 0.5rem; margin-bottom: 0.5rem;">
                  <div class="col-1">
                    <img class="follow_img" src="resources/ProFiles/${following.renameName}">
                  </div>
                  <div class="col-6">
                    <div class="row" style="padding-left: 1rem;">
                      <p class="follow_font">${following.nickName}</p>
                    </div>
                    <div class="row">
                      <div class="col-5" style="padding-right: 0rem;">
                        <p class="follow_font">팔로워 ${following.followerCount}</p>
                      </div>
                      <div class="col-6" style="padding-left: 0rem;">
                        <p class="follow_font">팔로잉 ${following.followingCount}</p>
                      </div>
                    </div>
                  </div>
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


</html>