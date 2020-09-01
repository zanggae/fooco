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
	<!-- 아이콘 -->
	<script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>

    <title>JOIN US</title>

    <style>
            /* 폰트 */
        @font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
        @font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
        @font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
        * {font-family:'light';}
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
      	/* display:none; */
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
      /*약관 팝업창 설정*/
      .termsOfService{
            text-align: justify;
            margin: 14px;
            height: 400px;
            overflow: auto;
            border: 1px solid black;
            font-size: 12px;
            font-weight: 100;
        }
        .termsOfService::-webkit-scrollbar {
            background-color: red;
        }
        .termsOfService::-webkit-scrollbar-thumb {
            background-color: rgb(175,175,175);
        }
        .termsOfService::-webkit-scrollbar-track {
            background-color: lightgray;
        }
        .termsOfService>p{
            margin:12px;
        }
        #closeUsingTOS {
            background: rgb(253, 215, 129);
            color: black;
            width: 100px;
            height: 35px;
            border: none;
            border-radius: 3px;
            font-weight: 500;
            font-size: 14px;
        }
        #closeUsingTOS:hover{
            text-decoration: underline;
        }
        #btnArea{
            text-align: center;
        }
        #for_terms_modal{
        	background:white;
        	border:none;
        	color:black;
        	box-shadow:none;
        	margin-left:-50px;
        	margin-top:-10px;
        	font-size:13px;
        }
        #for_terms_modal:hover{
        	text-decoration: underline;
        }
    </style>
  </head>
  <body>
      <!--header시작-->
      <header>
  	  <jsp:include page="../common/commonHeader.jsp"></jsp:include> 
      </header><br><br><br><br>


      <!--section시작-->
      <section>
        <div>
          <h1 style="font-family:'heavy';">JOIN US</h1>
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
                  <option value="google.com">gmail.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="selfEmail" id="selfEmail">직접 입력</option>
                </select>&nbsp;
                <input type="button" value="본인 인증" id="identity_confirm_btn" onclick="identity_confirm();">
                <label id="resultEmail"></label>
              </td>
            </tr>
            <tr>
              <td><li type="square"><label>인증번호 입력</label></li></td>
              <td><input type="text" name="checkEmail" id="checkEmailnum"></td>  <!--인증번호 입력하는 input태그-->
              <td><input type="button" value="확인" id="comfirm_btn" onclick="checkEmailbtn();">
                  &nbsp;<label id="resultEmailCheck" style="font-size: 12px;"></label>
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
              <td><button type="button" class="btn btn-primary" id="for_terms_modal" data-toggle="modal" data-target="#exampleModal">이용약관 보기</button></td>
            </tr>
          </table><br><br><br><br>
              <button type="button" onclick="validate()" id="Join_btn">회원가입</button>&nbsp;
              <input type="reset" value="취소" id="join_reset_btn">
              
              
        </form><br><br><br><br>

		<!-- 이용약관 모달 -->
		<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Fooco 이용약관</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        </button>
      </div>
      <div class="modal-body">
       	 <div class="termsOfService">
            <p>
                <b>FOOCO 서비스를 이용해주셔서 감사합니다.</b><br>
                <br>
                FOOCO 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 FOOCO 서비스의 이용과 관련하여 FOOCO 서비스를 제공하는 FOOCO 주식회사(이하
                ‘FOOCO’)와
                이를 이용하는 FOOCO 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 FOOCO 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고
                있습니다.
                <br><br>
                FOOCO 서비스를 이용하시거나 FOOCO 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐
                주시기
                바랍니다.
                <br><br>
                다양한 FOOCO 서비스를 즐겨보세요.
                FOOCO www.FOOCO.com을 비롯한 FOOCO 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등
                여러분의
                생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
                여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 FOOCO 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의
                안내,
                공지사항, FOOCO 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.
                <br><br>
                FOOCO는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는
                일정한
                등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스
                상의
                안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.
                <br><br>
                FOOCO 서비스에는 기본적으로 본 약관이 적용됩니다만 FOOCO가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우(예, FOOCO페이,
                V
                LIVE 등)가 있습니다. 그리고 FOOCO 계열사가 제공하는 특정 서비스의 경우에도(예, LINE, SNOW등) 해당 운영 회사가 정한 고유의 약관, 운영정책 등이 적용될 수
                있습니다. 이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.
                <br><br>
                회원으로 가입하시면 FOOCO 서비스를 보다 편리하게 이용할 수 있습니다.
                여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, FOOCO는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 FOOCO 서비스 이용 계정(이하
                ‘계정’)을 부여합니다. 계정이란 회원이 FOOCO 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다. 회원은
                자신의
                계정을 통해 좀더 다양한 FOOCO 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한 상세한 내용은 계정 운영정책 및 고객센터 내 FOOCO 회원가입 방법 등에서 확인해
                주세요.
                <br><br>
                FOOCO는 단체에 속한 여러 구성원들이 공동의 계정으로 FOOCO 서비스를 함께 이용할 수 있도록 단체회원 계정도 부여하고 있습니다. 단체회원 구성원들은 하나의 계정 및
                아이디(ID)를
                공유하되 각자 개별적으로 설정한 비밀번호를 입력하여 계정에 로그인하고 각종 서비스를 이용하게 됩니다. 단체회원은 관리자와 멤버로 구성되며, 관리자는 구성원 전부로부터 권한을
                위임
                받아 단체회원을 대표하고 단체회원 계정을 운용합니다.
                따라서 관리자는 단체회원 계정을 통해 별도 약관 또는 기존 약관 개정에 대해 동의하거나 단체회원에서 탈퇴할 수 있고, 멤버들의 단체회원 계정 로그인 방법 및 이를 통한
                게시물 게재
                등 FOOCO 서비스 이용을 관리(게시물 삭제 포함)할 수 있습니다. 본 약관에서 규정한 사항은 원칙적으로 구성원 모두에게 적용되며, 각각의 구성원은 다른 구성원들의 단체회원
                계정 및
                아이디(ID)를 통한 서비스 이용에 관해 연대책임을 부담합니다.
                <br><br>
                단체회원 계정 사용에서의 관리자, 멤버 등의 권한 및 (공동)책임에 관한 사항 등은 계정 운영정책 및 고객센터 내 FOOCO 단체회원(단체 아이디) 소개 등에서 확인해 주시기
                바랍니다.
                <br><br>
                여러분이 제공한 콘텐츠를 소중히 다룰 것입니다.
                FOOCO는 여러분이 게재한 게시물이 FOOCO 서비스를 통해 다른 이용자들에게 전달되어 우리 모두의 삶을 더욱 풍요롭게 해줄 것을 기대합니다. 게시물은 여러분이 타인 또는 자신이
                보게 할
                목적으로 FOOCO 서비스 상에 게재한 부호, 문자, 음성, 음향, 그림, 사진, 동영상, 링크 등으로 구성된 각종 콘텐츠 자체 또는 파일을 말합니다.
                <br><br>
                FOOCO은 여러분의 생각과 감정이 표현된 콘텐츠를 소중히 보호할 것을 약속 드립니다. 여러분이 제작하여 게재한 게시물에 대한 지식재산권 등의 권리는 당연히 여러분에게 있습니다.
                <br><br>
                한편,FOOCO 서비스를 통해 여러분이 게재한 게시물을 적법하게 제공하려면 해당 콘텐츠에 대한 저장, 복제, 수정, 공중 송신, 전시, 배포, 2차적 저작물 작성(단, 번역에
                한함)
                등의 이용 권한(기한과 지역 제한에 정함이 없으며, 별도 대가 지급이 없는 라이선스)이 필요합니다.
                게시물 게재로 여러분은 FOOCO에게 그러한 권한을 부여하게 되므로, 여러분은 이에 필요한 권리를 보유하고 있어야 합니다.
                <br><br>
                FOOCO는 여러분이 부여해 주신 콘텐츠 이용 권한을 저작권법 등 관련 법령에서 정하는 바에 따라 FOOCO 서비스 내 노출, 서비스 홍보를 위한 활용, 서비스 운영, 개선 및
                새로운
                서비스 개발을 위한 연구, 웹 접근성 등 법률상 의무 준수, 외부 사이트에서의 검색, 수집 및 링크 허용을 위해서만 제한적으로 행사할 것입니다.
                만약, 그 밖의 목적을 위해 부득이 여러분의 콘텐츠를 이용하고자 할 경우엔 사전에 여러분께 설명을 드리고 동의를 받도록 하겠습니다.
                <br><br>
                또한 여러분이 제공한 소중한 콘텐츠는 FOOCO 서비스를 개선하고 새로운 FOOCO 서비스를 제공하기 위해 인공지능 분야 기술 등의 연구 개발 목적으로 FOOCO 및 FOOCO 계열사에서
                사용될
                수 있습니다.FOOCO는 지속적인 연구 개발을 통해 여러분께 좀 더 편리하고 유용한 서비스를 제공해 드릴 수 있도록 최선을 다하겠습니다.
                <br><br>
                FOOCO는 여러분이 자신이 제공한 콘텐츠에 대한 FOOCO 또는 다른 이용자들의 이용 또는 접근을 보다 쉽게 관리할 수 있도록 다양한 수단을 제공하기 위해 노력하고 있습니다.
                여러분은
                FOOCO 서비스 내에 콘텐츠 삭제, 비공개 등의 관리기능이 제공되는 경우 이를 통해 직접 타인의 이용 또는 접근을 통제할 수 있고, 고객센터를 통해서도 콘텐츠의 삭제,
                비공개,
                검색결과 제외 등의 조치를 요청할 수 있습니다.
                다만, 일부 FOOCO 서비스의 경우 삭제, 비공개 등의 처리가 어려울 수 있으며, 이러한 내용은 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인해 주시길 부탁
                드립니다.
                <br><br>
                여러분의 개인정보를 소중히 보호합니다.
                FOOCO는 서비스의 원활한 제공을 위하여 회원이 동의한 목적과 범위 내에서만 개인정보를 수집∙이용하며, 개인정보 보호 관련 법령에 따라 안전하게 관리합니다. FOOCO가 이용자
                및
                회원에 대해 관련 개인정보를 안전하게 처리하기 위하여 기울이는 노력이나 기타 상세한 사항은 개인정보 처리방침에서 확인하실 수 있습니다.
                <br><br>
                FOOCO는 여러분이 서비스를 이용하기 위해 일정 기간 동안 로그인 혹은 접속한 기록이 없는 경우, 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 사전에
                안내해 드린
                후 여러분의 정보를 파기하거나 분리 보관할 수 있으며, 만약 이로 인해 서비스 제공을 위해 필수적인 정보가 부족해질 경우 부득이 관련 서비스 이용계약을 해지할 수 있습니다.
                <br><br>
                타인의 권리를 존중해 주세요.
                여러분이 무심코 게재한 게시물로 인해 타인의 저작권이 침해되거나 명예훼손 등 권리 침해가 발생할 수 있습니다. FOOCO는 이에 대한 문제 해결을 위해 ‘정보통신망 이용촉진 및
                정보보호 등에 관한 법률’ 및 ‘저작권법’ 등을 근거로 권리침해 주장자의 요청에 따른 게시물 게시중단, 원 게시자의 이의신청에 따른 해당 게시물 게시 재개 등을 내용으로
                하는
                게시중단요청서비스를 운영하고 있습니다. 보다 상세한 내용 및 절차는 고객센터 내 게시중단요청서비스 소개를 참고해 주세요.
                <br><br>
                한편, FOOCO 서비스를 통해 타인의 콘텐츠를 이용한다고 하여 여러분이 해당 콘텐츠에 대한 지식재산권을 보유하게 되는 것은 아닙니다. 여러분이 해당 콘텐츠를 자유롭게 이용하기
                위해서는 그 이용이 저작권법 등 관련 법률에 따라 허용되는 범위 내에 있거나, 해당 콘텐츠의 지식재산권자로부터 별도의 이용 허락을 받아야 하므로 각별한 주의가 필요합니다.
                <br><br>
                FOOCO는 여러분이 FOOCO 서비스를 마음껏 이용할 수 있도록 여러분께 FOOCO 서비스에 수반되는 관련 소프트웨어 사용에 관한 이용 권한을 부여합니다. 이 경우 여러분의 자유로운
                이용은
                FOOCO가 제시하는 이용 조건에 부합하는 범위 내에서만 허용되고, 이러한 권한은 양도가 불가능하며, 비독점적 조건 및 법적고지가 적용된다는 점을 유의해 주세요.
                <br><br>
                FOOCO에서 제공하는 다양한 포인트를 요긴하게 활용해 보세요.
                FOOCO는 여러분이 FOOCO 서비스를 효율적으로 이용할 수 있도록 포인트를 부여하고 있습니다. 포인트는 여러분의 일정한 FOOCO 서비스 이용과 연동하여 FOOCO가 임의로 책정하거나
                조정하여 지급하는 일정한 계산 단위를 갖는 서비스 상의 가상 데이터를 말합니다. 포인트는 재산적 가치가 없기 때문에 금전으로 환불 또는 전환할 수 없지만, 포인트의 많고
                적음에
                따라 여러분의 FOOCO 서비스 이용에 영향을 주는 경우가 있으므로 경우에 따라 적절히 활용해 보세요.
                <br><br>
                FOOCO는 FOOCO 서비스의 효율적 이용을 지원하거나 서비스 운영을 개선하기 위해 필요한 경우 사전에 여러분께 안내 드린 후 부득이 포인트의 일부 또는 전부를 조정할 수
                있습니다.
                그리고 포인트는 FOOCO가 정한 기간에 따라 주기적으로 소멸할 수도 있으니 포인트가 부여되는 FOOCO 서비스 이용 시 유의해 주시기 바랍니다.
                <br><br>
                FOOCO 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다.
                FOOCO는 여러분이 FOOCO 서비스를 자유롭고 편리하게 이용할 수 있도록 최선을 다하고 있습니다. 다만, 여러분이 FOOCO 서비스를 보다 안전하게 이용하고 FOOCO 서비스에서
                여러분과
                타인의 권리가 서로 존중되고 보호받으려면 여러분의 도움과 협조가 필요합니다. 여러분의 안전한 서비스 이용과 권리 보호를 위해 부득이 아래와 같은 경우 여러분의 게시물 게재나
               FOOCO
                서비스 이용이 제한될 수 있으므로, 이에 대한 확인 및 준수를 요청 드립니다.
                <br><br>
                회원 가입 시 이름, 생년월일, 휴대전화번호 등의 정보를 허위로 기재해서는 안 됩니다. 회원 계정에 등록된 정보는 항상 정확한 최신 정보가 유지될 수 있도록 관리해 주세요.
                자신의
                계정을 다른 사람에게 판매, 양도, 대여 또는 담보로 제공하거나 다른 사람에게 그 사용을 허락해서는 안 됩니다. 아울러 자신의 계정이 아닌 타인의 계정을 무단으로 사용해서는
                안
                됩니다. 이에 관한 상세한 내용은 계정 운영정책을 참고해 주시기 바랍니다.
                타인에 대해 직접적이고 명백한 신체적 위협을 가하는 내용의 게시물, 타인의 자해 행위 또는 자살을 부추기거나 권장하는 내용의 게시물, 타인의 신상정보, 사생활 등 비공개
                개인정보를
                드러내는 내용의 게시물, 타인을 지속적으로 따돌리거나 괴롭히는 내용의 게시물, 성매매를 제안, 알선, 유인 또는 강요하는 내용의 게시물, 공공 안전에 대해 직접적이고 심각한
                위협을
                가하는 내용의 게시물은 제한될 수 있습니다.
                관련 법령상 금지되거나 형사처벌의 대상이 되는 행위를 수행하거나 이를 교사 또는 방조하는 등의 범죄 관련 직접적인 위험이 확인된 게시물, 관련 법령에서 홍보, 광고, 판매
                등을
                금지하고 있는 물건 또는 서비스를 홍보, 광고, 판매하는 내용의 게시물, 타인의 지식재산권 등을 침해하거나 모욕, 사생활 침해 또는 명예훼손 등 타인의 권리를 침해하는
                내용이
                확인된 게시물은 제한될 수 있습니다.
                자극적이고 노골적인 성행위를 묘사하는 등 타인에게 성적 수치심을 유발시키거나 왜곡된 성 의식 등을 야기할 수 있는 내용의 게시물, 타인에게 잔혹감 또는 혐오감을 일으킬 수
                있는
                폭력적이고 자극적인 내용의 게시물, 본인 이외의 자를 사칭하거나 허위사실을 주장하는 등 타인을 기만하는 내용의 게시물, 과도한 욕설, 비속어 등을 계속하여 반복적으로
                사용하여 심한
                혐오감 또는 불쾌감을 일으키는 내용의 게시물은 제한될 수 있습니다.
                자동화된 수단을 활용하는 등 FOOCO 서비스의 기능을 비정상적으로 이용하여 게재된 게시물, FOOCO 각 개별 서비스의 제공 취지와 부합하지 않는 내용의 게시물은 다른 이용자들의
                정상적인 FOOCO 서비스 이용에 불편을 초래하고 더 나아가 FOOCO의 원활한 서비스 제공을 방해하므로 역시 제한될 수 있습니다. 기타 제한되는 게시물에 관한 상세한 내용은
                게시물
                운영정책 및 각 개별 서비스에서의 약관, 운영정책 등을 참고해 주시기 바랍니다.
                FOOCO의 사전 허락 없이 자동화된 수단(예: 매크로 프로그램, 로봇(봇), 스파이더, 스크래퍼 등)을 이용하여 FOOCO 서비스 회원으로 가입을 시도 또는 가입하거나, FOOCO
                서비스에
                로그인을 시도 또는 로그인하거나, FOOCO 서비스 상에 게시물을 게재하거나, FOOCO 서비스를 통해 커뮤니케이션하거나(예: 전자메일, 쪽지 등), FOOCO 서비스에 게재된 회원의
                아이디(ID), 게시물 등을 수집하거나, FOOCO 검색 서비스에서 특정 질의어로 검색하거나 혹은 그 검색결과에서 특정 검색결과를 선택(이른바 ‘클릭’)하는 등 이용자(사람)의
                실제
                이용을 전제로 하는 FOOCO 서비스의 제공 취지에 부합하지 않는 방식으로 FOOCO 서비스를 이용하거나 이와 같은 FOOCO 서비스에 대한 어뷰징(남용) 행위를 막기 위한 FOOCO의
                기술적
                조치를 무력화하려는 일체의 행위(예: IP를 지속적으로 바꿔가며 접속하는 행위, Captcha를 외부 솔루션 등을 통해 우회하거나 무력화 하는 행위 등)를 시도해서는 안
                됩니다.
               FOOCO의 동의 없이 자동화된 수단에 의해 FOOCO 서비스 상에 광고가 게재되는 영역 또는 그 밖의 영역에 부호, 문자, 음성, 음향, 그림, 사진, 동영상, 링크 등으로
                구성된 각종
                콘텐츠 자체 또는 파일을 삽입해서는 안 됩니다. 또한, FOOCO 서비스 또는 이에 포함된 소프트웨어를 복사, 수정할 수 없으며, 이를 판매, 양도, 대여 또는 담보로
                제공하거나
                타인에게 그 이용을 허락해서는 안 됩니다. FOOCO 서비스에 포함된 소프트웨어를 역 설계, 소스코드 추출 시도, 복제, 분해, 모방, 기타 변형하는 등의 행위도
                금지됩니다(다만,
                오픈소스에 해당되는 경우 그 자체 조건에 따릅니다). 그 밖에 바이러스나 기타 악성 코드를 업로드하거나 FOOCO 서비스의 원활한 운영을 방해할 목적으로 서비스 기능을
                비정상적으로
                이용하는 행위 역시 금지됩니다.
                FOOCO는 본 약관의 범위 내에서 게시물 운영정책, 각 개별 서비스에서의 약관 또는 운영정책, 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등을 두어, 여러분에게
                안정적이고
                원활한 서비스 이용이 가능하도록 지원하고 있습니다. 각 세부 정책에는 여러분이 참고할 수 있도록 보다 구체적인 유의사항을 포함하고 있으니, 본 약관 본문 및 구성 페이지
                상의 링크
                등을 통해 이를 확인해 주시기 바랍니다.
                <br><br>
                부득이 서비스 이용을 제한할 경우 합리적인 절차를 준수합니다.
                FOOCO는 다양한 정보와 의견이 담긴 여러분의 콘텐츠를 소중히 다룰 것을 약속 드립니다만, 여러분이 게재한 게시물이 관련 법령, 본 약관, 게시물 운영정책, 각 개별
                서비스에서의
                약관, 운영정책 등에 위배되는 경우, 부득이 이를 비공개 또는 삭제 처리하거나 게재를 거부할 수 있습니다. 다만, 이것이 FOOCO가 모든 콘텐츠를 검토할 의무가 있다는 것을
                의미하지는 않습니다.
                <br><br>
                또한 여러분이 관련 법령, 본 약관, 계정 및 게시물 운영정책, 각 개별 서비스에서의 약관, 운영정책 등을 준수하지 않을 경우, FOOCO는 여러분의 관련 행위 내용을 확인할
                수
                있으며, 그 확인 결과에 따라 FOOCO 서비스 이용에 대한 주의를 당부하거나, FOOCO 서비스 이용을 일부 또는 전부, 일시 또는 영구히 정지시키는 등 그 이용을 제한할 수
                있습니다.
                한편, 이러한 이용 제한에도 불구하고 더 이상 FOOCO 서비스 이용계약의 온전한 유지를 기대하기 어려운 경우엔 부득이 여러분과의 이용계약을 해지할 수 있습니다.
                <br><br>
                부득이 여러분의 서비스 이용을 제한해야 할 경우 명백한 법령 위반이나 타인의 권리침해로서 긴급한 위험 또는 피해 차단이 요구되는 사안 외에는 위와 같은 단계적 서비스
                이용제한
                원칙을 준수 하겠습니다. 명백한 법령 위반 등을 이유로 부득이 서비스 이용을 즉시 영구 정지시키는 경우 서비스 이용을 통해 획득한 포인트 및 기타 혜택 등은 모두 소멸되고
                이에
                대해 별도로 보상하지 않으므로 유의해 주시기 바랍니다. 서비스 이용 제한의 조건, 세부 내용 등은 계정 운영정책 및 각 개별 서비스에서의 운영정책을 참고하시기 바랍니다.
                <br><br>
                FOOCO의 잘못은 FOOCO가 책임집니다.
                FOOCO는 여러분이 FOOCO 서비스를 이용함에 있어 FOOCO의 고의 또는 과실로 인하여 손해를 입게 될 경우 관련 법령에 따라 여러분의 손해를 배상합니다. 다만, 천재지변 또는
                이에
                준하는 불가항력으로 인하여 FOOCO가 서비스를 제공할 수 없거나 이용자의 고의 또는 과실로 인하여 서비스를 이용할 수 없어 발생한 손해에 대해서 FOOCO는 책임을 부담하지
                않습니다.
                <br><br>
                그리고 FOOCO가 손해배상책임을 부담하는 경우에도 통상적으로 예견이 불가능하거나 특별한 사정으로 인한 특별 손해 또는 간접 손해, 기타 징벌적 손해에 대해서는 관련 법령에
                특별한
                규정이 없는 한 책임을 부담하지 않습니다.
                <br><br>
                한편, FOOCO 서비스를 매개로 한 여러분과 다른 회원 간 또는 여러분과 비회원 간의 의견 교환, 거래 등에서 발생한 손해나 여러분이 서비스 상에 게재된 타인의 게시물 등의
                콘텐츠를
                신뢰함으로써 발생한 손해에 대해서도 FOOCO는 특별한 사정이 없는 한 이에 대해 책임을 부담하지 않습니다.
                <br><br>
                언제든지 FOOCO 서비스 이용계약을 해지하실 수 있습니다.
                FOOCO에게는 참 안타까운 일입니다만, 회원은 언제든지 FOOCO 서비스 이용계약 해지를 신청하여 회원에서 탈퇴할 수 있으며, 이 경우 FOOCO는 관련 법령 등이 정하는 바에 따라
                이를
                지체 없이 처리하겠습니다.
                <br><br>
                FOOCO 서비스 이용계약이 해지되면, 관련 법령 및 개인정보처리방침에 따라 FOOCO가 해당 회원의 정보를 보유할 수 있는 경우를 제외하고, 해당 회원 계정에 부속된 게시물
                일체를
                포함한 회원의 모든 데이터는 소멸됨과 동시에 복구할 수 없게 됩니다. 다만, 이 경우에도 다른 회원이 별도로 담아갔거나 스크랩한 게시물과 공용 게시판에 등록한 댓글 등의
                게시물은
                삭제되지 않으므로 반드시 해지 신청 이전에 삭제하신 후 탈퇴하시기 바랍니다.
            </p>
        </div>
      </div>
      <div class="modal-footer">
      <div id="btnArea">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeUsingTOS">확인</button>
      </div>  
      </div>
    </div>
  </div>
