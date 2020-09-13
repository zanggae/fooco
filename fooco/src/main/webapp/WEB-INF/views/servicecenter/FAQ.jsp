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
    .qborder{border-style:none; border-top: 0.1px groove black; border-bottom:0.1px groove black; width: 50rem; height: 5rem; margin-top : 0.5rem;}
    .aborder{border-style:none; border-top: 0.1px groove black;  width: 50rem; height: auto; margin-left: -2.5rem; background-color: rgb(245, 245, 245);}
    .mark{font-family: 'heavy'; margin-top: 0.8rem; font-size: 2rem; color: darkblue; background:none ;}
    .question{font-family: 'light'; margin-top: 1.5rem; font-size: 1.5rem;cursor:pointer;}
    .answer{font-family: 'light'; font-size:1.5rem; margin-top:1.5rem;}

    /*아이콘 설정*/
    #plus{position : absolute; margin-top: 1.3rem; font-size: 2rem; cursor:pointer;}
    </style>
    
    </head>

<body>
  <header>
    <jsp:include page="../common/commonHeader.jsp"></jsp:include>
  </header>



  <section>
  <br>
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
                        <li class="answer"><textarea style="board:none;">${F.answerContent }</textarea></li><br>
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

            <li><a href="#" class="li_3">1:1 문의</a></li>
          </ul>

        </div>
        <!---->

      </div>
      <!--container 끝-->

  </section>

  <footer>

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