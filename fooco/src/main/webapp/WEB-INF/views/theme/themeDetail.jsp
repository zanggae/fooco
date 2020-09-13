<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <!-- 아이콘 -->
  <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
  <style>
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

    * {
      font-family: 'light';
    }
    
	/*themeTitle 부분*/
    .text1 {margin-top: -0.4rem; margin-left: 53rem; background-color: none; position: absolute; transform: translate(-50%, -50%)}
    .middle {border: 5rem solid rgb(204, 51, 98);}
    
    /*본문 */
    .text2 {background-color: none; position: absolute; text-align: center; top: 25%; left: 50%; transform: translate(-50%, -50%); 
    font-size: 2.5rem; color: white; font-family: 'bold';}
    .img1 {margin: 0; padding: 0; position: relative; width: 19rem; height: 14rem; border-radius: 1%; margin-top: 1.2rem; margin-left: 2rem; padding-bottom: 1.2rem;}
    .img1:hover {-webkit-transform: scale(1.1, 1.1);}
	.title {margin-top: 1.5rem; margin-left: 0.9rem; font-size: 1.3rem; font-family: 'bold'; text-align: left; position: relative; transform: translate(-10%, -10%);}
	 #star {position: absolute; color: gold; font-size: 2.8rem; margin-top: 1rem;}
	.score {position: absolute; font-size: 2.6rem; color: gold; margin-left: 4rem; margin-top: 1rem; font-weight: bold;}
	.address {color: gray; font-family: 'bold';}
	.nickname {font-size: 1.1rem; font-family: 'medium';}
	.content {font-size: 1rem; font-family: 'light';}
	.see_more {font-size: 0.9rem; color: rgb(204, 51, 98); font-weight: bold;}
	.detailInfo {font-size: 0.9rem; color: silver; margin-left: 22rem; font-weight: bold;}
	.boundary {height: 16rem; border: 0.4rem solid lightgray; background-color: white; border-radius: 0.5rem;}
	.text4 {font-size: 1.2rem; font-family: 'bold'; text-align: center; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
    .textbound {border: 1rem; border-style: none;}

	.title {
      margin-top: 1.5rem;
      margin-left: 0.9rem;
      font-size: 1.3rem;
      font-family: 'bold';
      text-align: left;
      position: relative;
      transform: translate(-5%, -10%);

    }

    #star {
      position: absolute;
      color: gold;
      font-size: 2.8rem;
      margin-top: 1rem;
    }

    .score {
      position: absolute;
      font-size: 2.6rem;
      color: gold;
      margin-left: 4rem;
      margin-top: 1rem;
      font-weight: bold;

    }

    .address {
      color: gray;
      font-family: 'bold';
    }

    .nickname {

      font-size: 1.1rem;
      font-family: 'medium';
    }

    .content {
      font-size: 1rem;
      font-family: 'light';

    }

    .see_more {
      font-size: 0.9rem;
      color: rgb(204, 51, 98);
      font-weight: bold;
    }

    .detailInfo {
      font-size: 0.9rem;
      color: silver;
      margin-left: 22rem;
      font-weight: bold;
    }

    .boundary {
      height: 16rem;
      border: 0.4rem solid lightgray;
      background-color: white;
      border-radius: 0.5rem;


    }

    .text4 {
      font-size: 1.2rem;
      font-family: 'bold';
      text-align: center;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    .textbound {
      border: 1rem;
      border-style: none;
    }
    
    .pickDiv{cursor: pointer;} 
 	.pickDiv:hover{text-decoration: underline;}
  </style>

</head>

<body>
<header>
 <jsp:include page="../common/commonHeader.jsp"></jsp:include>  
</header>

<section>
  <div class="middle">


    <div class="text2">${theme.themeTitle}</div>
  </div>
  <div id="test">
    <div class="container">
      
        <c:forEach var="r" items="${restaurant1 }">
      
          <br><br>

          <div class="row">
            <!--바깥쪽을 나누기 위한 row-->
            <div class="col-1">
            </div>
            <div class="col-10">
              <!--들어갈 내용row-->
              <div class="boundary">
                <div class="row">
                  <!--테두리 안쪽 내용을 위한 row-->

                  <!--사진구역-->
                  <div class="col-5" style="  width:300px;height:183.2px;display:inline-block;">
                    <div><img src="resources/restaurantImage/${r.resImageName}" class="img1">
                    </div>
                  </div>


                  <!--내용 구역-->
                  <div class="col-7">
                    <div class="row">
                      <!--제목, 평점 구역-->
                      <div class="col-8">
                        <p class="title">${r.resName}</p>
                      </div>
                      <div class="col-4">
                        <i class="fas fa-star" id="star"></i>
                       
                        <h1 class="score"> <fmt:formatNumber type="number" value="${r.reviewRatingAvg}" pattern="0.0"/></h1>
                      </div>
                    </div>
                    <!--제목, 평점 구역 끝-->
                    <div class="row">
                    <c:set var="address" value="${fn:split(r.resAddress,',')}"/>
                      <div class="col-10 address">
                        ${address[1]}
                      </div>

                    </div>

                    <div class="nickname" style="margin-top: 0.5rem;">${r.reviewNickname}
                    </div>
                    <div class="content"
                      style="font-family:'light';height : 3rem; width:30rem; overflow-y : auto; overflow-x : hidden; margin-top: 0.2rem;">
                  		${r.reviewContent }
                    </div>
                    <c:url var="detailRes" value="goDetailRestaurant.do">
                  	<c:param name="resId" value="${r.resId }"/>
                  	</c:url>
                    <div style="margin-bottom:0.5rem; margin-top:0.5rem"><a href="${detailRes}"
                        class="detailInfo">음식점 정보 더보기&nbsp;&nbsp;<i class="fas fa-arrow-right"></i></a>


                    </div>

                  </div>

                </div>
              </div>
              <div class="col-1">

              </div>
            </div>
            <!--큰 row 끝-->

            <br><br><br>
          </div>
          <!--오른쪽 여백-->
				</c:forEach> 
		
	</section>
      </div>



    </div>
  <!--container끝-->
	<br><br><br>


  <footer>
  
  </footer>
  

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
</body>

</html>