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
    /*좌측 메뉴바*/

    .left_menu{border: rgb(253, 215, 129); width:9.5rem; height: 10rem;background-color: rgb(253, 215, 129);}
    .li_1{color:black; font-weight: bolder;margin-left: 0.4rem;}
    .leftMenubar li{list-style: none;}
    .li_2{color:black;margin-left: 0.4rem;}

    /*공지사항 본문*/
    .center {
      border: rgb(253, 215, 129);
      width: 50rem;
      height: 40rem;
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

    .accordionEdge_setting {padding-top: 2rem; padding-left: 2rem; padding-right: 2rem;box-shadow: none !important;}


  </style>
</head>

<body>
  <div class="container">
    <header>
		<jsp:include page="../common/menubar.jsp"></jsp:include> 
      
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
              <li style="margin-top: 0.2rem;"><a href="#" class="li_2">&nbsp;&nbsp;FAQ</a></li>
              <li style="margin-top: 0.1rem;"><a href="#" class="li_2">1:1문의</a></li>
            </ul>
          </div>
        </div>
		</header>
		
        <!--본문 구역-->
        <section>
        <div class="col-6">
          <div class="center">
            <h1 class="header_font">공지사항</h1>
            <div class="accordionEdge_setting">
              <div class="accordion" id="accordionExample">
                <div class="card accordioncontent_setting">
                  <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                      <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
                        data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        [공지] 개인정보처리방침 일부 변경에 관한 안내
                      </button>
                    </h2>
                  </div>

                  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                    data-parent="#accordionExample">
                    <div class="card-body">
                      [공지] 개인정보처리방침 일부 변경에 관한 안내
                      안녕하세요 (주)포코입니다.
                      푸코의 개인정보처리방침을 일부 변경하게 되어 이를 알려드리고자 압니다.

                      ■ 개인정보처리방침 일부 변경(2020년 8월 3일)
                      1. 개인정보의 제 3자 제공
                      * 변경 후
                      - (삭제) 개인정보를 제공받지 않는 자 : 홀리오 신사, 청화당 강남, 하우스 이태원
                      - (추가) 개인정보를 제공 받는 자 : 보테가베네타코리아 주식회사
                      * 자세한 사항은 '개인정보처리방침 보기' 변경 전 후 내용을 통해 확인할 수 있습니다.
                      앞으로도 더 나은 서비스를 위해 노력하겠습니다.
                      감사합니다.
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <div class="card">
                <div class="card-header" id="headingTwo">
                  <h2 class="mb-0">
                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse"
                      data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                      Collapsible Group Item #2
                    </button>
                  </h2>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                  <div class="card-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                    wolf
                    moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                    eiusmod.
                    Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                    shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                    ea
                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw
                    denim
                    aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                  </div>
                </div>
              </div>
              <br>
              <div class="card">
                <div class="card-header" id="headingThree">
                  <h2 class="mb-0">
                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse"
                      data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      Collapsible Group Item #3
                    </button>
                  </h2>
                </div>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                  <div class="card-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                    wolf
                    moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                    eiusmod.
                    Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                    shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                    ea
                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw
                    denim
                    aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                  </div>
                </div>
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