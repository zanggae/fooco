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

    <title>Hello, world!</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
    	 @font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
        @font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
        * {font-family:'light';}
    	
      #sideMenubar li a {
      color: white;
      font-size: 130%;
    }

    #sideMenubar li a:hover {
      text-decoration: none;
      color: whitesmoke;
    }
    #sideMenubar li {
      list-style: none;
    }
    body {
      background-color: #fbfbfb;
    }
    
    </style>
  </head>
  
  <body>
  	<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
    <div style="height: 100%; width:13%; position: fixed; background-color: rgb(253, 215, 129);">
      <div align="center" style="" onclick="location.href='home.do'"><img src="resources/logo/logo.png" width="80%" height="10%" style="cursor:pointer;"></div>
  
      <h4 class="ml-4" style="color: rgb(204, 51, 98);"><b>관리자</b></h4>
      <ul class="mt-3" id="sideMenubar">
        <li>
          <a href="dashboard.do">대시보드</a>
        </li>
        <li>
          <a href="restaurantEdit.do">음식점관리</a>
        </li>
        <li>
          <a href="themeEdit.do">테마관리</a>
        </li>
        <li>
          <a href="memberManagement.do">회원관리</a>
        </li>
        <li>
          <a href="inquiryEdit.do">문의관리</a>
        </li>
        <li>
          <a href="boardEdit.do">게시판관리</a>
        </li>
        <li>
          <a href="themeEdit.do">통계</a>
        </li>
  
      </ul>
    </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>