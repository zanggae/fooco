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
    
   	.text{font-family:'medium';margin-left:6.5rem; font-size : 2.5rem;}
    #list{font-size : 1.5rem; color:#646464; margin-left: 3rem; margin-bottom: 5rem; font-family: 'medium'!important;}
	</style>
	
</head>
<body>
    <header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
    </header>

    <section>


        <div class="container">
            <div style="margin-top:10rem">
                <div class="row">

                    <div class="col-3">
                    </div>
                    <div class="col-6">
                        <h1 class="text">등록이 완료되었습니다.</h1>
                    </div>
                    <div class="col-3">
                    </div>
                     </div>
                      <div style="margin-top:5rem">
                    <div class="row">
                     <div class="col-3">
          			</div> 
          			<div class="col-3">
            		<a href="main.do" id="list"><i class="fas fa-arrow-left"></i>&nbsp;홈으로 가기</a>
                     </div>
                     
                     <div class="col-4" style="margin-left : 1rem; margin-top:-0.1rem">
                      <a href="myPageMylist.do" id="list">등록한글 확인&nbsp;<i class="fas fa-arrow-right"></i></a>
                    </div>
                    </div>
					</div>
                </div>
                </div>
        
      
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
            crossorigin="anonymous"></script>
    </section>

    <footer>

    </footer>
</body>

</html>