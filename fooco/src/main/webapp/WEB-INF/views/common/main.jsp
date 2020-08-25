<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!doctype html>
<html lang="ko">
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery.min.js"></script>
	
    <title>Hello, world!</title>
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
        .ms-input-col {text-align:center; vertical-align:middle;}


        /* 지역 맛집 */
        .mainLocal {margin-top:8rem; margin-bottom:8rem;}
        .ml-container {display:flex; justify-content:center; align-items:center;}
        .ml-title-col {vertical-align:middle; padding-left:1rem; margin-bottom:1rem;}
        .ml-title {color:rgb(204,51,98); font-size:1.5rem;}
        .ml-row {width:70rem;}
        .ml-list {min-width:6rem; min-height:8rem; border:none; border-radius:1rem; padding:0.5rem; padding-top:1rem; margin-right:1rem; margin-bottom:0.5rem; color:black; text-align:center; text-decoration:none;}
        .ml-list:hover {background:lightgray; color:black;}
        .ml-logo-div {width:4rem; height:4rem; margin:auto; margin-bottom:0.5rem;}
        .ml-logo {max-width:100%;}
        .ml-scroll {width:25rem; max-width:50rem; overflow-x:scroll;}
        .ml-card-body {margin:0; padding:0;}
        .ml-button-div {padding:0.5rem;}
        .ml-button {border:0.2rem solid rgb(204,51,98); height:3rem; color:rgb(204,51,98); font-family:'medium';}
        .ml-button:hover {background:rgb(204,51,98); color:white;}


        /* 테마 맛집 */
        .mainTheme {margin-top:8rem; margin-bottom:8rem;}
        .mt-container {display:flex; justify-content:center; align-items:center;}
        .mt-row {width:70rem;}
        .mt-title-col {vertical-align:middle; padding-left:1rem; margin-bottom:1rem;}
        .mt-title {color:rgb(204,51,98); font-size:1.5rem;}
        .mt-list-col {padding:1rem; padding-top:0; padding-bottom:2rem; width:20rem; height:15rem;}
        .mt-list {border-radius:1rem; width:100%; height:100%; border:0.2rem solid black; background-size:cover;}
        .mt-list-content {color:white;}

        
        /* 메인 푸터 */
        .mainFooter {height:10rem; background-color:rgb(253,215,129);}
    </style>  
     <!-- 방문자수 count를 위한 쿠키 생성 및 ajax 구문 -->
	 <script>  
	 $(function(){
	  /* visit이라는 키의 쿠키가 없으면 쿠키 생성 후 방문자수 증가  */
	  if(getCookie("visit")!=undefined){		  
	     	/* alert(getCookie("visit")); */
	     	/* document.cookie = "visit=John; max-age=0"; */
	     	
	  }else{
		  /* 쿠키 유지시간을 1시간으로 설정 해 준다. */
		 document.cookie = "visit=John; max-age=3600";
		 /* ajax로 방문자수 count 하기 */
		 countAjax();		 
	  }
	   })
	   
	  /* 쿠키 값 가져오는 함수 */
	 function getCookie(name) {
	     var matches = document.cookie.match(new RegExp(
	       "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
	       ));
	       return matches ? decodeURIComponent(matches[1]) : undefined;
	     }
	 /* 방문자수  count를 위한 AJax 실행 함수 */
	 function countAjax(){	  
	  $.ajax({
			url:"visitCount.do",
			success:function(data){
				/* alert(data) */
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}				
		 })
	 }
	 </script>
    
    </head>
    <body>
        <header>
             <jsp:include page="../common/subMenubar.jsp"></jsp:include> 
            
        </header>
        <section>
            <!-- 메인 검색 -->
            <div class="mainSearch shadow">
                <div class="container ms-container">
                    <div class="row row-cols-1 ms-row">
                        <div class="col ms-title-col">
                            <span class="ms-title" style="font-family:'heavy'">진짜 맛집을 알려줄게!</span>
                        </div>
                        <div class="col ms-input-col">
                            <input type="search" class="form-control">
                        </div>
                    </div>
                </div>
            </div>


            <!-- 메인 지역 맛집 -->
            <div class="mainLocal">
                <div class="container ml-container">
                    <div class="row row-cols-1 ml-row">
                        <div class="col ml-title-col">
                            <span class="ml-title" style="font-family:'heavy'">지역 맛집, 어디로 가볼까?</span>
                            <p class="ml-title-content" style="font-family:'medium'">원하는 지역의 맛집을 소개합니다.</p>
                        </div>
                        <div class="col ml-list-col">
                            <div class="row ml-list-row">
                                <div class="col-8 d-flex flex-row flex-nowrap ml-scroll">
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/seoul_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">서 울</span>
                                        </div> 
                                    </a>
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/incheon_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">인 천</span>
                                        </div> 
                                    </a> 
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/busan_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">부 산</span>
                                        </div> 
                                    </a> 
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/daegu_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">대 구</span>
                                        </div> 
                                    </a> 
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/gwangju_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">광 주</span>
                                        </div> 
                                    </a>
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/daejeon_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">대 전</span>
                                        </div> 
                                    </a> 
                                    <a href="#" class="card shadow-sm ml-list">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="cityLogo/ulsan_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">울 산</span>
                                        </div> 
                                    </a>                                      
                                </div>
                                <div class="col-4 ml-button-col">
                                    <div class="ml-button-div">
                                        <input type="button" value="&#x1F68C; 그 외 지역 찾아보기" class="form-control ml-button shadow-sm">
                                    </div>
                                    <div class="ml-button-div">
                                        <input type="button" value="&#x1F685; 전체 지역 찾아보기" class="form-control ml-button shadow-sm">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- 메인 테마 맛집 -->
            <div class="mainTheme">
                <div class="container mt-container">
                    <div class="row row-cols-1 mt-row">
                        <div class="col mt-title-col">
                            <span class="mt-title" style="font-family:'heavy'">테마 맛집, 무엇을 먹을까?</span>
                            <p class="mt-title-content" style="font-family:'medium'">원하는 테마의 맛집을 소개합니다.</p>
                        </div>
                        <div class="col">
                            <div class="row row-cols-3 mt-list-row">
                                <div class="col mt-list-col">
                                    <div class="col mt-list shadow-sm d-flex justify-content-center align-items-center" style="background-image:url('resThumb/restaurant1.jpg');">
                                        <p class="mt-list-content" style="font-family:'medium'">혼밥하기 정말 좋은 곳 BEST10</p>
                                    </div>
                                </div>
                                <div class="col mt-list-col">
                                    <div class="col mt-list shadow-sm d-flex justify-content-center align-items-center" style="background-image:url('resThumb/restaurant2.jpg');">
                                        <p class="mt-list-content" style="font-family:'medium'">혼밥하기 정말 좋은 곳 BEST10</p>
                                    </div>
                                </div>
                                <div class="col mt-list-col">
                                    <div class="col mt-list shadow-sm d-flex justify-content-center align-items-center" style="background-image:url('resThumb/restaurant3.jpg');">
                                        <p class="mt-list-content" style="font-family:'medium'">혼밥하기 정말 좋은 곳 BEST10</p>
                                    </div>
                                </div>
                                <div class="col mt-list-col">
                                    <div class="col mt-list shadow-sm d-flex justify-content-center align-items-center" style="background-image:url('resThumb/restaurant4.jpg');">
                                        <p class="mt-list-content" style="font-family:'medium'">혼밥하기 정말 좋은 곳 BEST10</p>
                                    </div>
                                </div>
                                <div class="col mt-list-col">
                                    <div class="col mt-list shadow-sm d-flex justify-content-center align-items-center" style="background-image:url('resThumb/restaurant5.jpg');">
                                        <p class="mt-list-content" style="font-family:'medium'">혼밥하기 정말 좋은 곳 BEST10</p>
                                    </div>
                                </div>
                                <div class="col mt-list-col">
                                    <div class="col mt-list shadow-sm d-flex justify-content-center align-items-center" style="background-image:url('resThumb/restaurant6.jpg');">
                                        <p class="mt-list-content" style="font-family:'medium'">혼밥하기 정말 좋은 곳 BEST10</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <div class="mainFooter shadow-sm d-flex justify-content-center align-items-center">
                <span style="font-family:'medium'">Copyright </span>                
            </div>
        </footer>


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>   
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <!-- fontawesome -->
        <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
    </body>   
</html>

