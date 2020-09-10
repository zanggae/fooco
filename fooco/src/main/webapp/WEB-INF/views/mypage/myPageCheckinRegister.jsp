<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
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
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content">
					<div class="main_content_div shadow-sm">
						<div class="row">
              <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F618; 나의 활동 - 체크인 등록</p>
            </div>
					
            <div class="row shadow-sm" style="background-color: white; border-radius: 0.5rem; padding-top: 1rem; padding-bottom: 1rem;">
              <div class="col-1"></div>
              <div class="col-10">
                <form action="myPageCheckinRegister.do" method="post" enctype="Multipart/form-data">
                  <div style="margin-left: 3rem;">
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">방문 식당 검색</label>
                      <input type="text" id="restitle" style="margin-left: 1.1rem;">
                      <!-- checkinId를 체크인 객체에 넘겨주기 위해 -->
                      <input type="hidden" id="memberId" name="memberId" value="${loginUser.memberId }">
                     <!-- resId를 체크인 객체에 넘겨주기 위해 -->
                      <input type="hidden" id="resId" name="resId">
                      <!-- Button trigger modal -->
                      <button type="button" id="searchbtn" class="btn btn-secondary btn-sm" data-toggle="modal"
                        data-target="#exampleModal">
                        		조회
                      </button>
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">방문 식당 이름</label>
                      <input type="text" id="resName" name="resName" style="margin-left: 1.1rem;">
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <div class="col-2.5" style="padding: 0;">
                        <label class="checkin_label">방문 식당 이미지</label>
                      </div>
                     
                      <div class="col-9" style="padding: 0;">
                        <img id="resImage"  style="width: 12rem; height: 9rem; margin:0rem;">
                        <input type="hidden" id="resImageName" name="resImageName">
                      </div>
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">날짜</label>
                      <input type="date" name="checkinVisitDate">
                    </div>
    
                    <div class="row" style="margin-bottom: 1.3rem;">
                      <label class="checkin_label">내용</label>
                      <textarea cols="50" rows="10" style="resize: none;" name="checkinContent"></textarea>
                    </div>
    				
    				<div class="row">
    				<label class="checkin_label" style="font-size:1rem">※사진은 최대 3개를 첨부할 수 있습니다.</label>
    				</div>
    				
    				
                    <div class="row" style="margin-bottom:0.5rem;">
                      <label class="checkin_label">사진첨부1</label>
                      <input type="file" id="addpoto1" name="file" accept="image/gif,image/jpeg,image/png" style="width:13rem;">
                    </div>
    
                    <div class="row" id="addpotoarea2" style="display:none; margin-bottom:0.5rem;">
                      <label class="checkin_label">사진첨부2</label>
                      <input type="file" id="addpoto2" name="file"  accept="image/gif,image/jpeg,image/png" style="width:13rem;">
                    </div>
    
                    <div class="row" id="addpotoarea3" style="margin-bottom: 2rem; display:none;">
                      <label class="checkin_label">사진첨부3</label>
                      <input type="file" id="addpoto3" name="file" accept="image/gif,image/jpeg,image/png" style="width:13rem;">
                    </div>
                  
                  </div>
                    <div class="row">
                      <div class="col" align="center">
                        <input type="submit" class="btn btn-primary btn-sm" value="완료">&nbsp;
                        <button type="button" class="btn btn-secondary btn-sm" onclick="checkinCancle();">취소</button>
                      </div>
                    </div>
                  </form>
    
    
    
    				
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
                            <table class="table-hover table" id="tb">
	                            <tbody align="center">
									
								</tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
    
              </div>
              <div class="col-1"></div>
            </div>


					
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>


