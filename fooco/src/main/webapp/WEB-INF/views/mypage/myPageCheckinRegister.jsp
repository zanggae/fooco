<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
@font-face {
	font-family: 'heavy';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff')
		format('woff');
	font-weight: bold;
	font-style: normal;
}

@font-face {
	font-family: 'bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'light';
}

/* 페이지 전체 */
.mypage_container {
	padding: 0 !important;
	margin-top: 3rem !important;
}

.myPage-row {
	margin: 0;
}

/* 가운데 내용 */
.main_content {
	margin: 0;
	padding: 0;
}

.main_content_div {
	background: lightgray;
	border-radius: 0.5rem;
	padding: 1rem;
}

.main_content .row {
	margin: 0;
}

  /* 체크인 등록 */
  .checkin_label{font-family: 'medium'; margin-right: 0.5rem; font-size: 1.2rem;}
</style>

<body>
	<header>
		<jsp:include page="../common/subMenubar.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content">
					<div class="main_content_div shadow-sm">
						<div class="row" style="margin-bottom: 1rem;">
              <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F618; 나의 활동 - 체크인 수정</p>
            </div>
					
            <div class="row">
              <div class="col-1">

              </div>
              <div class="col-10">
                <form action="">
                  <div style="margin-left: 3rem;">
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">방문 식당 이미지</label>
                      <input type="text" name="visitRestaurant">
                      <!-- Button trigger modal -->
                      <button type="button" class="btn btn-secondary btn-sm" data-toggle="modal"
                        data-target="#exampleModal">
                        조회
                      </button>
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">방문 식당 이름</label>
                      <input type="text" name="visitRestaurantName" style="margin-left: 1.1rem;">
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <div class="col-2.5" style="padding: 0;">
                        <label class="checkin_label">방문 식당 이미지</label>
                      </div>
                      
                      <!-- 조회를 하기 전 이미지 값이 없을 때   -->
                      <div class="col-9" style="padding: 0; display:none;">
                      </div>
                      <!-- 조회 버튼으로 식당 클릭 시 이미지 값이 null이 아니면 display:block 되게만들기  -->
                      <div class="col-9" style="padding: 0;">
                        <img src="img/갈비찜.jpg" style="width: 12rem; height: 9rem; margin:0rem;">
                      </div>
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">날짜</label>
                      <input type="date" name="visitDate">
                    </div>
    
                    <div class="row" style="margin-bottom: 1.3rem;">
                      <label class="checkin_label">내용</label>
                      <textarea cols="50" rows="10" style="resize: none;"></textarea>
                    </div>
    
                    <div class="row">
                      <label class="checkin_label">사진첨부1</label>
                      <input type="file" id="addpoto1" style="display: none;">
                      <i class="fas fa-plus-square" onclick="addpoto1();" style="font-size: 1.5rem;"></i>
                      <i class="fas fa-minus-square" style="font-size: 1.5rem;"></i>
                    </div>
    
                    <div class="row">
                      <label class="checkin_label">사진첨부2</label>
                      <input type="file" id="addpoto2" style="display: none;">
                      <i class="fas fa-plus-square" onclick="addpoto2();" style="font-size: 1.5rem;"></i>
                      <i class="fas fa-minus-square" style="font-size: 1.5rem;"></i>
                    </div>
    
                    <div class="row" style="margin-bottom: 3rem;">
                      <label class="checkin_label">사진첨부3</label>
                      <input type="file" id="addpoto3" style="display: none;">
                      <i class="fas fa-plus-square" onclick="addpoto3();" style="font-size: 1.5rem;"></i>
                      <i class="fas fa-minus-square" style="font-size: 1.5rem;"></i>
                    </div>
                  
                  </div>
                    <div class="row">
                      <div class="col" align="center">
                        <input type="submit" class="btn btn-primary btn-sm" value="완료">&nbsp;
                        <button type="button" class="btn btn-secondary btn-sm">취소</button>
                      </div>
                    </div>
                  
    
    
    
    
                  <!-- Modal -->
                  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">조회</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
    
                        <div class="modal-body">
                          <div class="container-fluid" style="overflow-x: auto; height: 30rem;">
                            <table class="table-hover table">
                              <tr>
                                <td align="center">
                                  <img src="img/갈비찜.jpg" style="width: 10rem; height: 7rem;">
                                  <p style="font-family:'medium'; margin: 0rem;">경남 갈비</p>
                                  <p style="font-family:'medium'; margin: 0rem; word-break: break-all; font-size: 0.7rem;">인천광역시 남동구 서창동 661-3</p>
                                </td>
                              </tr>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
    
                </form>
              </div>
              <div class="col-1">
                
              </div>
            </div>
						

					
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>


<script>
  function addpoto1() {
    $(function () {
      $("#addpoto1").click();
    })
  }

  function addpoto2() {
    $(function () {
      $("#addpoto2").click();
    })
  }

  function addpoto3() {
    $(function () {
      $("#addpoto3").click();
    })
  }

</script>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/4b6b63d8f6.js"
	crossorigin="anonymous"></script>


</html>