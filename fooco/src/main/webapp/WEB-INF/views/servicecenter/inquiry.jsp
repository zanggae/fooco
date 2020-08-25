<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
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

    * {
      font-family: 'light';
    }
     /*문의 등록*/
     .title{margin-top: 4rem; margin-left: 29rem;}
      #none{ box-shadow: none !important;}
      .bord{border:solid; border-top : none; border-left: none; border-right: none;}
      .box{border: rgb(253, 215, 129); width: 15rem; height: 15rem; background-color: rgb(253, 215, 129); position: absolute;}
      .leftMenubar li{list-style: none;}



  
  </style>
</head>

<body>
  <!--메뉴바-->
  <header>
	<jsp:include page="../common/menubar.jsp"></jsp:include>
  </header>
  <section>

    <!--문의 등록-->
    <div class="container">
      <h3 class="title">1:1 문의하기</h3>
      <br><br>
      <div class="row">
        <div class="col-3">
        </div>
        <!--form-->
        <form action="inquiryInsert.do" method="post" enctype="Multipart/form-data" class="form-inline">
          <!--select-->
          <label>문의선택</label>
          <select class="custom-select my-1 mr-sm-2" id="none" style="margin-left: 2rem; width: 25rem;">
            <option selected value="">선택</option>
            <option value="res">음식점 문의</option>
            <option value="review">리뷰 문의</option>
            <option value="theme">테마 문의</option>
            <option value="etc">기타 문의</option>
          </select>
      </div>
      <!--input-->
      <div class="row" style="margin-top: 2rem;">
        <div class="col-3">
        </div>
        <!-- 제목 -->
        <label>&nbsp;&nbsp;제목</label>
        <input type="text" class="form-control" id="none" placeholder="제목을 입력하세요"
          style="margin-left: 3.4rem; width: 25rem; margin-top: -0.3rem;">
      </div>
	
	<!-- 내용 -->
      <div class="row" style="margin-top: 2rem;">
        <div class="col-3">
        </div>
        <label>&nbsp;&nbsp;내용</label>
        <textarea id="summernote" name="editordata" class="form-control" rows="15"
          style="margin-left: 3.4rem; width: 25rem; box-shadow: none !important; resize:none">
                </textarea>
      </div>

      <!--이미지 첨부-->
      <div class="row mt-2" id="file1" class="fileput" style=>
        <div class="text-center" style="margin-left: 17rem; margin-top : 1.4rem;">
          <label for="find_file01">이미지 첨부</label>
        </div>
        <div class="col-md-6 form-group form_file" style="position: relative;">

          <input type="text" id="inquiryFile" class="form-control form_point_color01"
            style="position: absolute; width: 25rem; margin-top : 1rem; margin-left: 0.7rem;" readonly
            placeholder="첨부할 이미지 파일을 클릭 또는 드래그하세요">
          <input type="file" name="inquiryFile" class="form-control" id="inquiryFile"
            style="position:absolute; opacity: 0;"
            onchange="javascript: document.getElementById('inquiryFile').value = this.value">

        </div>
      </div>



      </form>
      <br>

      <input type="submit" value="등록하기" class="btn btn-warning" id="none" style="margin-left: 44rem; width: 7rem;">

    </div>
    <!--container 끝-->
  </section>

  <!--footer-->
  <footer>
    <div class="mainFooter shadow-sm d-flex justify-content-center align-items-center">
      <span style="font-family:'medium'">Copyright </span>
    </div>
    </div>
  </footer>

  <br><br><br><br>
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