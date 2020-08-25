<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>MembershipInfo</title>

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
            margin-left: 400px; 
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

      
    </style>
  </head>
  <body>
    <!--header시작-->
    <header>
    <jsp:include page="../common/menubar.jsp"></jsp:include>
    </header>

    <!--section시작-->
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
                <!-- <p>ONE MEMBERSHIP</p>
                <div class="for_line"></div><p>FOR</p><div class="for_line"></div>
                <p>ALL YOUR DINING NEEDS</p> -->
                <img src="image/DiningBackground.jpg">
              </div>
              <div class="col" id="second_area_right">
                <div id="for_line1"></div><div id="for_freecoupon"><p>무료쿠폰</p></div><div id="for_line2"></div>
                <span><img src="image/PlateCoupon.png" id="first_img"></span>
                <span><img src="image/DrinkCoupon.png" id="second_img"></span><br>
                <span>음식할인쿠폰</span><br>
                <span>최대 ￦10,000까지 이용가능</span>
                <span>무료음료쿠폰</span>
              </div>
            </div>
        </div>
        </div><br><br><br>
        <!--멤버십 선택 영역-->
        <form id="mbuyForm" action="#" method="post">
        <div id="membership_area">
            <h3>SELECT YOUR MEMBERSHIP</h3>
            <h3>⋁</h3><br><br>
            <span id="membership_area1">
                <p></p>
                <p>SILVER MEMBERSHIP</p>
                <p>￦49,800</p>
                <p>6개월 이용권</p>
                <p>혜택1. 할인쿠폰(최대 ￦10,000까지)</p>
                <p>혜택2. 무료음료쿠폰</p>
                <button id="buy_membership">구매하기</button>
            </span>
            <span id="membership_area2">
                <p>MOST POPULAR</p>
                <p>GOLD MEMBERSHIP</p>
                <p>￦89,800</p>
                <p>12개월 이용권</p>
                <p>혜택1. 할인쿠폰(최대 ￦10,000까지)</p>
                <p>혜택2. 무료음료쿠폰</p>
                <button>구매하기</button>
            </span>
        </div>
        <!-- 정보 넘길 form 태그 -->
        	<!-- 회원 정보 -->
        	<input type="hidden" name="buy_memberId" id="buy_memberId" value="${loginUser.memberName}">
        	<!-- 멤버십정보 -->
        	<c:forEach var="item" items="${membershiplist}" end="0">
        	<input type="hidden" name="membership_Id" id="membership_Id" value="${item.membershipId}">
        	<input type="hidden" name="membership_name" id="membership_name" value="${item.membershipName}">
        	<input type="hidden" name="membership_price" id="membership_price" value="${item.membershipPrice}">
        	</c:forEach>
      
        	<!-- 결제 정보 -->
        </form>
    </section><br><br><br><br><br><br>
    	<%-- <c:forEach var="item" items="${membershiplist}" end="0">
     		<p>멤버십번호 : ${item.membershipId}</p>
     		<p>멤버십이름 : ${item.membershipName}</p>
     		<p>멤버십내용: ${item.membershipContent}</p>
     		<p>멤버십가격: ${item.membershipPrice}</p>
     		<p>멤버십기간: ${item.membershipDuringDate}</p>
		</c:forEach> --%>

    <!--footer시작-->
    <footer></footer>
    
    <!-- 동적 제어 시작 -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    $("#buy_membership").on("click",function(){
    	//멤버십 이름
    	var name = $("#membership_name").val();
    	//멤버십 가격
    	var price = $("#membership_price").val();
    	//회원 이름
    	var memberName = $("#buy_memberId").val();
    	
    	console.log("멤버십 이름 : " + name +"price: " + price + "memberName :" + memberName); 
    	
    	//iamport api
    	// getter
        var IMP = window.IMP;
        IMP.init('imp96485144');

        IMP.request_pay({
            pg: 'kakao',
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
           /*  +',memberNo='+buyMemberNo, */
            name: name,
            amount: price,
            /* buyer_email: 'iamport@siot.do', */
            buyer_name: memberName,
            /* buyer_tel: '010-1234-5678',
            buyer_addr: '인천광역시 부평구',
            buyer_postcode: '123-456' */
           /*  m_redirect_url: '/webapp/views/membership/paymentconfirm.jsp' */
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
            	console.log("결제성공");
                /* var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num; */
              //결제 완료 후 결과 화면으로
             		 /* location.href="buyMembership.do?buy_memberId="+buy_memberId; */
            } else {
            	console.log("결제실패");
                /* var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
        		alert("에러:"+msg); */
            }
           
           
        });
    });
   
    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <!-- 결제 api script -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  </body>
</html>