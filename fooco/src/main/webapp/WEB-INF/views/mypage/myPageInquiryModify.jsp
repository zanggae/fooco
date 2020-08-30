<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
   rel="stylesheet">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<script src="/resources/js/summernote-ko-KR.js"></script>
   <!-- fontawesome -->
   <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>

<!-- summernote script (밑부분에는 인식이 안되서 위에 올림) -->
<script>
$(document).ready(function() {
   //여기 아래 부분
   $('#summernote').summernote({
      
        height: 400,                     // 에디터 높이
        width : 550,                     // 에디터 넓이
        minHeight: 400,                      // 최소 높이
        maxHeight: 400,                      // 최대 높이
        focus: false,                       // 에디터 로딩후 포커스를 맞출지 여부
        lang: "ko-KR",                  // 한글 설정
        placeholder: '최대 2048자까지 쓸 수 있습니다',   //placeholder 설정
       codemirror: { // codemirror options
                  theme: 'monokai'
                 },
               
               
      toolbar: [
          // [groupName, [list of button]]
          ['fontname', ['fontname']],
          ['fontsize', ['fontsize']],
          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
          ['color', ['color']],
          ['table', ['table']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          ['insert',['picture','link','video']],
          ['view', ['fullscreen', 'help']]
        ],
      fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
      
   });
   
});



</script>


<script>


//서머노트에 text 쓰기
$('#summernote').summernote('insertText');


// 서머노트 쓰기 활성화
$('#summernote').summernote('enable');


// 서머노트 리셋
$('#summernote').summernote('reset');


// 마지막으로 한 행동 취소 ( 뒤로가기 )
$('#summernote').summernote('undo');
// 앞으로가기
$('#summernote').summernote('redo');


</script>


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
</head>
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
                        <option value="1">음식점 문의</option>
                        <option value="2">리뷰 문의</option>
                        <option value="3">테마 문의</option>
                        <option value="4">기타 문의</option>
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
  					
  					<!-- summernote추가 위해 변경 -->
                  <div class="row" style="margin-bottom: 0.7rem;">
                    <div class="col-4">
                      <p class="inquiry_font">내용</p>
                    </div>
                    <br><br>
                  </div>
                   
                   <textarea id="summernote" name="summernoteContent" class="form-control" readonly>
                   </textarea>
                  

                

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