<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  
  <title>Hello, world!</title>
  <style>
    .table td {
      vertical-align: middle;
    }

    select {
      width: 200px;
      padding: .8em .5em;
      font-family: inherit;
      background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      border: 1px solid lightgray;
      border-radius: 3px;
    }

    select::-ms-expand {
      display: none;
    }
    
    label{
      width: 10rem;
      color: rgb(204, 51, 98);      
    }
    .inquiryBtn{background:black !important; color:white !important; height:50px !important; width:100px !important;}
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>1:1문의 답변하기</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="#">관리자페이지</a></li>
        <li class="breadcrumb-item"><a href="#">1:1 문의 관리</a></li>
        <li class="breadcrumb-item active">1:1문의 답변하기</li>
      </ol>
      <br>
      <div class="container my-4" id="post">
        <div class="container my-3">
            <form class="form-group">
                <div class="row">
                    <div class="col-md-2"><label>카테고리</label></div>
                    <div class="col-md-4"><label class="form-control" style="width:80%">${inquiry.inquiryName }</label></div>


                </div>
                <div class="row">
                    <div class="col-md-2"><label>작성자</label></div>
                    <div class="col-md-4"><label class="form-control" style="width:80%">${inquiry.nickname }</label></div>
                    <div class="col-md-2"><label>작성일시</label></div>
                    <div class="col-md-4"><label class="form-control" style="width:100%">${inquiry.boardCreateDate }</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2"><label>제목</label></div>
                    <div class="col-md-10"><label class="form-control"
                            style="width:100%; text-align:left;">${inquiry.boardTitle }</label></div>
                </div>
                
                <div class="mt-2">
                	<label class="form-control"
                     	style="width:100%; height:300px; resize:none; text-align:left;">${inquiry.boardContent }</label>
                </div>
                <div class="mx-3">
                  <div class="row">
                    <div class="col">
                      <span style="background:none; font-weight:bold; color:rgb(204, 51, 98)">첨부 파일 :
                      <a href="${contextPath }//resources/nuploadFiles/${notice.filePath}" download>
                        ${inquiry.imageNewName }
                        </a>
                      </span>
                      <c:if test="${inquiry.imageNewName eq null}"> 첨부파일이 없습니다.</c:if>
                    </div>
                   
                  </div>
                    <div class="row mt-5">                        
                        <div class="col-md-4"><label style="background:none; width: 12rem !important; text-align:left; font-weight:bold;">답변 일시 : ${inquiry.inquiryDate }</label>
                        </div>
                        
                    </div>
	                   <div class="row">
	                     <textarea class="form-control" id="inquiryContent"
	                     style="width:100%; height:300px; resize:none; text-align:left;" readonly="readonly">${inquiry.inquiryContent }</textarea>
	                   </div>
	                   
                    <c:if test="${inquiry.inquiryYN eq 'N'}">
	                   <div class="row" style="height:100px; display:flex; padding:5px;" >
	                       <div class="col text-center">
	                           <button type="button" class="btn inquiryBtn"
	                                onclick="goInquiryEdit()">목록으로</button>							
	                           	<button type="button" class="btn inquiryBtn" onclick="changeBtn()" id="answer">답변하기</button>
	                           	<button type="button" class="btn inquiryBtn" onclick="updateInquiry()" id="answer2" style="display: none" >답변완료</button>
	                           	
	                       </div>
	                   </div>
					</c:if>
					<c:if test="${inquiry.inquiryYN eq 'Y'}">
	                    <div class="row" style="height:100px; display:flex; padding:5px;" >
	                        <div class="col text-center">
	                            <button type="button" class="btn inquiryBtn"
	                                 onclick="goInquiryEdit()">목록으로</button>
	                            	<button type="button" class="btn inquiryBtn" onclick="changeBtn()" id="answer">답변수정</button>
	                            	<button type="button" class="btn inquiryBtn" onclick="updateInquiry()" id="answer2" style="display: none">수정완료</button>
	                        </div>
	                    </div>
					</c:if>
                </div>
        </div>
        </form>
    </div>

    </div>
  </div>
	<script>
		// 목록으로 클릭시 1:1문의 관리 페이지로 이동
		function goInquiryEdit(){
			location.href="inquiryEdit.do";
		}
		function updateInquiry(){
			var inquiryContent = $("#inquiryContent").val();
			var boardId = ${inquiry.boardId}
			if(inquiryContent ==""){
				alert("내용을 입력해 주세요");
				return;
			}
			if(confirm("답변 하시겠습니까?")){
			location.href="replyInquiry.do?inquiryContent="+inquiryContent+"&boardId="+boardId;				
			}else{
				return;
			}
		}
		function changeBtn(){
			$("#inquiryContent").prop("readonly",false);
			$("#answer").css("display","none");
			$("#answer2").css("display","inline");
			
			
			
		}
	</script>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
</body>

</html>