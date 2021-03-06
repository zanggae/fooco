<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	
	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
	
    <title>FOOCO와 함께 매일매일 즐거움!</title>
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
        .inputPrepend {background:white; border-top-left-radius:0.25rem; border-bottom-left-radius:0.25rem;}
        .sr-content-input-local {width:8rem; border-top-left-radius:0; border-bottom-left-radius:0; font-family:'medium'; cursor:pointer;}
        .sr-content-input-local > option {font-family:'medium'; text-align-last:center; cursor:pointer;}
        select {text-align:center; text-align-last:center;}
        .selectLocation {width:8em;}
        .fa-map-marker-alt {color:rgb(204,51,98); font-size:1.3rem;}
        .mainSearch {height:23rem; background-color:rgb(204,51,98); display:flex; justify-content:center; align-items:center;}
        .ms-container {display:flex; justify-content:center; align-items:center;}
        .ms-title-col {text-align:center; vertical-align:middle; margin-bottom:1.5rem;}
		.ms-title {color:white; font-size:3rem;}
        .ms-input-col {text-align:center; vertical-align:middle;}
        .inputAppend {border-top-left-radius:0; border-bottom-left-radius:0; cursor:pointer;}
		
        /* 지역 맛집 */
        .mainLocal {margin-top:8rem; margin-bottom:8rem;}
        .ml-container {display:flex; justify-content:center; align-items:center;}
        .ml-title-col {vertical-align:middle; padding-left:1rem; margin-bottom:1rem;}
        .ml-title {color:rgb(204,51,98); font-size:1.5rem;}
        .ml-row {width:70rem;}
        .ml-list {min-width:6rem; min-height:8rem; border:none; border-radius:1rem; padding:0.5rem; padding-top:1rem; margin-right:1rem; margin-bottom:0.5rem; color:black; text-align:center; text-decoration:none;}
        .ml-list:hover {background:#ECECEC; color:black; cursor:pointer;}
        .ml-logo-div {width:4rem; height:4rem; margin:auto; margin-bottom:0.5rem;}
        .ml-logo {max-width:100%;}
        .ml-scroll {width:25rem; max-width:50rem; overflow-x:scroll;}
        .ml-card-body {margin:0; padding:0;}
        .ml-button-div {padding:0.5rem;}
        .ml-button {border:0.2rem solid rgb(204,51,98); height:3rem; color:rgb(204,51,98); font-family:'medium';}
        .ml-button:hover {background:rgb(204,51,98); color:white;}


        /* 테마 맛집 */
        .mainTheme {margin-top:8rem; margin-bottom:8rem;}
        .mt-container {justify-content:center; align-items:center;}
        .mt-row {width:70rem;}
        .mt-title-col {vertical-align:middle; padding-left:1rem; margin-bottom:1rem;}
        .mt-title {color:rgb(204,51,98); font-size:1.5rem;}
        .mt-list-col {padding-top:0; padding-bottom:2rem; height:15rem;}
        .mt-list {width:100%; height:100%;}
        .mt-list-content {color:white;}
        .themeBackground {position:relative; width:100%; height:100%; filter:brightness(80%); transition-duration:0.3s; transition-timing-function:ease;}
        .mt-list:hover .themeBackground {transform:scale(1.1); filter:brightness(60%);}
        .mt-list:hover .mt-list-content  {color:white;}
        .themeBackground-div { overflow:hidden; border-radius:1rem;}
        .themeBackground-div > p {text-shadow:1rem lightgray;}
        .themeInnerText {position:absolute;}

        
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
	 
	 <!-- 멤버십 상태 update해 주기 -->
	 <script>
	 $(function(){
		 MembershipUpdate();
	 })
	 
	 function  MembershipUpdate(){
		 /* alert("MembershipUpdate 함수 실행 되나"); */
		 $.ajax({
			 url:"updateMembershipStatus.do"
			 ,type:"post"
			 ,success:function(data){
				 console.log("성공")
			 }
			 ,error:function(request, status, errorData){
					alert("error code: " + request.status + "\n"
							+"message: " + request.responseText
							+"error: " + errorData);
				}
				
		 })
	 }
	 </script>
    
    </head>
    <body>
    <c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
        <header>
             <jsp:include page="mainHeader.jsp"></jsp:include> 
        </header>
        <section>
            <!-- 메인 검색 -->
            <div class="mainSearch shadow">
                <div class="container ms-container">
                    <div class="row row-cols-1 ms-row">
                        <div class="col ms-title-col">
                        	 <p style="font-size:25px;">&#x1F340;</p>
                            <span class="ms-title" id="realText" style="font-family:'heavy'">진짜 맛집을 알려줄게!</span>
                        </div>
						<div class="input-group input-group-lg">													
							<div class="selectLocation d-flex">
								<div class="input-group-prepend inputPrepend">
									<span class="input-group-text">
										<i class="fas fa-map-marker-alt"></i>
									</span>
								</div>
								<select class="form-control sr-content-input-local" id="select-local">
									<option selected value="0">전체</option>
									<option value="1">서울</option>
									<option value="2">인천</option>
									<option value="3">부산</option>
									<option value="4">대구</option>
									<option value="5">광주</option>
									<option value="6">대전</option>
									<option value="7">울산</option>
									<option value="8">제주</option>
									<option value="9">그 외</option>
								</select>
							</div>
							<div class="col input-group ms-input-col">
								<input type="search" class="form-control" id="select-keyword"  placeholder="먹고 싶은 음식이나 맛집 이름을 입력하세요."/>
								<div class="input-group-append inputAppend" id="inputAppend" onclick="getLocationAndKeyword()">
									<span class="input-group-text">
										&#x1F50D;
									</span>
								</div>
							</div>
						</div>
                    </div>
                </div>
            </div>
            
            <!-- select option을 선택하면 -->
            <script>
            	var select = document.getElementById("select-local");
            	var searchBtn = document.getElementById("inputAppend");
            	var search = document.getElementById("select-keyword");
            	
            	search.addEventListener("keyup", function(e){
            		if(e.keyCode === 13) {
            			e.preventDefault();
            			searchBtn.click();
            		}
            	});
            	
    			function getLocationAndKeyword() {    				
                	var locationId = select.options[select.selectedIndex].value;
                	var keyword = search.value;	
                	
    				window.location.href="goSearchedRestaurant.do?locationId="+locationId+"&keyword="+keyword;
    			};
            </script>


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
                                    <a class="card shadow-sm ml-list" onclick="goSearch(1, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/seoul_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">서 울</span>
                                        </div> 
                                    </a>
                                    <a class="card shadow-sm ml-list" onclick="goSearch(2, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/incheon_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">인 천</span>
                                        </div> 
                                    </a> 
                                    <a class="card shadow-sm ml-list" onclick="goSearch(3, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/busan_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">부 산</span>
                                        </div> 
                                    </a> 
                                    <a class="card shadow-sm ml-list" onclick="goSearch(4, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/daegu_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">대 구</span>
                                        </div> 
                                    </a> 
                                    <a class="card shadow-sm ml-list" onclick="goSearch(5, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/gwangju_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">광 주</span>
                                        </div> 
                                    </a>
                                    <a class="card shadow-sm ml-list" onclick="goSearch(6, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/daejeon_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">대 전</span>
                                        </div> 
                                    </a> 
                                    <a class="card shadow-sm ml-list" onclick="goSearch(7, 'all');">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/ulsan_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">울 산</span>
                                        </div> 
                                    </a>    
                                    <a class="card shadow-sm ml-list" onclick="goSearch(8, 'all')">
                                        <div class="ml-logo-div">
                                            <image class="ml-logo" src="resources/locationlogo/jeju_logo.png">
                                        </div>
                                        <div class="card-body ml-card-body">
                                            <span class="card-title ml-card-title" style="font-family:'bold'">제 주</span>
                                        </div> 
                                    </a>                                     
                                </div>
                                <div class="col-4 ml-button-col">
                                    <div class="ml-button-div">
                                        <input type="button" value="&#x1F68C; 그 외 지역 찾아보기" onclick="goSearch(9, 'all')" class="form-control ml-button shadow-sm">
                                    </div>
                                    <div class="ml-button-div">
                                        <input type="button" value="&#x1F685; 전체 지역 찾아보기" onclick="goSearch(0, 'all')" class="form-control ml-button shadow-sm">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- 지역 버튼을 누르면 -->
            <script>
            	function goSearch(locationId, keyword){
            		window.location.href = "goSearchedRestaurant.do?locationId="+locationId;
            	};
            </script>
            

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
                            	<c:forEach var="theme" items="${theme}">
                            		<div class="col mt-list-col">
	                                    <div class="col mt-list d-flex justify-content-center align-items-center" style="padding:0; cursor:pointer;">
	                                    	<a style="height:100%; min-width:100%;" class="themeBackground-div" onclick="goTheme(${theme.themeId})">
	                                    		<img class="themeBackground shadow-sm" src="${contextPath}/resources/restaurantImage/${theme.themeImageName}"/>
	                                    	</a>
	                                    	<p class="mt-list-content themeInnerText" style="font-family:'medium'; font-size:1.1rem; width:80%; text-align:center; word-break:keep-all;">${theme.themeTitle}</p>
	                                    </div>
	                                </div>
                            	</c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
            	function goTheme(themeId) {
            		window.location.href = "themedetail.do?themeId=" + themeId;
            	}
            </script>
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
    </body>   
</html>

