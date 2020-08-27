<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

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


<title>Insert title here</title>
</head>
<style>

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

  /* 문의 스타일 */
  .inquiry_font{margin: 0rem; font-family: 'medium'; font-size: 1.1rem; vertical-align: middle; padding: 0.5rem;}
  .inquiry_div{background-color: white; border-radius: 0.5rem; padding-top :2rem; padding-bottom: 2rem;}

</style>

<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<!-- 왼쪽 메뉴바 -->
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content" style="padding:0;">
					<div class="main_content_div shadow-sm">
						            <div class="row">
              <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F64B; 1:1문의</p>
            </div>
            <div class="inquiry_div shadow-sm">

              <div class="col" align="center">
                <form action="">
                  <div class="row" style="margin-bottom: 0.7rem;">
                    <div class="col-4">
                      <p class="inquiry_font">문의 유형</p>
                    </div>
                    <div class="col-6" id="select_area1">
                      <input class="form-control" style="width: 20rem;" type="text" value="음식점 문의" readonly>
                    </div>
                    <!-- 수정하기 버튼 누를 시 나오는 내용 -->
                    <div class="col-6" id="select_area2" style="display: none;">
                      <select class="form-control" style="width: 20rem;">
                        <option selected value="">선택</option>
                        <option value="res">음식점 문의</option>
                        <option value="review">리뷰 문의</option>
                        <option value="theme">테마 문의</option>
                        <option value="etc">기타 문의</option>
                      </select>
                    </div>
                  </div>
  
                  <div class="row" style="margin-bottom: 0.7rem;">
                    <div class="col-4">
                      <p class="inquiry_font">제목</p>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요"
                      style="width: 20rem;" readonly>
                    </div>
                  </div>
  
                  <div class="row" style="margin-bottom: 0.7rem;">
                    <div class="col-4">
                      <p class="inquiry_font">내용</p>
                    </div>
                    <div class="col-6">
                      <textarea id="summernote" name="editordata" class="form-control" rows="15"
                        style="width: 20rem; box-shadow: none !important; resize:none" readonly>
                      </textarea>
                    </div>
                  </div>

                  <!-- 수정하기 버튼 누를 시 나오는 내용 -->
                  <div class="row" id="img_area" style="margin-bottom: 0.7rem; display: none;">
                    <div class="col-4">
                      <p class="inquiry_font">이미지 첨부</p>
                    </div>
                    
                    <div class="col-6" style="position: relative;">
                      <input type="text" id="inquiryFile" class="form-control form_point_color01"
                        style="position: absolute; width: 20rem; font-size: 0.9rem;" readonly
                        placeholder="첨부할 이미지 파일을 클릭 또는 드래그하세요">
                    <input type="file" name="inquiryFile" class="form-control" id="inquiryFile"
                        style="position:absolute; opacity: 0;"
                        onchange="javascript: document.getElementById('inquiryFile').value = this.value">
                    </div>
                  </div>

                  <div class="row" style="margin-top: 2rem;">
                    <div class="col" align="center" id="modifybtn">
                      <button type="button" class="btn btn-primary btn-sm" onclick="change();">수정하기</button>&nbsp;
                      <button type="button" class="btn btn-secondary btn-sm">삭제하기</button>
                    </div>
                    <div class="col" id="modifycompletebtn" align="center" style="display: none;">
                      <input type="submit" class="btn btn-primary btn-sm" value="수정완료">&nbsp;
                      <button type="button" class="btn btn-secondary btn-sm">취소</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>

					

						

					
					</div>
				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>

<!-- 수정버튼 클릭 시 실행하는 script -->
<script>
  function change(){
    $("#title").prop("readonly",false)
    $("#summernote").prop("readonly",false)
    
    $("#select_area1").css("display","none");
    $("#select_area2").css("display","block");
    $("#img_area").css("display","flex");
    $("#modifycompletebtn").css("display","block");
    $("#modifybtn").css("display","none");
  }
</script>




</html>