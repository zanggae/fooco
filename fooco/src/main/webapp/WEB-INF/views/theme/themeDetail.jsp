<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
      font-size: 1.6rem;
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
 	
 	 /* 메인 푸터 */
        .mainFooter{
        	height:21rem; background-color:rgb(248,248,248);        	     	
        }
        .mainFooter span{
        	display:inline-block;
        	margin-right:100px;       	
        }
        .mainFooter span:nth-of-type(1){
        	margin-left:230px;
        	margin-right:150px;
        	margin-top:12px;
        	font-size:10px;
        }
        .mainFooter span:nth-of-type(2){
        	margin-top:30px;
        	position:absolute;	
        }
        .mainFooter span:nth-of-type(3){
        	position:absolute;
        	margin-top:30px;
        	margin-left:200px;
        }
       #footerPimog{
        	margin-top:-1000px;
        	margin-left:600px;
        	font-size:35px;
        }
        .mainFooter img{
         width:100px;
         height:80px;
        }
        .mainFooter hr{
         width:80%;
         color:gray;
         margin-top:45px;
        }
        #footerP{
        	margin-left:230px;
        	margin-top:15px;
        	font-size:13px;
        }
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
                      <div class="col-10 address">
                        ${r.resAddress }
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
  
   <div class="mainFooter">
               <span>
               	<img src="resources/logo/logo.png">   
               	<p style="font-size:12px; margin-left:3px;">매일매일 FOOCO와 함께 Enjoy!</p>
               </span>
               <span>
               		<p style="font-size:14px; font-family:bold;" >COMPANY</p>
               		<p style="font-size:14px">회사소개</p>
               		<p style="font-size:14px">FOOCO 채용</p>
               		<p style="font-size:14px">투자정보</p>
               		<p style="font-size:14px">FOOCO 비즈니스</p>
               		<p style="font-size:14px">광고문의</p>
               </span>          
               <span>
               		<p style="font-size:14px; font-family:bold;" >FOR YOU</p>
               		<p style="font-size:14px">공지사항</p>
               		<p style="font-size:14px">이용약관</p>
               		<p style="font-size:14px">비회원 이용자 이용정책</p>
               		<p style="font-size:14px">개인정보처리방침</p>
               		<p style="font-size:14px">커뮤니티 가이드라인</p>
               </span> 
               <span id="footerPimog">
               <p style="font-size:15px; text-align:center; font-family:bold;">Social Link</p>
               	<a href=https://www.facebook.com/><i class="fab fa-facebook-square" style="color:rgb(59,89,152);"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=https://twitter.com/?lang=ko><i class="fab fa-twitter-square" style="color:rgb(42,169,224);"></i></a>
               	&nbsp;&nbsp;&nbsp;<a href=https://www.instagram.com/?hl=ko><i class="fab fa-instagram" style="color:rgb(204,36,96);"></i></a>
               	<!-- <p style="font-size:15px; text-align:center;">Social Link</p> -->
               </span><br><br><br><br><br><hr>
              	<p id="footerP" style="font-family:'light'; color:gray;">
                    (주)FOOCO&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;서울특별시 서초구 강남대로42길 12, 3층 (역삼동, 경남짱빌딩)<br>
                     	대표이사 : 김경남(KKN PRINCESS)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;사업자 등록번호: 202-09-17200 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;고객센터: 02-565-1234 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; © 2020 FOOCO Co., Ltd. All rights reserved.
                </p>
            </div>
  
  
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