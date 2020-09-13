<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
   /*   A:link {text-decoration: none;} */
    /*  A:visited {text-decoration: none; color:#646464;}  */
   /*   A:active {text-decoration: none; color:#646464;}  */
    A:hover {text-decoration: none; color:rgb(253,215,129);} 
    
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
        /* .ms-title {color:white; font-size:3rem;} */
        /* 진짜맛집을 알려줄게 글씨 애니메이션 */
		#realText.ms-title{
			color:white;
		 	font-size:40px;
  			position:relative;
  			display: inline-block;
  			height: 50px;
  			overflow: hidden;
  			animation: typingAni 3s steps(30, end) 1;
			}
		#realText.ms-title::after{
  			position:absolute; 
  			display:block;
  			content:""; 
 			width: 20px; 
  			height: 50px;
  			top : 3px;
  			right:0; 
  			border-right: 1px solid #000;
  			animation: cursor 1s step-end infinite;
		}
		@keyframes typingAni {
  			0%{width:0%}
  			100%{width: 400px};
		}
		@keyframes cursor{
  			0%{opacity:0;}
  			50%{opacity:1;}
  			100%{opacity:0;}
		}
		
        
        /*테마용 검색*/
        .search{background-color: none; position: absolute; margin-left:-3.0rem;}
        .form-control{box-shadow: none !important; width: 30rem !important; height: 3rem !important;}
        .btn-warning{box-shadow : none ! important; margin-left: 0.2rem; width: 4.5rem !important;font-size: 1.3rem;height: 3.1rem ;margin-top:-0.5px;}
        
        /*테마 검색결과*/
      .bottom{margin-left: 12rem; margin-top: 3rem;} 
      .text3{font-size: 2rem; font-weight: bolder;color: rgb(204, 51, 98);}
      .img1{text-align: center; width: 22rem; height: 16rem;opacity: 0.7; z-index: 0; border: solid black 0.4rem;border-radius: 5%;}
      .text4{text-align: center; position: absolute; top: 50%; left: 50%; transform: translate( -50%, -50% );}
      .titlefont{font-size: 1.5rem; font-family:'heavy'; color:black; }
      #heart{position: absolute; color: red; z-index: 100; top:12rem; left: 19rem; font-size: 3rem;} 
      #heart2{position: absolute; color: black; z-index: 100; top:12rem; left: 19rem; font-size: 3rem;} 
      #position{margin-left: 11rem; width: 50.5rem; text-align: center;}	
      #noneResult{font-family:'heavy'; font-size:2rem; margin-left:4.5rem; margin-top:7rem;}
      
      #heart{cursor: pointer;} 
 	}

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
                            <span class="ms-title" id="realText" style="font-family:'heavy'">테마 맛집, 여기서 골라</span>
                        </div>
                        <div>
                          <div class="search"> 
                          <br>
                          	<form action="themeMain.do" method="get"> 
                          <div class="input-group mb-3">
                           <input type="text" class="form-control" placeholder="테마 검색하기"  id="searchTheme" name="searchTheme"
                           aria-label="Recipient's username" aria-describedby="button-addon2">
                           <button type="submit" class="btn btn-warning" id="btn btn-warning"><i class="fas fa-search" id="search"></i></button>
                         </div>
                         <!-- </form> -->
                       </div>
                     </div>
                      </div>
                    </div>
                </div>

                
              <input type="hidden" value="${searchTheme }" name="searchTheme1" id="searchTheme1">
              
              <!-- 검색된 테마가 존재하지 않을 때 -->
              <c:if test="${empty theme }">
              
              	<div class="row">
              	<div class= "col-4">
    
              	</div>
              	<div class="col-4" id="noneResult">
              		<h1>검색된 테마가 없습니다.</h1>
              	</div>
              	
              	
              	</div>
              
              </c:if>
                
                <
                <c:if test="${!empty theme }">
	               <c:url var="themeMain" value="themeMain.do">
	                	<c:param name="searchTheme" value="${searchTheme }"/>
	               </c:url>
                <div class="container">
                <div class="bottom">
                <!-- 검색하지 않았을 시 나오는 화면 -->
                <c:if test="${empty searchTheme }">
                  <h1 class="text3">추천테마</h1>
                 </c:if>
                 <!-- 검색시 나오는 결과화면 -->
                 <c:if test="${!empty searchTheme }">
                  <h1 class="text3">'${searchTheme }'&nbsp;검색 결과</h1>
                  </c:if>
                  
                </div>
                
                
                
                
                
                
                
                <br>
                <div class="row row-cols-2" id="position">
              	<c:forEach var="t" items="${theme }">
              	
                  	<c:url var="themedetail" value="themedetail.do">
                  		<c:param name="themeId" value="${t.themeId }"/>
                  	</c:url>
                  <div class="col" style="margin-bottom: 2.5rem;">
                  <img src="resources/restaurantImage/${t.themeImageName}" class="img1">
                    <div class="text4"><a href="${themedetail }" class="titlefont">${t.themeTitle }</a></div>
                    <c:remove var="tt"/>
                    <c:forEach var="mt" items="${mytheme }">
                    	<c:if test="${t.themeId eq mt }">
	                     <div onclick="heartClickCancle(this)" id="heartt" value="${t.themeId }"><i class="fas fa-heart" id="heart"></i></div>
	                     <c:set var="tt" value = "${mt }"></c:set>                   	
                    	</c:if>
                    </c:forEach>
                    <c:if test="${empty tt}">
                    	<c:if test="${!empty loginUser }">
                    		<div onclick="heartClick(this)" id="heartt" value="${t.themeId }"><i class="far fa-heart" id="heart"></i></div>
                    	</c:if>
                    </c:if>
                  </div>
                </c:forEach> 
                  </div>
                </div>
                </c:if>
                <script>
                	function heartClick(id){
                		var bookmarkId = $(id).attr('value');
                		var search = $("#searchTheme1").val();
                		location.href="insertBookmark.do?bookmarkId="+bookmarkId+"&search="+search;
                	}
                	function heartClickCancle(id){
                		var bookmarkId = $(id).attr('value');
                		var search = $("#searchTheme1").val();
                		location.href="heartClickCancle.do?bookmarkId="+bookmarkId+"&search="+search;
                	}
                </script>
        	
        		
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