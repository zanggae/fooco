<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
    <style>
        /*폰트 적용*/
        body {
            font-family: 'Jua', sans-serif;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
  <button onclick="requestPay()">결제하기</button>

      <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js" ></script>
     <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

    <script>
    function requestPay() {
      //  alert("잘뜨는지");
      //  var name = $("#membership_name").val();
      //  var price = $("#membership_price").val();
       
        var IMP = window.IMP; // 생략해도 괜찮습니다.
         IMP.init("imp96485144"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"
        // IMP.request_pay(param, callback) 호출
        IMP.request_pay({ // param - 결제 요청에 필요한 속성과 값을 담음
            pg: "html5_inicis",
            pay_method: "card",
            merchant_uid: "merchant_" + new Date().getTime(),   //주문번호
            name: "이름",
            amount: 1000,
            /* buyer_email: "gildong@gmail.com",
            buyer_name: "홍길동",
            buyer_tel: "010-4242-4242",
            buyer_addr: "서울특별시 강남구 신사동",
            buyer_postcode: "01181" */
        }, function (rsp) { // callback - 결제 완료 후 실행되는 함수
            if (rsp.success) {
               console.log("결제 성공");
            } else {
                console.log("결제 실패");
            }
        });
      }
    
   </script>


</body>

</html>