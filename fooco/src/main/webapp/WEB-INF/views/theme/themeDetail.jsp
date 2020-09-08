<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    .top {
      border: 4.5rem solid rgb(253, 215, 129);
      background-color: none;
    }

    img.fixed {
      margin-top: -3rem;
      padding-left: 5rem;
      position: absolute;
      width: 14rem;
      height: 6rem;
    }

    .circle {
      margin-top: -2.5rem;
      margin-left: 45rem;
      position: absolute;
      width: 4.5rem;
      height: 4.5rem;
      border-radius: 50%;
      background: rgb(204, 51, 98);
    }

    .text1 {
      margin-top: -0.4rem;
      margin-left: 53rem;
      background-color: none;
      position: absolute;
      transform: translate(-50%, -50%)
    }

    /*상단부분 설정*/

    .middle {
      border: 5rem solid rgb(204, 51, 98);
    }

    .text2 {
      background-color: none;
      position: absolute;
      top: 5rem;
      left: 48rem;
      transform: translate(-50%, -50%);
      font-size: 2.5rem;
      color: white;
      font-family: 'bold';
    }

    .img1 {
      margin: 0;
      padding: 0;
      position: absolute;
      width: 15.5rem;
      height: 10rem;
      /* border: solid black 0.18rem;*/
      border-radius: 8%;
      margin-top: -1rem;


    }

    .img1:hover {

      -webkit-transform: scale(1.1, 1.1);
    }

    .title {
      margin-top: 0.5rem;
      margin-left: 0.9rem;
      font-size: 1.5rem;
      font-family: 'bold';

    }

    #star {
      position: absolute;
      color: gold;
      font-size: 3rem;
      margin-top: 0.2rem;
      margin-left: 18rem;

    }

    .score {
      position: absolute;
      font-size: 2.6rem;
      color: gold;
      margin-left: 22rem;
      margin-top: -0.01rem;
      font-weight: bold;

    }

    .address {
      color: gray;
      font-weight: bold;
    }

    .nickname {
      font-weight: bold;
      font-size: 1.1rem;
    }

    .content {
      font-size: 1rem;

    }

    .see_more {
      font-size: 0.9rem;
      color: rgb(204, 51, 98);
      font-weight: bold;
    }

    .detailInfo {
      font-size: 0.9rem;
      color: silver;
      margin-left: 20rem;
      font-weight: bold;
    }

    /* #test{
    background: rgb(240,240,240);
    width: 69rem;
    height: 70rem;
    margin-left: 13rem;
    margin-top: 0.5rem;
    border-radius: 15px;
  } */

    .boundary {
      margin: 0;
      padding: 0;
      border: 0.1rem solid black;

    }
  </style>

</head>

<body>





  <div class="middle"></div>
  <div class="text2">${theme.themeTitle}</div>
  <div id="test">
    <div class="container">      
      <c:forEach var="r" items="${restaurant1 }">
      
      <br><br>
      <div class="row">
        <!--왼쪽 여백-->
        <div class="col-2">
        </div>
        <div class="boundary">
          <!--사진구역-->
          <div class="col-4" style="  width:300px;height:183.2px;display:inline-block;">
            <img src="resources/restaurantImage/${r.resImageName}" class="img1">
          </div>


          <!--내용 구역-->
          <div class="col-7" style="display:inline-block;width:500px; margin-left : 0.5rem;
          margin-top: 0.7rem;">
            <div class="row" style="margin-top: 1rem;">
              <h1 class="title">${r.resName}</h1>
              <i class="fas fa-star" id="star"></i>
              <h1 class="score">${r.reviewRatingAvg }</h1>
            </div>
            <div class="address">${r.resAddress }
            </div>
            <br>
            <div class="nickname">${r.reviewNickname}
            </div>

            <div class="content" style="height : 3rem; overflow-y : auto; overflow-x : hidden;">
              ${r.reviewContent }
            </div>
				<c:url var="detailRes" value="goDetailRestaurant.do">
                  	<c:param name="resId" value="${r.resId }"/>
                  	</c:url>
            <div><a href="${detailRes}" class="detailInfo">${r.resName} 더보기 ></a>
            </div>
            <br>
          </div>

        </div>
      </div>
      <!--오른쪽 여백-->

	</c:forEach> 
    </div>






  </div>
  <!--container끝-->
  <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br>

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