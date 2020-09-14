<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
   <!-- 아이콘 -->
   <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>

   <!--jquery-->
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>

  <style>
    @font-face {font-family: 'heavy';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
      font-weight: bold; font-style: normal;}

    @font-face {font-family: 'bold';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
      font-weight: normal; font-style: normal;}

    @font-face {font-family: 'medium';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
                font-weight: normal; font-style: normal;}

    @font-face { font-family: 'light';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
                font-weight: normal; font-style: normal;}

    * {font-family: 'light';}
    /*a태그 설정*/
    A:link {text-decoration: none; color:#646464;}
    /* A:visited {text-decoration: none; color:#646464;} */
     A:active {text-decoration: none; color:#646464;} 
    A:hover {text-decoration: none; color:rgb(204,51,98);}

    /*상단 제목*/
    .back{border-style : none; height: 12rem; width: 54rem; background-image: url(resources/etcimage/serviceCenterImg2.png); opacity: 0.8; position: absolute; z-index: 0;}
    .title{font-size: 4rem; font-family: 'heavy'; color : black; margin-left: 3rem; margin-top: 0.5rem; z-index:3; position: absolute;}
    
    /*메뉴바*/
    #round{border-style: solid; color : black; height: 19rem; width: 12.5rem; }
    .leftMenubar li{list-style:none; margin-top:1rem;}
    .li_1{color :rgb(204,51,98);; font-family: 'heavy'; font-size: 1.7rem;}
    .li_2{color : #646464; font-family: 'medium'; font-size:1.2rem; margin-left: 2.4rem;}    
    .li_3{color : #646464; font-family: 'medium'; font-size:1.2rem; margin-left: 1.1rem;} 
    .text1{font-size : 1.1rem; font-family: 'medium'; color:black;}
    .text1 a:hover {color:rgb(253,215,129);font-family: 'medium';} 
   
   /*아코디언 토글*/
   #accordian li{ list-style:none;}
		#accordian li >h1{ cursor:pointer;}
		li > ul{ display:none;}
		li > ul >li{ color:#00F;}
    .qborder{border-style:none; border-top: 0.1px groove black; border-bottom:0.1px groove black; width: 50rem; height: 5.5rem; }
    .aborder{border-style:none; border-top: 0.1px groove black;  width: 50rem; height: auto; margin-left: -2.5rem; background-color: rgb(245, 245, 245);}
    .mark{font-family: 'heavy'; margin-top: 0.8rem; font-size: 2rem; color: darkblue; background:none ;}
    .question{font-family: 'light'; margin-top: 1.5rem; font-size: 1.5rem;cursor:pointer;}
    .answer{font-family: 'light'; font-size:1.5rem; margin-top:1.5rem;}

    /*아이콘 설정*/
    #plus{position : absolute; margin-top: 1.3rem; font-size: 2rem; cursor:pointer;}
    
    
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
 
    <div class="container">
      <div class="row">
        <div class="col-10">

          <div class="back">
            <a href="FAQ.do" class="title">FAQ</a>
          </div>
			
          <div id="accordian" style="margin-top:18rem;">
            <c:forEach var="F" items="${FAQ }">
            <ul>
              <li>
                <div class="qborder">
                  <div class="row">
                    <div class="col-1">
                      <h1 class="mark">Q</h1>
                    </div>
                    <div class="col-9">
                      <h1 class="question">${F.boardTitle }</h1>
                    </div>
                    <div class="col-2">
                      <span class="ico_ar"><i class="fas fa-angle-down" id="plus"></i></span></h1>
                    </div>
                  </div>
                </div>
               
                <ul>
                  <div class="aborder">
                    <div class="row">
                      <div class="col-1">
                        <h1 class="mark">A</h1>
                      </div>
                      <div class="col-9">
                        <li class="answer">${F.boardContent }</li><br>

                      </div>
                      <div class="col-2"></div>
                    </div>
                    <!--row끝-->
                  </div>
                  <!--aborder끝-->
                </ul>
              </li>

            </ul><!--마지막 ul-->
			
			</c:forEach>

			<br><br>
          </div>
          <!--아코디언 div끝-->

        </div>
        <!--col-10에 끝 -->
        <div class="col-2" style="margin-top: 3rem;">

          <ul class="leftMenubar">
            <li class="li_1" style="margin-top: 3.5rem; margin-bottom: 1.3rem;">고객센터</li>

            <li><a href="notice.do" class="li_3">공지사항</a></li>

            <li><a href="FAQ.do" class="li_2">FAQ</a></li>

            <li><a href="inquiry.do" class="li_3">1:1 문의</a></li>
          </ul>

        </div>
        <!---->

      </div>
      <!--container 끝-->

  </section>

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

  <script>

    $(function () {
      $("#accordian div").click(function() {
        $("#accordian ul ul").slideUp();
        $(this).find("i").attr("class","fas fa-angle-down");
        if (!$(this).next().is(":visible")) {
          $(this).next().slideDown();
          $(this).find("i").attr("class","fas fa-angle-up");
        }
      })
    })


  </script>


  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
</body>

</html>