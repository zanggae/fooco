<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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

      /*폰트*/
      @font-face {
      font-family: 'heavy';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
      font-weight: bold;
      font-style: normal;
      }

    @font-face {
      font-family: 'bold';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    @font-face {
      font-family: 'medium';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    @font-face {
      font-family: 'light';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    * {font-family: 'light';}

       /*a태그 설정*/
       A:link {text-decoration: none; color:#646464;}
    /* A:visited {text-decoration: none; color:#646464;} */
     /* A:active {text-decoration: none; color:#646464;}  */
    A:hover {text-decoration: none; color:rgb(204,51,98);}

/* 페이지 전체 */
.mypage_container {padding: 0 !important; margin-top: 3rem !important;}
.myPage-row {margin: 0;}

/* 가운데 내용 */
.main_content {margin: 0; padding: 0;}
.main_content_div {background: lightgray; border-radius: 0.5rem; padding: 1rem;}
.main_content .row {margin: 0;}

/*마이리스트 본문*/
.text1{font-size: 1.5rem; font-family:'bold'; text-align: center; position: relative; top: 50%; left: 50%; transform: translate( -50%, -50% );}
.text2{font-size: 1.2rem; font-family:'medium'; text-align: left; position: relative; top: 25%; left: 50%; transform: translate( -50%, -50% );}
.text3{font-size: 1rem; font-family:'light'; text-align: left; position: relative; top: 25%; left: 50%; transform: translate( -50%, -50% );
        margin-top : 1.5rem}
 /*myList*/
 .edge {border: 0.1rem solid black; background-color: white; height: 10rem; }
.img1 {margin-left:0; width: 11rem; height: 8rem; border-radius: 5%;}
.title {font-size: 1.1rem; font-weight: bold; margin-top: 3rem; text-align: center;}
.content {font-size: 1rem;}
.btn-light {background-color: rgb(204, 51, 98); border: rgb(204, 51, 98); box-shadow: none !important; width: 4.3rem; height: 1.8rem; font-size: 0.7rem; font-weight: bold; color: white; margin-top: 0.1rem; margin-bottom: 0.3rem;}
#more{margin-top:4rem;}

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

				<div class="col-7 main_content" style="padding:0;">
					<div class="main_content_div shadow-sm">
						<div class="row center_title">
							<p style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F618;
								나의 활동 - 마이리스트 </p>
						</div>
                        <br>
                        <div class="text1">${mylist.mlTitle }</div>
						 <c:forEach var="r" items="${restaurant }">
                        <br>
                        <div class="row shadow-sm edge">
                          <div class="col-4 d-flex justify-content-center align-items-center">
                            <img src="resources/restaurantImage/${r.resImageName}" class="img1">
                          </div>
                              <div class="col-6">
                                <h6 class="text2">${r.resName }</h6>
                                <h6 class="text3">${r.resAddress }</h6>
                              </div>
                            <div class="col-2" id="more">
								<c:url var="detailRes" value="goDetailRestaurant.do">
                  					<c:param name="resId" value="${r.resId }"/>
                  					</c:url>
                                <a href="${detailRes}">더보기&nbsp;&nbsp;<i class="fas fa-arrow-right"></i></a>

                            </div>
                              
                        </div>
						</c:forEach>
 
                   
					<br>
					
					</div>
				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
		<br><br>
	</section>

</body>

</html>