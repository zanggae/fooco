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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
     <!-- 아이콘 -->
     <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
     <style>
     /*폰트*/
      @font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
      @font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
      @font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
      @font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
      * {font-family:'light';}
    
    /*배경*/
    .img{position: relative; background-image: url(resources/etcimage/servicecenterimg1.png); height: 35rem; background-size: cover;}
    .img-cover{margin-left: 0.1rem; margin-top: 0.1rem; position: absolute; height: 34.7rem; width: 35rem; background-color: rgba(0, 0, 0, 0.5);                                                                 }
   
    /*글자 설정*/
    .img .content1{position: absolute; top:1rem; left:1rem; transform: translate(9.5rem,3rem);  font-family: 'heavy'; font-size:5rem; color: white; z-index: 2;}
    .img .content2{font-family: 'light'; margin-left: 1.5rem; margin-top:1rem;}
   
    /*버튼 설정*/
    #btn_set{width: 14rem; height: 2.2rem; margin-top:1rem; font-family: 'light'; box-shadow: none !important;}
    
    </style>
    </head>

    <body>
        <header>
			
			 <jsp:include page="../common/menubar.jsp"></jsp:include> 
	
        </header>

        <section>
            <div class="container">
            <br><br><br>
            <div class="img">
                <div class="content1">
                    <h2>Fooco 고객센터</h2>
                    <h6 class="content2">TEL : 010-1234-5678</h6>
                  
                    <button type="button" class="btn btn-outline-light" id="btn_set"  onclick="location.href='notice.do'">공지사항</button>
                    <br>
                    <button type="button" class="btn btn-outline-light" id="btn_set" onclick="location.href='FAQ.do'">FAQ</button>
                    <br>
                    <button type="button" class="btn btn-outline-light" id="btn_set" onclick="location.href='inquiry.do'">1:1문의</button>
                </div>
                <div class="img-cover"> </div>
            </div>
                
            </div>
            
            <br><br>

        </section>
        

        <footer>


        </footer>
    </body>
    

    

  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

