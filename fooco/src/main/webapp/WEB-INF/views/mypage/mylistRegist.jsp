<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

  /* #test {background: white; width: 69rem; height: 70rem; margin-left: 13rem; margin-top: 1rem; border-radius: 15px;} */
   
    /*맛집추가*/
    .img_set {width: 9.5rem; height: 6rem; margin-top: 2rem; border: solid black 0.18rem; border-radius: 5%;}
    #searchIcon {position: absolute; z-index: 100; top: 0.5rem; left: 14.3rem;}
    #btn1 {margin-left: 0.2rem; height: 2rem; width: 2.5rem; box-shadow: none !important; border: none !important;}
    #search {height: 2rem; border: 1px solid black; color: gold; -webkit-border-radius: 7px; -moz-border-radius: 5px; border-radius: 5px; box-shadow: none;}
   
   /*선택된 맛집*/
    .img_set2 {width: 10rem; height: 6rem; margin-left: 1rem; border: solid black 0.18rem; border-radius: 5%;}
    #position1 {margin-top: 2rem;} 
    #btn2 {box-shadow: none !important; border: none !important; width: 5.5rem; margin-left: 68rem;}
  </style>
</head>

<body>

	<header>
	 <jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>


	<section>
  <div class="container">

    <div style="text-align: center;">
      <br><br>
      <h3>마이리스트 만들기</h3>
      <br>
      <form id="mylistForm" action="mylistInsert.do" method="get">
        <div class="form-group row" style="margin-left: 8rem; font-size: 1.2rem;">
          <label for="inputEmail3" class="col-sm-3 col-form-label">마이리스트 제목</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" style="width: 35rem; border:1px solid black; box-shadow: none;">
          </div>
        </div>

    </div>
    <br>
    <div class="row row-cols-2" style="text-align: center;">

      <div class="col-4" style="margin-left: 4rem;">
        <h3>맛집 추가</h3>
        <hr>

        <div class="input-group" style="width:16em; margin-left: 3rem; box-shadow: none !important;">
          <input type="text" class="form-control" placeholder="음식점 검색" id="search">
          <button type="button" class="btn btn-warning" id="btn1"><i class="fas fa-search" id="searchIcon"></i></button>
        </div>
        <br>
        <div style="height : 40rem; 
                  overflow-y : auto;">
          <!-- list로 뿌릴부분? 검색해줄부분? -->
          <div style="text-align: center;" onclick="#">
            <img src="img/sushi2.jpeg" class="img_set">
            <div style="font-weight: bold;">영은스시</div>
            <div>경기도 평택시 평택로길 184번길 1</div>
            

          </div>
        </div>
      </div>
      &nbsp;<div class="col-5" style="margin-left: 6rem; padding: 0; ">
        <h3>선택된 맛집</h3>
        <hr style="margin-bottom: 5rem;">

        <div style="height : 40rem; overflow-y : auto; overflow-x : hidden;">
          <div class="row">

            <div class="col-5" id="position1">
              <img src="img/sushi2.jpeg" class="img_set2">
            </div>
            <div class="col-5" id="position1">
              <h5 style="font-weight: bold; text-align: center;">영은스시</h5>
              <div style="text-align: center;">경기도 평택시 평택로길 184번길 1</div>
            </div>
          </div>
          <div class="row">

            <div class="col-5" id="position1">
              <img src="img/sushi2.jpeg" class="img_set2">
            </div>
            <div class="col-5" id="position1">
              <h5 style="font-weight: bold; text-align: center;">영은스시</h5>
              <div style="text-align: center;">경기도 평택시 평택로길 184번길 1</div>
            </div>
          </div>
          <div class="row">

            <div class="col-5" id="position1">
              <img src="img/sushi2.jpeg" class="img_set2">
            </div>
            <div class="col-5" id="position1">
              <h5 style="font-weight: bold; text-align: center;">영은스시</h5>
              <div style="text-align: center;">경기도 평택시 평택로길 184번길 1</div>
            </div>
          </div>
          <div class="row">

            <div class="col-5" id="position1">
              <img src="img/sushi2.jpeg" class="img_set2">
            </div>
            <div class="col-5" id="position1">
              <h5 style="font-weight: bold; text-align: center;">영은스시</h5>
              <div style="text-align: center;">경기도 평택시 평택로길 184번길 1</div>
            </div>
          </div>
          <div class="row">

            <div class="col-5" id="position1">
              <img src="img/sushi2.jpeg" class="img_set2">
            </div>
            <div class="col-5" id="position1">
              <h5 style="font-weight: bold; text-align: center;">영은스시</h5>
              <div style="text-align: center;">경기도 평택시 평택로길 184번길 1</div>
            </div>
          </div>
          <div class="row">

            <div class="col-5" id="position1">
              <img src="img/sushi2.jpeg" class="img_set2">
            </div>
            <div class="col-5" id="position1">
              <h5 style="font-weight: bold; text-align: center;">영은스시</h5>
              <div style="text-align: center;">경기도 평택시 평택로길 184번길 1</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--container 끝-->
  <br><br>
  <button type="button" class="btn btn-warning" id="btn2">등록하기</button>
  </form>

 

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