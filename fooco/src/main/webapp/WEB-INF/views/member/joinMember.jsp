<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>JOIN US</title>

    <style>
      /* 공통사항 */
      html{
        margin: 0 auto;
        padding:0px;
      }
      body{
        margin: 0px;
        padding:0px;
      }
      /* section{
        text-align: center;
      } */
      /* 회원가입 타이틀(JOIN US) */
      h1{
        margin-left: 18%;
        font-weight: bold;
      }
      /* 회원가입 타이틀(진짜 맛집을 찾아서!) */
      p{
        margin-left: 18%;
      }
      /* 구분선 */
      hr{
        margin-left: 18%;
        width: 67%;
        background: rgb(253, 215, 129);
      }
      span{
        font-size: 11px;
      }
      /* 회원가입 양식 테이블 */
      #Join_InputT{
        width:800px; 
        vertical-align: middle;
        border-collapse: collapse;
      }
      #Join_InputT td{
        padding:12px; 
        margin:0px
      }
      #Join_InputT tr:nth-of-type(3){
        margin-left: 30%;
      }
      /* 이메일 직접 입력 input태그 */
      #selfSiteName{
        border: 1px solid gray;
        border-radius: 3px;
      }
      /* 버튼CSS */
      /* 1.인증번호 확인 버튼 */
      #comfirm_btn{
        border: 1px solid rgb(204, 51, 98);
        color:rgb(204, 51, 98);
        border-radius: 3px;
        font-weight: bold;
        background: white;
      }
      #comfirm_btn:hover{
        background: rgb(253, 215, 129);
      }
      /* 2.본인인증 버튼 */
      #identity_confirm_btn{
        border: 1px solid rgb(204, 51, 98);
        color:rgb(204, 51, 98);
        border-radius: 3px;
        font-weight: bold;
        background: white;
      }
      #identity_confirm_btn:hover{
        background: rgb(253, 215, 129);
      }
      /* 3.가입하기 버튼 */
      #Join_btn{
        margin-left: 45%;
        width:110px;
        height:40px;
        border: none;
        border-radius: 3px;
        color:white;
        background: rgb(204, 51, 98);
        font-weight: bold;
      }
      #Join_btn:hover{
        border: 1px solid rgb(204, 51, 98);
        background: rgb(253, 215, 129);
        color:rgb(204, 51, 98);
      }
      /* 4.취소하기 버튼 */
      #join_reset_btn{
        width:110px;
        height:40px;
        border: 1px solid rgb(204, 51, 98);
        color:rgb(204, 51, 98);
        border-radius: 3px;
        font-weight: bold;
        background: white;
      }
      #join_reset_btn:hover{
        background: rgb(253, 215, 129);
      }
    </style>
  </head>
  <body>
      <!--header시작-->
      <!--상단 menubar include할 것-->
      <header></header>



      <!--section시작-->
      <section>
        <div>
          <h1>JOIN US</h1>
          <p>진짜 맛집을 찾아서! FOOCO와 함께 하세요!</p><hr>
        </div>
        <br><br>
        <form id="joinForm" action="insertMember.do" method="post">
          <table align="center" id="Join_InputT">
            <tr>
              <td><label><li type="square">이름</li></label></td>
              <td><input type="text" id="userName" name="memberName" required></td>
              <td><label id="resultName"></label></td>
            </tr>
            <tr>
              <td><label><li type="square">이메일</li></label></td>
              <td><input type="text" id="email" name="emailfront" required></td>
              <td>
                <span style="font-size: 17px;">@</span>&nbsp;
                <input type="text" id="selfSiteName" name="emailself" required disabled>
                <select class="" id="selectEmail" name="emailback">
                  <option value="e_option" selected>선택하세요</option>
                  <option value="naver.com">naver.com</option>
                  <option value="daum.net">daum.net</option>
                  <option value="google.com">google.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="selfEmail" id="selfEmail">직접 입력</option>
                </select>&nbsp;
                <input type="button" value="본인 인증" id="identity_confirm_btn" onclick="identity_confirm();">
                <label id="resultEmail"></label>
              </td>
            </tr>
            <tr>
              <td><li type="square"><label>인증번호 입력</label></li></td>
              <td><input type="text" id="checkEmailnum"></td>  <!--인증번호 입력하는 input태그-->
              <td><input type="button" value="확인" id="comfirm_btn" onclick="comfirm_check();">
                  &nbsp;<label id="resultEamilCheck" style="font-size: 12px;"></label>
              </td>
            </tr>
            <tr>
              <td><label><li type="square">닉네임</li></label></td>
              <td><input type="text" id="nickName" name="nickName" required></td>
              <td>
                <span>3-7자의 한글만 사용 가능</span>
                <label id="resultNickName"></label>
                <label id="nickName_check"></label>
              </td>
            </tr>
            <tr>
              <td><label><li type="square">비밀번호</li></label></td>
              <td><input type="password" id="userPwd1" name="memberPwd" required></td>
              <td>
              <span>8~16자의 영문자,숫자 사용하여 입력</span>
              <label id="resultPwd1"></label>
              </td>
            </tr>
            <tr>
              <td><label><li type="square">비밀번호 확인</li></label></td>
              <td><input type="password" id="userPwd2" required></td>
              <td><label id="resultPwd2"></label></td>
            </tr>
            <tr>
              <td><label><li type="square">성별</li></label></td>
              <td>
                <input type="radio" value="M" name="gender">남
                <input type="radio" value="F" name="gender">여
              </td>
              <td></td>
            </tr>
            <tr>
              <td><label><li type="square">약관동의</li></label></td>
              <td><input type="checkbox" id="terms_box"><label>약관에 동의 합니다</label></td>
              <td><a href="member/terms">약관 보기</a></td>
            </tr>
          </table><br><br><br><br>
              <button type="button" onclick="validate()" id="Join_btn">회원가입</button>&nbsp;
              <input type="reset" value="취소" id="join_reset_btn">
              
              
        </form><br><br><br><br>

      </section>


      <!--footer시작-->
      <footer></footer>

      <!--동적 제어 시작(script영역)-->
      <!--정규표현식/비밀번호 일치 확인/ 닉네임 중복여부 확인-->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <script>
        //1. 정규표현식(이름, 닉네임, 비밀번호)
        $(function(){
           var FalseStyle = {"color":"red","font-size":"11px"};
           var TrueStyle = {"color":"green","font-size":"11px"};

        //이름 정규표현식 : 한글로 최소 2자 이상
           $("#userName").change(function(){
             var regEx = /^[가-힣]{2,}$/;
             if(!regEx.test($("#userName").val())){
               $("#resultName").html("이름은 한글로 2자 이상이어야 합니다.").css(FalseStyle);
               $(this).val('').focus();
             }else{
              $("#resultName").html("확인되었습니다.").css(TrueStyle);
             }
           })

        //닉네임 정규표현식 : 한글만 최소 3자이상 6자이상
          $("#nickName").change(function(){
            var regEx = /^[가-힣]{3,6}$/;
            if(!regEx.test($("#nickName").val())){
              $("#resultNickName").html("닉네임은 한글로 3자이상 6자 이하어야 합니다").css(FalseStyle);
              $(this).val('').focus();
            }else{
              $("#resultNickName").html("확인되었습니다.").css(TrueStyle);
            }
          })

        //비밀번호 정규 표현식 : 8~16자의 영문자,숫자 + 비밀번호 일치 여부
        $("#userPwd1").change(function(){
          var regEx = /^[A-Za-z0-9]{8,16}$/;
          if(!regEx.test($("#userPwd1").val())){
            $("#resultPwd1").html("8~16자의 영문자,숫자 사용").css(FalseStyle);
            $(this).val('').focus();
          }else{
            $("#resultPwd1").html("비밀번호로 사용 가능합니다.").css(TrueStyle);
          }
        }).keyup(function(){
            if($(this).val()!=$('#userPwd2').val()&&$('#userPwd2').val()!=''){
                $('#resultPwd2').html('비밀번호가 일치하지 않습니다.').css(styleFalse)
            }
            if($(this).val()==$('#userPwd2').val()&&$('#userPwd2').val()!=''){
                $('#resultPwd2').html('비밀번호가 일치합니다.').css(styleTrue)
            }
        });

        $('#userPwd2').change(function(){
            if($(this).val()!=$('#userPwd1').val()){
                $('#resultPwd2').html('비밀번호가 일치하지 않습니다').css(styleFalse)
                $('#userPwd2').prop('value', '').focus();
            }else{
                $('#resultPwd2').html('비밀번호가 일치합니다.').css(styleTrue)
            }
        }).keyup(function(){
            if($(this).val()==$('#userPwd1').val()&&$('#userPwd2').val()!=''){
                $('#resultPwd2').html('비밀번호가 일치합니다.').css(styleTrue)
            }
            if($(this).val()!=$('#userPwd1').val()&&$(this).val()!=''){
                $('#resultPwd2').html('비밀번호가 일치하지 않습니다.').css(styleFalse);
            }
        });

   
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
           
        })


      </script>

      <!-- 닉네임 정규표현식, 중복체크-->
      <script>
        //2. 닉네임 중복체크 -> spring ajax 배운 후 작성
        $("#nickName").blur(function(){
          var nickName = $("#nickName").val();

          $.ajax({

          })
        })

      </script>

      <!--회원 가입 중 새로고침 막기-->
      <script>
        $(function(){
          window.onkeydown = function(){
            if(event.keyCode==116){
              alert("회원가입 중 새로고침이 불가능합니다.");
              event.keyCode = 2;
              return false;
            }else if(event.ctrlKey && (event.keyCode ==78 || event.keyCode ==82)){
              return false;
            }
          }
        })
      </script>
      
      <!--0810 깃 이후 추가한 것-->
      <!--각 항목 입력했는 지 체크-->
      <script>
        function validate(){
          if($("#userName").val()==""){
               alert("이름을 입력하세요");
               $("#userName").focus();
               return;
          }
          if($("#email").val()==""){
            alert("이메일을 입력하세요");
            $("#email").focus();
            return;
          }
          if($("#nickName").val()==""){
            alert("닉네임을 입력하세요");
            $("#nickName").focus();
            return;
          }
          if($("#userPwd1").val()==""){
            alert("비밀번호를 입력하세요");
            $("#userPwd1").focus();
            return;
          }
          if ( ! jQuery('input[name="gender"]:checked').val() ) {
            alert('성별을 선택해주세요.');
            jQuery('input[name="gender"]').focus();
            return false;
          }
          if($("#terms_box").prop("checked")==false){
            alert("필수 약관에 동의 하셔야 합니다");
            return;
          }
          $("#joinForm").submit();
        }
      </script>

      <!--이메일 본인인증-->
      <script>
        checkSuccess="";
        completeCheck=-1;

        //인증메일 전송 함수
        //이메일 입력했는 지 확인
        function identity_confirm(){
          if($("#email").val()==""){
            alert("이메일을 입력해주세요");
            $("#email").focus();
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

          if(completeCheck==1){
            alert("이미 인증받은 이메일입니다");
            return;
          }

          //이메일 데이터 통합
          var email1 = $("#email");
          var email2 = "";

          if($("#selfSiteName").prop("disabled")==true){
            email2 = $("#selectEmail");     //선택이메일
          }else{
            email2 = $("#selfSiteName");    //직접입력 이메일
          }
          $.ajax({
            url:"sendEmail.do",
            type:"post",
            data:{email:email1.val()+"@"+email2.val()},
            success:function(data){
              console.log("성공");
              checkSuccess=data;
              $("#identity_confirm_btn").prop("disable",true);
              $("#comfirm_btn").prop("disabled",false);
              alert("입력한 이메일로 인증번호가 전송되었습니다.");
            },
            error:function(request, status, error){
              lert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
            
          })
        }

          //인증번호 확인 버튼 함수
          function comfirm_check(){
            //이메일 인증 후 진행하는지
            if(checkSuccess==""){
              alert("인증메일을 받고 진행해주세요");
              return;
            }
            //빈 값인지 
            if($("#").val()==""){
              alert("인증번호를 입력해주세요");
              return;
            }
            var compare = document.getElementById("#checkEmailnum").valueB;

            if(checkSuccess==compare){
              alert("인증에 성공하셨습니다.");
              checkSuccess=="success";
              completeCheck=1;

              $("#identity_confirm_btn").prop("disabled",false);
              $("#resultEmailCheck").text("인증 성공");
            }else if(checkSuccess==""){
              alert("본인 인증 버튼을 눌러주세요");
            }else{
              alert("맞지 않는 번호입니다");
              $("#checkEmailnum").val();
            }
          }
          
     
          
			

        
      </script>
      

      <!--추가할 것-->
      <!--이메일 관련(인증), 닉네임 중복 확인 AJAX, Submit-->
      
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>