<script>
// 음식점 조회 ajax
	$("#searchbtn").click(function(){
		var restitle = $("#restitle").val();

		$.ajax({
			url:"selectRes.do",
			dataType:"json",
			data:{restitle:restitle},
			success:function(data){
				$tableBody = $("#tb tbody");
				$tableBody.html("");	// tbody 부분 리셋
				
				for(var i in data){
					var resImageName = {"width":"10rem","height":"7rem"};
					var resNameStyle = {"font-family":"medium","margin":"0rem"};
					var resAddressStyle = {"font-family":"medium","margin":"0rem","word-break":"break-all","font-size":"0.7rem"};
					var $tr = $("<tr>").attr("class","trtag");
					var $td = $("<td>");
					var $resName = $("<p>").text(data[i].resName).css(resNameStyle).attr("class","resName");
					var $resAddress = $("<p>").text(data[i].resAddress).css(resAddressStyle);
					var $resImageName = $("<img>").attr("src","/fooco/resources/restaurantImage/"+data[i].resImageName).css(resImageName).text(data[i].resImageName);
					var $resId = $("<input>").attr("type","hidden").attr("value",data[i].resId).text(data[i].resId);
					
					$td.append($resImageName);
					$td.append($resName);
					$td.append($resAddress);
					$td.append($resId);
					
					$tr.append($td);
					$tableBody.append($tr);
							
				}	
				
				
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		})
	})


</script>


<!-- 조회된 음식점에서 tr태그 클릭 시 서블릿 걸쳐서 해당 값을 뿌려주기-->
<script>
$(document).on("click",".trtag",function(){
		
	var tr = $(this).children(); // <td>
	var td = tr.children('.resName'); // <td> 자손 태그 class명이 resName인 태그
	var img = tr.children('img'); // <td> 자손 img 태그
	var input = tr.children('input'); // <td> 자손 input 태그
	var resNameText = td.text(); // <td> 자손 태그 class명이 resName 태그의 텍스트값
	var resImageName = img.text(); // <td> 자손 img 태그의 텍스트값
	var resId = input.text(); // <td> 자손 input 태그의 텍스트값
	
	var resNames = $("#resName").attr("value",resNameText); // 방문 식당 이름 input태그 value값을 검색한 음식점text값으로 초기화
	$("#resName").html(resNameText); // 방문 식당 이름 노출시킴
	var resImageNames = $("#resImage").attr("src","/fooco/resources/restaurantImage/"+resImageName); // 방문 식당 이미지에 이미지 태그 src를 변경시킴
	var resImagehidden = $("#resImageName").attr("value",resImageName); // 체크인 객체에 담길 이미지 값
	var resIdhidden = $("#resId").attr("value",resId); // 체크인 객체에 담길 식당 번호
	
	$('#exampleModal').modal("hide"); // 음식점 선택 완료 후 모달 창 닫게하기
})
</script>

<script>
$(function(){
	$("#addpoto1").change(function(){
		document.getElementById("addpotoarea2").style.display="flex";
		if($("#addpoto1").val() == ''){
			document.getElementById("addpotoarea2").style.display="none";
			document.getElementById("addpotoarea3").style.display="none";
		}
	})
})


$(function(){
	$("#addpoto2").change(function(){
		document.getElementById("addpotoarea3").style.display="flex";
		if($("#addpoto2").val() == ''){
			document.getElementById("addpotoarea3").style.display="none";
		}
	})
})

function checkinCancle(){
	location.href="myPageCheckin.do?"; 
}

// 이미지 파일 꼼꼼하게 제약조건
/* function fileCheck(obj){
	pathpoint=obj.value.lastIndexOf('.');
	filepoint=obj.value.substring(pathpoint+1,obj.length);
	filetype=filepoint.toLowerCase();
	if(filetype=='jpg'||filetype=='gif'||filetype=='jpeg'||filetype=='png'||filetype=='bmp'){
		// 정상적인 이미지 확장자일 경우
	}else{
		alert("이미지 파일만 선택할 수 있습니다...");
		parentObj=obj.parentNode;
		node=parentObj.replaceChild(obj.cloneNode(true),obj);
		return false;
	}
	if(filetype=='bmp'){
		upload=confirm('BMP파일은 웹상에서 사용하기엔 적절한 이미지 포맷이 아닙니다.\n 그래도 계속 하시겠습니까?');
		if(!upload) return false;
	}
	
} */

</script>




=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<!DOCTYPE html>
<html>
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
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content">
					<div class="main_content_div shadow-sm">
						<div class="row">
              <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F618; 나의 활동 - 체크인 등록</p>
            </div>
					
            <div class="row shadow-sm" style="background-color: white; border-radius: 0.5rem; padding-top: 1rem; padding-bottom: 1rem;">
              <div class="col-1"></div>
              <div class="col-10">
                <form action="myPageCheckinRegister.do" method="post" enctype="Multipart/form-data">
                  <div style="margin-left: 3rem;">
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">방문 식당 검색</label>
                      <input type="text" id="restitle" style="margin-left: 1.1rem;">
                      <!-- checkinId를 체크인 객체에 넘겨주기 위해 -->
                      <input type="hidden" id="memberId" name="memberId" value="${loginUser.memberId }">
                     <!-- resId를 체크인 객체에 넘겨주기 위해 -->
                      <input type="hidden" id="resId" name="resId">
                      <!-- Button trigger modal -->
                      <button type="button" id="searchbtn" class="btn btn-secondary btn-sm" data-toggle="modal"
                        data-target="#exampleModal">
                        		조회
                      </button>
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">방문 식당 이름</label>
                      <input type="text" id="resName" name="resName" style="margin-left: 1.1rem;">
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <div class="col-2.5" style="padding: 0;">
                        <label class="checkin_label">방문 식당 이미지</label>
                      </div>
                     
                      <div class="col-9" style="padding: 0;">
                        <img id="resImage"  style="width: 12rem; height: 9rem; margin:0rem;">
                        <input type="hidden" id="resImageName" name="resImageName">
                      </div>
                    </div>
    
                    <div class="row" style="margin-bottom: 1rem;">
                      <label class="checkin_label">날짜</label>
                      <input type="date" name="checkinVisitDate">
                    </div>
    
                    <div class="row" style="margin-bottom: 1.3rem;">
                      <label class="checkin_label">내용</label>
                      <textarea cols="50" rows="10" style="resize: none;" name="checkinContent"></textarea>
                    </div>
    				
    				<div class="row">
    				<label class="checkin_label" style="font-size:1rem">※사진은 최대 3개를 첨부할 수 있습니다.</label>
    				</div>
    				
    				
                    <div class="row" style="margin-bottom:0.5rem;">
                      <label class="checkin_label">사진첨부1</label>
                      <input type="file" id="addpoto1" name="file" accept="image/gif,image/jpeg,image/png" style="width:13rem;">
                    </div>
    
                    <div class="row" id="addpotoarea2" style="display:none; margin-bottom:0.5rem;">
                      <label class="checkin_label">사진첨부2</label>
                      <input type="file" id="addpoto2" name="file"  accept="image/gif,image/jpeg,image/png" style="width:13rem;">
                    </div>
    
                    <div class="row" id="addpotoarea3" style="margin-bottom: 2rem; display:none;">
                      <label class="checkin_label">사진첨부3</label>
                      <input type="file" id="addpoto3" name="file" accept="image/gif,image/jpeg,image/png" style="width:13rem;">
                    </div>
                  
                  </div>
                    <div class="row">
                      <div class="col" align="center">
                        <input type="submit" class="btn btn-primary btn-sm" value="완료">&nbsp;
                        <button type="button" class="btn btn-secondary btn-sm" onclick="checkinCancle();">취소</button>
                      </div>
                    </div>
                  </form>
    
    
    
    				
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
                            <table class="table-hover table" id="tb">
	                            <tbody align="center">
									
								</tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
    
              </div>
              <div class="col-1"></div>
            </div>


					
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>


<script>
// 음식점 조회 ajax
	$("#searchbtn").click(function(){
		var restitle = $("#restitle").val();

		$.ajax({
			url:"selectRes.do",
			dataType:"json",
			data:{restitle:restitle},
			success:function(data){
				$tableBody = $("#tb tbody");
				$tableBody.html("");	// tbody 부분 리셋
				
				for(var i in data){
					var resImageName = {"width":"10rem","height":"7rem"};
					var resNameStyle = {"font-family":"medium","margin":"0rem"};
					var resAddressStyle = {"font-family":"medium","margin":"0rem","word-break":"break-all","font-size":"0.7rem"};
					var $tr = $("<tr>").attr("class","trtag");
					var $td = $("<td>");
					var $resName = $("<p>").text(data[i].resName).css(resNameStyle).attr("class","resName");
					var $resAddress = $("<p>").text(data[i].resAddress).css(resAddressStyle);
					var $resImageName = $("<img>").attr("src","/fooco/resources/restaurantImage/"+data[i].resImageName).css(resImageName).text(data[i].resImageName);
					var $resId = $("<input>").attr("type","hidden").attr("value",data[i].resId).text(data[i].resId);
					
					$td.append($resImageName);
					$td.append($resName);
					$td.append($resAddress);
					$td.append($resId);
					
					$tr.append($td);
					$tableBody.append($tr);
							
				}	
				
				
			},
			error:function(request, status, errorData){
				swal("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		})
	})


</script>


<!-- 조회된 음식점에서 tr태그 클릭 시 서블릿 걸쳐서 해당 값을 뿌려주기-->
<script>
$(document).on("click",".trtag",function(){
		
	var tr = $(this).children(); // <td>
	var td = tr.children('.resName'); // <td> 자손 태그 class명이 resName인 태그
	var img = tr.children('img'); // <td> 자손 img 태그
	var input = tr.children('input'); // <td> 자손 input 태그
	var resNameText = td.text(); // <td> 자손 태그 class명이 resName 태그의 텍스트값
	var resImageName = img.text(); // <td> 자손 img 태그의 텍스트값
	var resId = input.text(); // <td> 자손 input 태그의 텍스트값
	
	var resNames = $("#resName").attr("value",resNameText); // 방문 식당 이름 input태그 value값을 검색한 음식점text값으로 초기화
	$("#resName").html(resNameText); // 방문 식당 이름 노출시킴
	var resImageNames = $("#resImage").attr("src","/fooco/resources/restaurantImage/"+resImageName); // 방문 식당 이미지에 이미지 태그 src를 변경시킴
	var resImagehidden = $("#resImageName").attr("value",resImageName); // 체크인 객체에 담길 이미지 값
	var resIdhidden = $("#resId").attr("value",resId); // 체크인 객체에 담길 식당 번호
	
	$('#exampleModal').modal("hide"); // 음식점 선택 완료 후 모달 창 닫게하기
})
</script>

<script>
$(function(){
	$("#addpoto1").change(function(){
		document.getElementById("addpotoarea2").style.display="flex";
		if($("#addpoto1").val() == ''){
			document.getElementById("addpotoarea2").style.display="none";
			document.getElementById("addpotoarea3").style.display="none";
		}
	})
})


$(function(){
	$("#addpoto2").change(function(){
		document.getElementById("addpotoarea3").style.display="flex";
		if($("#addpoto2").val() == ''){
			document.getElementById("addpotoarea3").style.display="none";
		}
	})
})

function checkinCancle(){
	location.href="myPageCheckin.do?"; 
}

// 이미지 파일 꼼꼼하게 제약조건
/* function fileCheck(obj){
	pathpoint=obj.value.lastIndexOf('.');
	filepoint=obj.value.substring(pathpoint+1,obj.length);
	filetype=filepoint.toLowerCase();
	if(filetype=='jpg'||filetype=='gif'||filetype=='jpeg'||filetype=='png'||filetype=='bmp'){
		// 정상적인 이미지 확장자일 경우
	}else{
		alert("이미지 파일만 선택할 수 있습니다...");
		parentObj=obj.parentNode;
		node=parentObj.replaceChild(obj.cloneNode(true),obj);
		return false;
	}
	if(filetype=='bmp'){
		upload=confirm('BMP파일은 웹상에서 사용하기엔 적절한 이미지 포맷이 아닙니다.\n 그래도 계속 하시겠습니까?');
		if(!upload) return false;
	}
	
} */

</script>




>>>>>>> refs/remotes/origin/master
</html>