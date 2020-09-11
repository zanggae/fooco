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

    <title>membershipInfo</title> 
    
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
        /* 첫번째 그라데이션 영역 */
        #first_area{
            height: 240px;
            color: rgb(253, 215, 129); 
            text-align: center;
            background-image: linear-gradient(45deg, #8baaaa 0%, #ae8b9c 100%);
        }
        #first_area p:nth-of-type(1){
            font-weight: bold;
            font-size: 20px;
            margin-left: -400px;
            padding-top: 2%;
            margin-bottom: -13px;
        }
        #first_area p:nth-of-type(2){
            font-weight: bold;
            font-size: 55px;
        }
        #first_area p:nth-of-type(3){
            font-weight: bold;
            font-size: 15px;
            margin-left: 200px;
            margin-top: -20px;
        }
        #first_area p:nth-of-type(4){
            color: white;
            font-size: 15px;
        }
        /* 두번쨰 영역 */
        #second_area{
            background: black;
        }
        #second_area_left img{
            height: 250px;
            margin-left: -70px;
            width: 500px;
        }
        .container{
            color: white;
        }
        #second_area_right p:nth-of-type(1){
           margin-top: 5px;
           color: rgb(253, 215, 129);
           text-align: center;
        }
        /* 무료쿠폰 div영역 */
        #for_freecoupon{
            border-radius: 5px;
            margin-top: 20px;
            margin-left: 50%;
            width: 120px;
            height: 35px;
            border: 1px solid white;
        }
        /* 무료쿠폰 옆 선 */
        #for_line1{
            position: absolute;
            border: none;
            border-top: 1px solid white;
            width: 100px;
            margin-top: 35px;
            margin-left: 160px;
        }
        #for_line2{
            position: absolute;
            border: none;
            border-top: 1px solid white;
            width: 100px;
            margin-top: -20px;
            margin-left: 412px; 
        }
        #second_area_right span{
            margin-left: 20%;
        }
        /* 오른쪽 영역 글씨,사진 */
        #first_img{
            width:75px;
            height:75px;
            position: absolute; 
            margin-left: 110px;
            margin-top: 30px; 
            margin-bottom: 20px;
        }
        #second_img{
            width:55px;
            height:55px;
            margin-top: 40px; 
            margin-left: 170px; 
            margin-bottom: 3%;
        }
        #second_area_right span:nth-of-type(3){
            margin-top: 60px;
            margin-left: 210px;
        }
        #second_area_right span:nth-of-type(4){
            font-size: 11px; 
            margin-left: 185px;
        }
        #second_area_right span:nth-of-type(5){
            margin-left: 40px; 
            margin-top: -20%;
        }
        /* 멤버십 카드영역 */
        #membership_area{
            text-align: center;
        }
       /* 멤버십 구매 버튼 */
        #membership_area button{
            margin-top: 15px;
            border: none;
            border-radius: 7px;
            background: rgb(253, 215, 129);
            width: 100px;
            height: 40px;
        }
        #membership_area button:hover{
            margin-top: 15px;
            border: none;
            border-radius: 7px;
            border: 1px solid rgb(204, 51, 98);
            color: rgb(204, 51, 98);
            width: 100px;
            height: 40px;
        }
        /* 멤버십 카드 왼쪽 */
        #membership_area1{
            width: 260px;
            position: absolute;
            display: inline-block;
            background: rgb(253,253,253);
            border-radius:10px;
            height: 330px;
            box-shadow: 6px 6px 6px rgb(207,207,207);
        }
        #membership_area1 p:nth-of-type(1){
            background: rgb(253, 215, 129);
            height: 35px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        #membership_area1 p:nth-of-type(5){
            margin-top: 25px;
            margin-bottom: -1px; 
        }
        #membership_area1 p:nth-of-type(2),#membership_area2 p:nth-of-type(2){
            font-size: 20px;
            font-weight: bold;
        }
        /* 멤버십 카드 오른쪽 */
        #membership_area2{
            width: 260px;
            margin-left: 350px;
            display: inline-block;
            background: rgb(253,253,253);
            border-radius:10px;
            height: 330px;
            box-shadow: 6px 6px 6px rgb(207,207,207);
        }
        #membership_area2 p:nth-of-type(1){
            background: rgb(253, 215, 129);
            height: 35px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            color: white;
        }  
        #membership_area1 p:nth-of-type(3),#membership_area2 p:nth-of-type(3){
            color: rgb(253, 215, 129);
        }
        #membership_area1 p:nth-of-type(5),#membership_area1 p:nth-of-type(6){
            font-size: 13px;
        } 
        #membership_area2 p:nth-of-type(5){
            margin-top: 25px;
            margin-bottom: -1px;  
        }
        #membership_area2 p:nth-of-type(5),#membership_area2 p:nth-of-type(6){
            font-size: 13px;
        }
        /* 멤버십 조회 버튼 */
        #gomembershiplist{
        	margin-left:45%;
        	height:35px;
        	border: 1px solid rgb(204, 51, 98);
       		color:rgb(204, 51, 98);
        	border-radius: 3px;
        	font-weight: bold;
        	background: white;
        	box-shadow: 6px 6px 6px rgb(217,217,217);
        }
        #gomembershiplist:hover{
        	color:rgb(204, 51, 98);
        }
        #howtouse{
            text-align: center;
        } 
        #howtouse1{
        	width:250px;
            box-shadow: 6px 6px 6px rgb(215,215,215);
            display: inline-block;
            border-radius: 4px;
            margin-left:-10px;
        }
        #howtouse2{
        	width:250px;
            box-shadow: 6px 6px 6px rgb(215,215,215);
            display: inline-block;
            border-radius: 4px;
            margin-left:10px;
        }
        #howtouse3{ 
        	width:250px;
            box-shadow: 6px 6px 6px rgb(215,215,215);
            display: inline-block;
            border-radius: 4px;
            margin-left:10px;
        }
        #howtouse img{
			width:200px;   
			height:150px; 
			margin-bottom:30px;    
        } 
 		#howtouse p:nth-of-type(1){
 			font-family:bold;
 			font-size:18px;
 		}
 		#howtouse p:nth-of-type(2){
			color:gray;
 			font-size:13px;
 		}
 		#howtouseimg1{
 			width:200px;
 			margin-left:40px;
 		}
 		/* 글자애니매이션 */
 		#SelectText{
 			display: inline-block;  transition: .3s;-webkit-transform: scale(1);transform: scale(1);
 		}
 		#SelectText:hover{
 			-webkit-transform: scale(1.1);transform: scale(1.1);
 		}
 		#easyuseText{
 			display: inline-block;  transition: .3s;-webkit-transform: scale(1);transform: scale(1);
 		}
 		#easyuseText:hover{
 			-webkit-transform: scale(1.1);transform: scale(1.1);
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
	<!--header시작-->
    <header><jsp:include page="../common/commonHeader.jsp"></jsp:include></header>
    
    <!-- section시작 -->
    <section>
    <!--FIRST AREA-->
        <div id="first_area">
            <p>FOOCO</p>
            <p>MEMBERSHIP</p>
            <p>FOOCO와 함께하는 매일매일 새로움!</p><br>
            <p>FOOCO 멤버십과 새 맛집을 방문하고 즐겨보세요! </p>
        </div>
        <!--SECOND AREA-->
        <div id="second_area">
        <div class="container">
            <div class="row">
              <div class="col" id="second_area_left">  
                <img src="resources/etcimage/membershipInfoimg1.jpg">
              </div>
              <div class="col" id="second_area_right">
                <div id="for_line1"></div><div id="for_freecoupon"><p>무료쿠폰</p></div><div id="for_line2"></div>
                <span><img src="resources/etcimage/membershipInfoimg2.png" id="first_img"></span>
                <span><img src="resources/etcimage/membershipInfoimg3.png" id="second_img"></span><br>
                <span>음식할인쿠폰</span><br>
                <span>최대 ￦10,000까지 이용가능</span>
                <span>무료음료쿠폰</span>
              </div>
            </div>
        </div> 
        </div><br><br><br>
        <!--멤버십 선택 영역-->
        <div id="membership_area">
            <h3 style="font-family:bold;" id="SelectText">SELECT YOUR MEMBERSHIP</h3>
            <h3><i class="fas fa-caret-down"></i></h3><br><br>
            <span id="membership_area1">
                <p></p>
                <p>SILVER MEMBERSHIP</p>
                <p>￦49,800</p>
                <p>6개월 이용권</p>
                <p>혜택1. 할인쿠폰(최대 ￦10,000까지)</p>
                <p>혜택2. 무료음료쿠폰</p>
                <button onclick="requestPaySilver()">구매하기</button>
            </span>
            <span id="membership_area2">
                <p>MOST POPULAR</p>
                <p>GOLD MEMBERSHIP</p>
                <p>￦89,800</p>
                <p>12개월 이용권</p>
                <p>혜택1. 할인쿠폰(최대 ￦10,000까지)</p>
                <p>혜택2. 무료음료쿠폰</p>
                <button onclick="requestPayGold()">구매하기</button>
            </span>
        </div><br><br><br><br><br><br><br><br><br><br>
		
		<!--쓰는방법 소개 영역-->
        <div id="howtouse">
        	<h5 style="font-family:bold;" id="easyuseText"><i class="far fa-kiss-beam"></i>&nbsp;&nbsp;완전 쉬운 Fooco 멤버십 사용방법!&nbsp;&nbsp;<i class="far fa-grin-squint"></i></h5><br><br>
            <span id="howtouse1">
                <img src="resources/etcimage/membershiplistimg1.png">
                <p>Step 1</p>
                <p>Fooco와 파트너 맛집을 찾는다 </p>
            </span>
            <span id="howtouse2">
                <img src="resources/etcimage/membershiplistimg2.png" id="howtouseimg1">
                <p>Step 2</p>
                <p>이메일로 발송받은 쿠폰으로 맛있게 먹는다</p>
            </span>
            <span id="howtouse3">
                <img src="resources/etcimage/membershiplistimg3.png">
                <p>Step 3</p>
                <p>받은 쿠폰을 보여주면 끝!</p>
            </span>
        </div><br><br><br><br><br><br><br><br>
        
        	<c:if test="${!empty loginUser }"><button id="gomembershiplist" onclick="gomembershiplist();">나의 멤버십 조회 ></button></c:if>


        	<form id="mbuyFormGold" action="buyGoldMembership.do" method="post">
	        <!-- 회원 정보 -->
        	<input type="hidden" name="buy_memberId" id="buy_memberId" value="${loginUser.memberId}">
        	<!-- 멤버십정보 -->
        	<!-- 1.gold 멤버십 -->
        	<c:forEach var="item" items="${membershiplist}" end="0">
        	<input type="hidden" name="membershipId1" id="membershipId1" value="${item.membershipId}">
        	<input type="hidden"  id="GoldMembershipName" value="${item.membershipName}">
        	<input type="hidden"  id="GoldMembershipPrice" value="${item.membershipPrice}">
        	</c:forEach>
        	<!-- 쿠폰정보 -->
        	<c:forEach var="item" items="${couponList}" end="0">
        	    <input type="hidden" name="buy_coupon1" id="buy_coupon1" value="${item.couponId}">  
    		</c:forEach>
    		<c:forEach var="item" items="${couponList}" begin="2" end="2">
        	    <input type="hidden" name="buy_coupon3" id="buy_coupon3" value="${item.couponId}">  
    		</c:forEach> 
        	</form>
        	
        	<!-- 2.silver 멤버십 -->
        	<form id="mbuyFormSilver" action="buySilverMembership.do" method="post">
        	<!-- 회원 정보 -->
        	<input type="hidden" name="buy_memberId" id="buy_memberId" value="${loginUser.memberId}">
        	<!-- 멤버십정보 -->
        	<c:forEach var="item" items="${membershiplist}" begin="1" end="1">
        	<input type="hidden" name="membershipId2" id="membershipId2" value="${item.membershipId}">
        	<input type="hidden" name="membershipId1" id="membershipId1" value="${item.membershipId}">
        	<input type="hidden"  id="SilverMembershipName" value="${item.membershipName}">
        	<input type="hidden"  id="SilverMembershipPrice" value="${item.membershipPrice}">
        	</c:forEach>  
        	<!-- 쿠폰정보 -->
        	<c:forEach var="item" items="${couponList}" end="0">
        	    <input type="hidden" name="buy_coupon1" id="buy_coupon1" value="${item.couponId}">  
    		</c:forEach> 
    		<c:forEach var="item" items="${couponList}" begin="1" end="1">
        	    <input type="hidden" name="buy_coupon2" id="buy_coupon2" value="${item.couponId}">  
    		</c:forEach> 
        	</form>
    </section><br><br><br><br><br><br>

    
    <input type="hidden" id="membershipcheck" value="${m.membershipName }">

    <!--footer시작-->
    <footer>
    	<div class="mainFooter">
               <span>
               	<img src="resources/logo/logo.png">
               	<hr style="margin-top:-8px; margin-bottom:-1px; width:110%;">
               	<p style="font-size:12px">FOOCO와 함께 Enjoy!</p>
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
               	<i class="fab fa-facebook-square"></i>&nbsp;&nbsp;&nbsp;&nbsp;<i class="fab fa-twitter-square"></i>
               	&nbsp;&nbsp;&nbsp;&nbsp;<i class="fab fa-instagram"></i>
               	<!-- <p style="font-size:15px; text-align:center;">Social Link</p> -->
               </span><br><br><br><br><br><hr>
              	<p id="footerP" style="font-family:'light'; color:gray;">
                    (주)FOOCO&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;서울특별시 서초구 강남대로42길 12, 3층 (역삼동, 경남짱빌딩)<br>
                     	대표이사 : 김경남(KKN PRINCESS)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;사업자 등록번호: 202-09-17200 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;고객센터: 02-565-1234 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; © 2020 FOOCO Co., Ltd. All rights reserved.
                </p>
            </div>
    </footer>

 	<script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js" ></script>
  	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script>
    function requestPayGold(){
    	var loginUser = $("#buy_memberId");
    	var membershipcheck = $("#membershipcheck").val();
    	
    	if(loginUser.val()==""){
    		alert("로그인 후 이용 가능한 서비스입니다.");
    		return;
    	}
    	if(membershipcheck!=""){
    		alert("이미 사용 중인 멤버십이 존재합니다");
    		return;
    	}else{
    		 requestPay1();
    		/* $("#mbuyFormGold").submit();  */
        	alert("결제성공");  
    	}
    }
    
    function requestPaySilver(){
    	var loginUser = $("#buy_memberId");
    	var membershipcheck = $("#membershipcheck").val();
    	
    	if(loginUser.val()==""){
    		alert("로그인 후 이용 가능한 서비스입니다.");
    		return;
    	}
    	if(membershipcheck!=""){
    		alert("이미 사용 중인 멤버십이 존재합니다");
    		return;
    	}else{
    		requestPay2(); 
    		/* $("#mbuyFormSilver").submit();  */
        	alert("결제성공"); 
    	}
    }
    //결제!_! 결제 안되도록 우선 주석처리 해 둠!_! 결제 없이 바로 INSERT되도록 임시로 적용해놓음
    //1. gold 멤버십 구매
    /* function requestPay1() {
      	//멤버십 정보 받아오기
      	//1. gold 멤버십
        var Membershipname = $("#GoldMembershipName").val();
        var Membershipprice = $("#GoldMembershipPrice").val();
         
        var IMP = window.IMP; // 생략가능
        IMP.init("imp96485144"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"
         
        // IMP.request_pay(param, callback) 호출
        IMP.request_pay({ // param - 결제 요청에 필요한 속성과 값을 담음
            pg: "html5_inicis",
            pay_method: "card",
            merchant_uid: "merchant_" + new Date().getTime(),   //주문번호
            name: Membershipname,
            amount: Membershipprice,
        }, function (rsp) { // callback - 결제 완료 후 실행되는 함수
        	console.log(rsp);
            if (rsp.success) {
               console.log("결제 성공");
               //결제 완료 후 결과 화면으로
               $("#mbuyFormGold").submit();
               alert("결제성공");
            } else {
                console.log("결제 실패");
                var msg = rsp.error_msg;
                alert(msg);
            }
        });
      }
    
    //2. silver 멤버십 구매
    function requestPay2() {
        	//사용자 정보 받아오기
        	var memberName = $("#buy_memberId").val();
        	
          //멤버십 정보 받아오기
          //2. silver 멤버십
          var Membershipname =$("#SilverMembershipName").val();
          var Membershipprice = $("#SilverMembershipPrice").val();

          var IMP = window.IMP; // 생략가능
          IMP.init("imp96485144"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"
           
          // IMP.request_pay(param, callback) 호출
          IMP.request_pay({ // param - 결제 요청에 필요한 속성과 값을 담음
              pg: "html5_inicis",
              pay_method: "card",
              merchant_uid: "merchant_" + new Date().getTime(),   //주문번호   
              name: Membershipname,
              amount: Membershipprice,
          }, function (rsp) { // callback - 결제 완료 후 실행되는 함수
          	console.log(rsp);
              if (rsp.success) {
                 console.log("결제 성공");
                 //결제 완료 후 결과 화면으로
                 $("#mbuyFormSilver").submit();
                 alert("결제성공");
              } else {
                  console.log("결제 실패");
                  var msg = rsp.error_msg;
                  alert(msg);
              }
          });
        } 
     */
	</script>
	
	<!-- 멤버십 조회 페이지로 넘어가는 script -->
	<script>
	 function gomembershiplist(){
		 var memberId = $("#buy_memberId").val();
		 location.href="goMembershipList.do?memberId="+memberId;
	 }
	</script>
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <!--  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
   <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	



</body>

</html>