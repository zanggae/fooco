<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <title>LOGIN</title>
  <style>
    /* 모달 기본 설정 */
    .modal fade,.modal-content,.container{
      margin: 0 auto;
      padding:0px;
    }
    /* ----------------------1.로그인 모달창----------------------- */
    /* 모달 가로 넓게 */
    #for_first_modal{
      width: 129%;
    }
    /* 모달 헤더(LOGIN) */
    #myModalLabel{
      margin: 5 auto;
      padding: 5px;
      padding-left: 15px;
      width: 210%;
      height: 12px;
      background: rgb(253, 215, 129);
      color: rgb(204, 51, 98);
      border-top-left-radius: 3px;
      border-top-right-radius: 3px;
      font-weight: bold;
      font-size: 50px;
    }
    /* 모달창 끄기(x표) */
    .close{
      margin-right: 10px;
      margin-top: 7px;
    }
    /* 세로선 */
    #forLine{
      top: 0px;
      bottom: 0px;
      height: 250px;
      border:none;
      border-left: 1px solid lightgray;
      margin-left: 60px;
      margin-top: -40px;
    }
    /* input태그 */
    #for_first_modal input{
      width: 90%;
      margin-left: 50px;
    }
    /* hr태그 */
    #for_first_modal hr{
      margin-left: 28px;
      width: 107%;
    }
    /* 로그인 버튼 */
    #login_btn{
      margin-left: 125px;
      width:80px;
      height:36px;
      border: none;
      border-radius: 3px;
      color:white;
      background: RGB(204, 51, 98);
      /* font-weight: bold; */
    }
    #login_btn:hover{
      border: 1px solid rgb(204, 51, 98);
      background: rgb(253, 215, 129);
      color:rgb(204, 51, 98);
    }
    /* 회원가입 버튼 */
    #JoinMember_btn{
      margin-left: 54px;
      width:150px;
      height:36px;
      border: none;
      border-radius: 3px;
      /* color: RGB(253, 215, 129); */
      color: white;
      background: rgb(204, 51, 98);
      margin-top: 115px;
      /* font-weight: bold; */
    }
    #JoinMember_btn:hover{
      border: 1px solid rgb(204, 51, 98);
      background: rgb(253, 215, 129);
      color:rgb(204, 51, 98);
    }
    /* 구글 버튼 */
    #google_btn{
      margin-left: 65px;
      width:200px;
      height:36px;
      border: 1px solid gray;
      border-radius: 3px;
      background: white;
    }
    /* 이미지 사진 */
    img{
      margin-top: -20px;
      margin-left: 59px;
      position: absolute;
      width: 45%;
      height: 55%;
    }
    /* 비밀번호 찾기 */
    #toPwdSearch{
     background: white;
     border: none;
     position: absolute;
     margin-top: 20px;
     margin-left: 53%;
     font-size: 13px;
     color: gray;
    }
    #toPwdSearch:hover{
      text-decoration: underline;
    }
    /* ----------------------2.비밀번호 찾기 모달창----------------------- */
    /* 제목(Recovery Account) */
    #staticBackdropLabel{
      margin: 5 auto;
      padding: 5px;
      padding-left: 15px;
      color: rgb(204, 51, 98);
      font-weight: bold;  
    }
    h5,p,#email{
      margin-left: 20px;
    }
    /* 이메일 입력창 */
    #selfSiteName{
      width: 100px;
      border: 1px solid gray;
      border-radius: 3px;
    }
    #selectEmail{
      height: 29px;
    }
    /* 비밀번호 찾기 버튼 */
    #SearchPwd_btn{
      margin-left: 170px;
      width:150px;
      height:36px;
      border: none;
      border-radius: 3px;
      color: white;
      background: rgb(204, 51, 98);
    }
    #SearchPwd_btn:hover{
      border: 1px solid rgb(204, 51, 98);
      background: rgb(253, 215, 129);
      color:rgb(204, 51, 98);
    }
    /* 취소하기 버튼 */
    #SearchPwd_reset_btn{
      margin-left: 88%;
      background: white;
      border: none;
    }
    #SearchPwd_reset_btn:hover{
      text-decoration: underline;
    }
  </style>
</head>

<body>
  <!--header시작-->
  <header></header>

	<!-- test -->
	<form action="login.userdo" method="post" name="frm" style="width:470px;">