</div>

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

      <!-- 중복체크 영역-->
      <script>
      	/* 닉네임 중복체크 */
        $("#nickName").on("change",function(){
          var nickName = $("#nickName").val().trim();

          $.ajax({
				url:"checkNickName.do"
				,type:"post"
				,data: {nickName:nickName}
				,success:function(data){
					console.log("data값:"+data);
					if(data==0){	//true=0					
						alert("사용하실 수 있는 닉네임입니다.");
					}else{ //flase=1
						alert("중복된 닉네임입니다.");
						$("#nickName").val("");
					}
				},error:function(request,status,errorData){
					alert("error code:" + request.status + "\n"
							+"message: " +request.responseText
							+"error: " + errorData);
				}
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
          if($("#checkEmailnum").val()==""){
              alert("이메일 인증을 완료해주세요");
              $("#checkEmailnum").focus();
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
      	checkSuccess=""; 	//이메일 인증 상태
		completeCheck=-1;	//인증한 이메일인지 아닌지
		emailCheck=0;		//이메일 함수 사용 
		
		function emailTrimCheck(){
			if($("#email").val()==""){
	            alert("이메일을 입력해주세요");
	            $("#email").focus();
	            emailCheck=1;
	            return;
	          }
	          if($("#selfSiteName").val()=="" &&($("#selectEmail").val()==""||$("#selectEmail").val()=="e_option")){
	            alert("이메일주소를 선택해주세요");
	            emailCheck=1;
	            return;
	          }
	          if($("#selectEmail").val()=="selfEmail" && ($("#selfSiteName").val()=="")){
	            alert("이메일 주소를 입력해주세요");
	            $("#selfSiteName").focus();
	            emailCheck=1;
	            return;
	          }
	          if(completeCheck==1){
					alert("이미 인증받은 메일입니다");
					emailCheck=1;
					return;
				}
		}
        //인증메일 전송 버튼 함수
        //이메일 입력했는 지 확인
        function identity_confirm(){
            emailTrimCheck();
        	if(emailCheck==1){
        		emailCheck=0;
        		return;
        	}
          //이메일 데이터 하나로 합치기
          var email1 = $("#email");
          var email2 = "";

          if($("#selfSiteName").prop("disabled")==true){
            email2 = $("#selectEmail");     //선택이메일
          }else{
            email2 = $("#selfSiteName");    //직접입력 이메일
          }

          $.ajax({
				url:"sendEmailforMemerJoin.do"
				, type:"post"
				, data:{email:email1.val()+'@'+email2.val()}
				, success:function(data){
					console.log("성공");
					alert(data);
					checkSuccess = data;
					console.log("checkSuccess"+checkSuccess);
									
					$("#identity_confirm_btn").prop("disabled", true);
					$("#comfirm_btn").prop("disabled", false);
					alert("입력한 이메일로 인증번호가 전송되었습니다.");
				}
				, error:function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})
        }

          //인증번호 확인 버튼 함수
          function checkEmailbtn(){
        	//이메일 인증을 받았는지
  			if(checkSuccess=="success"){
  				alert(checkSuccess);
  				alert("이미 완료되었습니다");
  				return;
  			}
  			//이메일이 입력되었는가 -> 잘먹고
			if($("#email").val()==""){
				alert("먼저 이메일을 입력해주세요");
				return;
			}
			//인증 안받고 누른 경우
			if(checkSuccess==""){
				alert("인증메일을 받고 진행해주세요")
				return;
			}
			//인증번호 입력했는지
			if($("#checkEmailnum").val().length==0){
				alert("인증번호를 입력해주세요");
				return;
			}
            //인증번호 일치하는 지 확인
            var compareNum = document.getElementById('checkEmailnum').value;
            console.log("compareNum:" + compareNum);
            console.log("checkSuccess:" + checkSuccess);
          
            if(checkSuccess==compareNum){
				alert("인증성공");
				checkSuccess="success";
				completeCheck=1;
				
				$("#identity_confirm_btn").prop("disabled", false);
				$("#comfirm_btn").prop("disabled", true);
				
				$("#resultEmailCheck").text("인증 성공");
			}else if(checkSuccess==""){
				alert("본인 인증 버튼을 눌러주세요");
			}else{
				alert("맞지 않는 번호입니다.")
				$('#checkEmailnum').val("");
			}

           
          }
          


        
      </script>
      

      <!--추가할 것-->
      <!--이메일 관련(인증), 닉네임 중복 확인 AJAX, Submit-->
      <!-- 0822 닉네임 중복 확인 AJAX만 처리 하면 끝 -->
      
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <!--  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
   <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <!-- fontawesome -->
        <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
  </body>
</html>