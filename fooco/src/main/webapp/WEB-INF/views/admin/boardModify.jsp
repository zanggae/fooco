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
    .inquiryBtn{background:rgb(253, 215, 129) !important; color:rgb(204, 51, 98) !important; height:50px !important; width:100px !important;}
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>게시물 수정</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item"><a href="boardEdit.do">게시물관리</a></li>
        <li class="breadcrumb-item active">게시물 수정</li>
      </ol>
      <br>
      <div class="container my-4" id="post">
        <div class="container my-3">
            <form class="form-group" action="modifyBoardAdmin.do" method="post" enctype="multipart/form-data">
            <input type="hidden" value="${board.imageNewName }" name="imageNewName">
          	<input type="hidden" value="${board.boardId }" name="boardId"> 
                <div class="row">
                    <div class="col-md-2"><label>카테고리</label></div>
                    <c:if test="${board.categoryNo eq 1}">
                    	<div class="col-md-4"><label class="form-control" style="width:80%">공지사항</label></div>
					</c:if>
					<c:if test="${board.categoryNo eq 2}">
                    	<div class="col-md-4"><label class="form-control" style="width:80%">FAQ</label></div>
					</c:if>	
					<div class="col-md-2"><label>수정일시</label></div>
                    <div class="col-md-4"><label class="form-control" style="width:100%">${board.boardUpdateDate }</label></div>				
                </div>
                <div class="row">                	                         
                	<div class="col-md-2"><label>게시물번호</label></div>                    
                    <div class="col-md-4"><label class="form-control" style="width:80%" >${board.boardId }</label></div>
					
                    <div class="col-md-2"><label>작성일시</label></div>
                    <div class="col-md-4"><label class="form-control" style="width:100%">${board.boardCreateDate }</label></div>
                
                </div>

                <div class="row mt-2">
                    <div class="col-md-2"><label>제목</label></div>
                    <div class="col-md-10"><input class="form-control" type="text" name="boardTitle"
                            style="width:100%; text-align:left;" value="${board.boardTitle }"></div>
                </div>
                
                <div class="mt-2">
                	<textarea class="form-control" name="boardContent"
                     	style="width:100%; height:300px; resize:none; text-align:left;">${board.boardContent }</textarea>
                </div>
                <div class="mx-3 mt-2">
	                <div class="row">
	                  <div class="col-md-2">
	                    <label style="background:none; color:rgb(204, 51, 98)">첨부 파일 :
	                  </div>
	                  <div class="col-md-10">
	                    <a href="${contextPath }//resources/nuploadFiles/${board.imageNewName}" download>
	                      ${board.imageOriginName }
	                      </a>
	                    
	                    <c:if test="${board.imageNewName eq null}"> 첨부파일이 없습니다.</c:if>
	                  </div>
	                 
	                </div>
               
	                <div class="row" id="fileDiv">
	                     <div class="col-md-2"><label for="find_file01">파일첨부</label></div>
	                     <div class="col-md-10 form-group form_file filecol" style="position: relative;">
	
	                         <input type="text" id="fileName" class="form-control form_point_color01"
	                             style="position: absolute; width:97%" readonly
	                             placeholder="파일첨부 클릭 또는 파일을 여기로 드래그하세요">
	                         <input type="file" class="form-control" id="find_file01"
	                             style="position: absolute; opacity: 0;" name="uploadFile"
	                             onchange="javascript: document.getElementById('fileName').value = this.value">
	                     </div>
	                 </div>     
                    
	                 <div class="row mt-3" style="height:100px; display:flex; padding:5px;" >
	                     <div class="col text-center">
	                         <button type="button" class="btn inquiryBtn"
	                              onclick="goInquiryEdit()">목록으로</button>							
	                         	<button class="btn inquiryBtn" id="answer">수정완료</button>	                         	
	                         	
	                     </div>
	                 </div>
										
                </div>
        </form>
        </div>
    </div>

    </div>
  </div>
  <script>
  	function goInquiryEdit(){
  		location.href="boardEdit.do";	
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