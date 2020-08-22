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

    /*왼쪽 메뉴바*/

    .left_menu {
      border: rgb(253, 215, 129);
      width: 9.5rem;
      height: 10rem;
      background-color: rgb(253, 215, 129);
    }

    .li_1 {
      color: black;
      font-weight: bolder;
      margin-left: 0.4rem;
    }

    .leftMenubar li {
      list-style: none;
    }

    .li_2 {
      color: black;
      margin-left: 0.4rem;
    }

    /*공지사항 본문*/
    .center {
      border: rgb(253, 215, 129);
      width: 45rem;
      height: auto;
      background-color: rgb(253, 215, 129);
      position: absolute;
    }

    .header_font {
      margin-left: 3rem;
      margin-top: 1.5rem;
      font-size: 1.8rem;
      font-weight: bold;
    }

    .title_font {
      margin-left: 3rem;
      margin-top: 1.5rem;
      font-size: 1.4rem;
      font-weight: bold;
    }

    .content_font {
      margin-left: 3rem;
      margin-top: 1rem;
      font-size: 1.1rem;

    }

    .notice_list {
      margin-bottom: 5rem;
      text-align: center;
      border: 0.1rem solid #ececec;
      background-color: #ececec;
      border-radius: 0.2rem;
      height: 4rem;
      width: 26rem;
      margin-left: 5rem;

    }

    #accordionEdge_setting {
      padding-top: 2rem;
      padding-left: 2rem;
      padding-right: 2rem;
      box-shadow: none !important;
    }
  </style>
</head>

<body>

  <!-- <div class="container"> -->
  <header>
	  <jsp:include page="../common/subMenubar.jsp"></jsp:include> 
	 
	  </header>  
	  
	  <section>
    <!--왼쪽 메뉴바-->
    <div class="row">
      <div class="col-2">
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;<h6>HOME></h6>
      <h6 style="color: rgb(204, 51, 98)">고객센터</h6>
    </div>
    <br>
    <div class="row">
      <div class="col-2">
      </div>
      <div class="col-2">
        <div class="left_menu">
          <ul class="leftMenubar">
            <br>
            <li><a href="#" class="li_1">고객센터</a></li>
            <li style="margin-top: 0.6rem;"><a href="#" class="li_2">공지사항</a></li>
            <li style="margin-top: 0.2rem;"><a href="FAQ.do" class="li_2">&nbsp;&nbsp;FAQ</a></li>
            <li style="margin-top: 0.1rem;"><a href="#" class="li_2">1:1문의</a></li>
          </ul>
        </div>
      </div>

      <!--본문 구역-->
      <div class="col-5">
        <div class="center">
          <h1 class="header_font">공지사항</h1>
          <c:forEach var="n" items="${notice }">
          <div class="accordionEdge_setting" id="accordionEdge_setting">
            <div class="accordion" id="accordionExample">
              <div class="card accordioncontent_setting">
                <div class="card-header" id="headingOne">
                  <h2 class="mb-0">
                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
                      data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    	${n.boardTitle }
                    </button>
                  </h2>
                </div>
                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                  data-parent="#accordionExample">
                  <div class="card-body">
         			${n.boardContent }
                  </div>
                </div>
              </div>
            </div>
            </div>
            <br>
           </c:forEach>
        </div>
      </div>
    </div>
	
	</section>


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