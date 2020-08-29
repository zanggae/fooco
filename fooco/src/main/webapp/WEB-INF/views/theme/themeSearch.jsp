<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- 아이콘 -->
    <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
    
    <style>
    /* 폰트 */
    @font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
        @font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
        * {font-family:'light';}


        /* 메인 헤더(네비게이션 바) */
        .mainHeader {padding:0; background-color:rgb(253,215,129);}
        .logo {width:8rem; height:4.5rem;}
        .mh-navbar-brand {padding:0;}
        .fa-user-circle {margin-right:0.5rem; color:rgb(204,51,98); font-size:2.3rem;}
        .mh-dropdown-title {color:black; font-size:1.1rem;}
        .mh-dropdown-menu {text-align:right; border:none; background-color:whitesmoke;}
        .mh-dropdown-menu a:hover {color:white; background-color:rgb(204,51,98);}
        .mh-dropdown-toggle::after {display:none;}
        .mh-dropdown-item {font-family:'medium';}

        /* 메인 검색 */
        .mainSearch {height:23rem; background-color:rgb(204,51,98); display:flex; justify-content:center; align-items:center;}
        .ms-container {display:flex; justify-content:center; align-items:center;}
        .ms-title-col {text-align:center; vertical-align:middle; margin-bottom:1.5rem;}
        .ms-title {color:white; font-size:3rem;}
        
        /*테마용 검색*/
        .search{background-color: none; position: absolute;left:30.8rem;}
        .form-control{box-shadow: none !important; width: 30rem !important; height: 3rem !important;}
        .btn-warning{margin-left: 0.2rem; width: 4.5rem !important;font-size: 1.3rem;height: 3.1rem ;}
        
        /*테마 검색결과*/
      .bottom{margin-left: 12rem; margin-top: 3rem;} 
      .text3{font-size: 2rem; font-weight: bolder;color: rgb(204, 51, 98);}
      .img1{text-align: center; width: 22rem; height: 16rem;opacity: 0.7; z-index: 0; border: solid black 0.18rem;border-radius: 5%;}
      .text4{font-size: 1.2rem; font-family:'bold'; text-align: center; position: absolute; top: 50%; left: 50%; transform: translate( -50%, -50% );}
      #heart{position: absolute; color: red; z-index: 100; top:12rem; left: 19rem; font-size: 3rem;}
      #position{margin-left: 11rem; width: 50.5rem; text-align: center;}	

      /* 메인 푸터 */
      .mainFooter {height:10rem; background-color:rgb(253,215,129);}
    </style>
    </head>
    <body>
        <header>
              <jsp:include page="../common/commonHeader.jsp"></jsp:include>  
        </header>
        <section>
            <!-- 메인 검색 -->
            <div class="mainSearch shadow">
                <div class="container ms-container">
                    <div class="row row-cols-1 ms-row">
                        <div class="col ms-title-col">
                            <span class="ms-title" style="font-family:'heavy'">테마 맛집, 여기서 골라</span>
                        </div>
                        <div>
                          <div class="search"> 
                          <br>
                          <div class="input-group mb-3">
                           <input type="text" class="form-control" placeholder="테마 검색하기"  
                           aria-label="Recipient's username" aria-describedby="button-addon2">
                           <button type="button" class="btn btn-warning"><i class="fas fa-search"></i></button>
                         </div>
                       </div>
                     </div>
                      </div>
                    </div>
                </div>
            
          

              <div class="container">
            <div class="bottom">
             <h1 class="text3">'혼밥' 검색결과</h1>
            </div>
            <br>
          <div class="row row-cols-2" id="position">

          <div class="col" style="margin-bottom: 2rem;"><img src="img/떡볶이.jpg" class="img1" ><div class="text4">혼밥? ㄴㄴ 혼떡~ Best5</div>
          <i class="fas fa-heart" id="heart"></i>
         </div> 
         <div class="col" style="margin-bottom: 2rem;"><img src="img/떡볶이.jpg" class="img1" ><div class="text4">호온버버버버버버버낭ㄴ언언어넝너언아너아너아ㅓㄴ아ㅓ아ㅓ나어나어나ㅓㅏ나너안아너안안어나아너아너ㅏ</div>
          <i class="fas fa-heart" id="heart"></i>
         </div>
          <div class="col" style="margin-bottom: 2rem;"><img src="img/떡볶이.jpg" class="img1" ><div class="text4">혼밥? ㄴㄴ 혼떡~ Best5</div>
            <i class="fas fa-heart" id="heart"></i>
           </div> 
           <div class="col" style="margin-bottom: 2rem;"><img src="img/떡볶이.jpg" class="img1" ><div class="text4">혼밥? ㄴㄴ 혼떡~ Best5</div>
            <i class="fas fa-heart" id="heart"></i>
           </div> 
         </div>
        
        </div>
        </section>

        <footer>

          
        </footer>
      
      

   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>