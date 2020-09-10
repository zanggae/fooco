<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="ko">

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


<link
   href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
   rel="stylesheet">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<script src="/resources/js/summernote-ko-KR.js"></script>


<!-- summernote script (밑부분에는 인식이 안되서 위에 올림) -->
<script>
$(document).ready(function() {
   //여기 아래 부분
   $('#summernote').summernote({
      
        height: 400,                     // 에디터 높이
        width : 400,                     // 에디터 넓이
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
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F64B;
								1:1문의</p>
						</div>
						<div class="inquiry_div shadow-sm">

							<div class="col">
								<form action="InquiryModifyBtn.do" method="post" enctype="Multipart/form-data" id="modifybtns">
									<input type="hidden" name="boardId" value="${boardInfo.boardId }">
									<div class="row" style="margin-bottom: 0.7rem;">
										<div class="col-3" align="center">
											<p class="inquiry_font">문의 유형</p>
										</div>
										<div class="col-9" id="select_area1">
											<input class="form-control" style="width: 25rem;" type="text"
												value="${boardInfo.inquiryName }" readonly>
										</div>
										<!-- 수정하기 버튼 누를 시 나오는 내용 -->
										<div class="col-9" id="select_area2" style="display: none;">
											<select class="form-control" style="width: 25rem;" id="inquiryCode" name="inquiryCode">
												<option selected value="">선택</option>
												<option value="1">음식점 문의</option>
												<option value="2">리뷰 문의</option>
												<option value="3">테마 문의</option>
												<option value="4">기타 문의</option>
											</select>
										</div>
									</div>

									<div class="row" style="margin-bottom: 0.7rem;">
										<div class="col-3" align="center">
											<p class="inquiry_font">제목</p>
										</div>
										<div class="col-9">
											<input type="text" class="form-control" id="boardTitle"  name="boardTitle" value="${boardInfo.boardTitle }"
												placeholder="제목을 입력하세요" style="width: 25rem;" readonly>
										</div>
									</div>

									<!-- summernote추가 위해 변경 -->
									<div class="row" style="margin-bottom: 0.7rem;">
										<div class="col-3" align="center">
											<p class="inquiry_font">내용</p>
										</div>
										<div class="col-9">
										<textarea id="summernote" name="summerNoteContent"
										class="form-control">${boardInfo.summerNoteContent }</textarea>
										</div>
									</div>

									<div class="row" style="margin-top: 2rem;">
										<div class="col" align="center" id="modifybtn">
											<button type="button" class="btn btn-primary btn-sm"
												onclick="change();">수정하기</button>
											&nbsp;
											<c:url var="udateboardStatus" value="updateBoardStatus.do">
												<c:param name="boardId" value="${boardInfo.boardId }"></c:param>
											</c:url>
											<a href="${udateboardStatus }"><button type="button" class="btn btn-secondary btn-sm">삭제하기</button></a>
										</div>
										<div class="col" id="modifycompletebtn" align="center" style="display: none;">
											<button type="button" class="btn btn-primary btn-sm" onclick="validate();">수정완료</button>&nbsp;
											
											
											<button type="button" class="btn btn-secondary btn-sm" onclick="canclebtn();">취소</button>
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
    $("#boardTitle").prop("readonly",false)
    
    $("#select_area1").css("display","none");
    $("#select_area2").css("display","block");
    $("#img_area").css("display","flex");
    $("#modifycompletebtn").css("display","block");
    $("#modifybtn").css("display","none");
  }
</script>

<script>
function canclebtn(){
	location.href="myPageInquiry.do"
}

function validate(){
	
	if($("#inquiryCode").val() == "")
		{
			alert("문의 유형을 선택하세요.")
			return;
		}
	if($("#boardTitle").val() == "")
		{
			alert("제목을 입력하세요.");
			return;
		}
	if($("#summernote").val() == "")
		{
			alert("내용을 입력하세요.");
			return;
		}
	else{
		$("#modifybtns").submit();
	}
	
}


</script>




=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="ko">

<head>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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


<link
   href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
   rel="stylesheet">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<script src="/resources/js/summernote-ko-KR.js"></script>


<!-- summernote script (밑부분에는 인식이 안되서 위에 올림) -->
<script>
$(document).ready(function() {
   //여기 아래 부분
   $('#summernote').summernote({
      
        height: 400,                     // 에디터 높이
        width : 400,                     // 에디터 넓이
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
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F64B;
								1:1문의</p>
						</div>
						<div class="inquiry_div shadow-sm">

							<div class="col">
								<form action="InquiryModifyBtn.do" method="post" enctype="Multipart/form-data" id="modifybtns">
									<input type="hidden" name="boardId" value="${boardInfo.boardId }">
									<div class="row" style="margin-bottom: 0.7rem;">
										<div class="col-3" align="center">
											<p class="inquiry_font">문의 유형</p>
										</div>
										<div class="col-9" id="select_area1">
											<input class="form-control" style="width: 25rem;" type="text"
												value="${boardInfo.inquiryName }" readonly>
										</div>
										<!-- 수정하기 버튼 누를 시 나오는 내용 -->
										<div class="col-9" id="select_area2" style="display: none;">
											<select class="form-control" style="width: 25rem;" id="inquiryCode" name="inquiryCode">
												<option selected value="">선택</option>
												<option value="1">음식점 문의</option>
												<option value="2">리뷰 문의</option>
												<option value="3">테마 문의</option>
												<option value="4">기타 문의</option>
											</select>
										</div>
									</div>

									<div class="row" style="margin-bottom: 0.7rem;">
										<div class="col-3" align="center">
											<p class="inquiry_font">제목</p>
										</div>
										<div class="col-9">
											<input type="text" class="form-control" id="boardTitle"  name="boardTitle" value="${boardInfo.boardTitle }"
												placeholder="제목을 입력하세요" style="width: 25rem;" readonly>
										</div>
									</div>

									<!-- summernote추가 위해 변경 -->
									<div class="row" style="margin-bottom: 0.7rem;">
										<div class="col-3" align="center">
											<p class="inquiry_font">내용</p>
										</div>
										<div class="col-9">
										<textarea id="summernote" name="summerNoteContent"
										class="form-control">${boardInfo.summerNoteContent }</textarea>
										</div>
									</div>

									<div class="row" style="margin-top: 2rem;">
										<div class="col" align="center" id="modifybtn">
											<button type="button" class="btn btn-primary btn-sm"
												onclick="change();">수정하기</button>
											&nbsp;
											<c:url var="udateboardStatus" value="updateBoardStatus.do">
												<c:param name="boardId" value="${boardInfo.boardId }"></c:param>
											</c:url>
											<a href="${udateboardStatus }"><button type="button" class="btn btn-secondary btn-sm">삭제하기</button></a>
										</div>
										<div class="col" id="modifycompletebtn" align="center" style="display: none;">
											<button type="button" class="btn btn-primary btn-sm" onclick="validate();">수정완료</button>&nbsp;
											
											
											<button type="button" class="btn btn-secondary btn-sm" onclick="canclebtn();">취소</button>
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
    $("#boardTitle").prop("readonly",false)
    
    $("#select_area1").css("display","none");
    $("#select_area2").css("display","block");
    $("#img_area").css("display","flex");
    $("#modifycompletebtn").css("display","block");
    $("#modifybtn").css("display","none");
  }
</script>

<script>
function canclebtn(){
	location.href="myPageInquiry.do"
}

function validate(){
	
	if($("#inquiryCode").val() == "")
		{
			swal("문의 유형을 선택하세요.")
			return;
		}
	if($("#boardTitle").val() == "")
		{
			swal("제목을 입력하세요.");
			return;
		}
	if($("#summernote").val() == "")
		{
			swal("내용을 입력하세요.");
			return;
		}
	else{
		$("#modifybtns").submit();
	}
	
}


</script>




>>>>>>> refs/remotes/origin/master
</html>