<h2>로그인</h2>
<input type="text" name="id" id="id" class="w3-input w3-border" placeholder="아이디" value="${id}"> <br>
<input type="password" id="pwd" name="pwd" class="w3-input w3-border" placeholder="비밀번호" > <br>
<input type="submit" value="로그인" onclick="#"> <br>
</form>
<br>
<!-- 네이버 로그인 창으로 이동 -->
<div id="naver_id_login" style="text-align:center"><a href="${url}">
<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
<br>	


  <!--section시작-->
  <section>
    <!-- 모달을 열기 위한 버튼(MENUBAR에 갈 것!) -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">LOGIN</button>

    <!-- 1.로그인 모달 영역 -->
    <form action="mlogin.do" method="post" id="loginform">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content" id="for_first_modal">
          <div class="container">
            <div class="row">
              <div class="col">
                <h4 class="modal-title" id="myModalLabel">LOGIN</h4><br><br><br><br>
              </div>
              <div class="col">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">x</span></button>
              </div>
              <div class="w-100"></div>
              <div class="col">
                <input type="text" name="email" placeholder="이메일" id="email_input" required><span style="line-height: 30px;"></span>
                <input type="password" name="memberPwd" placeholder="비밀번호" id="pwd_input" required><span style="line-height: 50px;"></span>
                <button id="login_btn">LOGIN</button>
                <hr>
                <button id="google_btn">Google로 계속</button><br><br><br>
              </div>
              <div id="forLine"></div>
              <div class="col">
                <img src="image/PlateCoupon.png">
                <button id="JoinMember_btn" onclick="joinMemberView();">회원가입</button><br><br>
                <!-- <a href="#" id="searchPwd">비밀번호 찾기</a> -->
                <button type="button" id="toPwdSearch" class="btn btn-primary" data-toggle="modal"
                  data-target="#staticBackdrop">비밀번호 찾기</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
   
    <!--2.비밀번호 찾기 모달-->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
      aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h2 class="modal-title" id="staticBackdropLabel">Account Recovery</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div>
            <br>
            <h5>패스워드를 잊으셨나요?</h5>
            <p>아래에 이메일 주소를 입력하시면 임시비밀번호를 보내드립니다.</p><br>
            <form>
              <h5>이메일주소</h5>
              <input type="text" required id="email" placeholder="가입메일주소">
              <span style="font-size: 17px;">@</span>
              <input type="text" id="selfSiteName" required disabled>
              <select class="" id="selectEmail">
                <option value="e_option" selected>선택하세요</option>
                <option value="naver.com">naver.com</option>
                <option value="daum.net">daum.net</option>
                <option value="google.com">google.com</option>
                <option value="hanmail.net">hanmail.net</option>
                <option value="selfEmail" id="selfEmail">직접 입력</option>
              </select><br><br><br>
              <button type="button" id="SearchPwd_btn">비밀번호 찾기</button><br>
              <input type="reset" value="취소" id="SearchPwd_reset_btn">
            </form><br>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!--footer시작-->
  <footer></footer>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>

  <!----------------------로그인 모달 영역-------------------------------->
  <script>
    //로그인 버튼 클릭 시 빈값이면 입력하도록
   /*  $("#login_btn").on("click",function(){
      if($("#email_input").val()=="" || ($("#pwd_input").val()=="")){
        alert("이메일과 비밀번호를 입력해주세요");
        return;
      } 
      //+바로 로그인 실패 말고 다시 입력하도록 함
      //+추가할 것 : 존재하지않는 아이디나 비밀번호일 경우 alert창 띄워주기
    })*/
  </script>
  <!--------------------비밀번호 찾기 모달 영역------------------------------>
  <script>
    //비밀번호 찾기 시 로그인 모달 꺼지도록 함
    $("#toPwdSearch").click(function () {
      $("#myModal").modal("hide");
    })

    $("#SearchPwd_btn").on("click",function(){
      if($("#email").val()==""){
        alert("이메일을 입력해주세요");
        return;
      }
      if($("#selfSiteName").val()=="" &&($("#selectEmail").val()==""||$("#selectEmail").val()=="e_option")){
        alert("이메일주소를 선택해주세요");
        return;
      }
      if($("#selectEmail").val()=="selfEmail" && ($("#selfSiteName").val()=="")){
        alert("이메일 주소를 입력해주세요");
        $("#selfSiteName").focus();
        return;
      }
    })
    //이메일 선택 시 직접 입력창 활성화
    $("#selectEmail").change(function(){
            var selectedValue = $("#selectEmail").children("option:selected").html();
                
            if(selectedValue==$("#selfEmail").html()){
                $("#selfSiteName").prop("disabled", false).focus().prop("value", "");
            }else if(!$("#selfSiteName").prop("disabled")){
                $("#selfSiteName").prop("disabled", true).prop("value", "");
            }
            if($("#selfSiteName").prop("disabled")){
                $("#selfSiteName").css("background", "lightgray");
            }else if($("#selfSiteName").prop("disabled")==false){
                $("#selfSiteName").css("background", "white");
            }
        });
        if($("#selfSiteName").prop("disabled")){
                $("#selfSiteName").css("background", "lightgray");
        }


  </script>
  
  <!-- 페이지 이동 script -->
  <script>
  	function joinMemberView(){
  		$("#loginform").attr("action","joinMemberView.do");
    	$("#loginform").submit();
  	}
  </script>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
</body>

</html>

<!--해야할 것-->
<!--
  1. 로그인 - 존재하지않는 아이디나 비밀번호일 경우 alert창 띄워주기
-->
