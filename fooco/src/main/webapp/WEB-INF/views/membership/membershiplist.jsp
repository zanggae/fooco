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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<!-- 아이콘 -->
	<script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>

    <title>membershipList</title>
    
    <style>
    	@font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
        @font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
        * {font-family:'light';}
    
    	/* ----------공통설정---------- */
        html {
            margin: 0 auto;
            padding: 0px;
        }
        body {
            margin: 0px;
            padding: 0px;
        }
    	/* 나의 멤버십 조회 */
        #membership_list{
        	text-align:center;
        }
        #membership_list_table{
        	width:50%;
        	margin-left:25%;
        }
        /* 연장하기 버튼 */
        #membership_list button{
        	height:35px;
        	border: 1px solid rgb(204, 51, 98);
       		color:rgb(204, 51, 98);
        	border-radius: 3px;
        	font-weight: bold;
        	background: white;
        }
        #membership_list button a{
        	color:rgb(204, 51, 98);
        }
        #membership_list button:hover{
        	background: rgb(253, 215, 129);
        }
        #membership_list button a:hover{
        	text-decoration:none;
        }
        #membership_list p {
        	color: rgb(253, 215, 129);
        }
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
</head>
<body>
<!-- header시작 -->
<header><jsp:include page="../common/commonHeader.jsp"></jsp:include></header>
<br><br><br>
<!-- section시작 -->
	 <section>
        <!-- 멤버십 가입 내역 -->
        <div id="membership_list">
        <br><h2>멤버십 가입 내역</h2><br><br>
   		<table class="table" id="membership_list_table">
  		  <thead>
    	    <tr>
      		  <th scope="col"></th>
              <th scope="col"><i class="fas fa-receipt"></i>&nbsp;나의 멤버십</th>
      		  <th scope="col">가입일</th>
      		  <th scope="col">가입 만료일</th>
    		</tr>
  		  </thead>
  		  <tbody>
        <c:forEach var="item" items="${m}">
        <c:if test="${!empty item.membershipName }">
    	   <tr>
      		<th scope="row"></th>
      		<td>${item.membershipName}</td>
      		<td>${item.membershipEnrollDate }</td>
      		<td>${item.membershipExpireDate }</td>
   		 </tr>
   		 </c:if>
   		 <c:if test="${empty item.membershipName }">
   		 	<th scope="row"></th>
      		<td colspan="3">구매내역이 없습니다.</td>
   		 </c:if>
   		 </c:forEach>
  		</tbody>
	</table>
   <br><br><br>
        <button onclick=gomembershipInfo();>연장하기</button>
        <br><br><br>
        <p>멤버십을 연장하여 FOOCO와 함께 더 많은 혜택을 누리세요!</p>
        </div>
        
</section><br><br><br><br><br> 




<!-- footer시작 -->
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

<script>
	function gomembershipInfo(){
		location.href="goMembershipInfo.do";
	}
</script>


	<script src="https://code.jquery.com/jquery-3.4.1.min.js"integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>