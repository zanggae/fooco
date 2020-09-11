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
      color: rgb(204, 51, 98);      
    }
    .inquiryBtn{background:black !important; color:white !important; height:50px !important; width:100px !important;}
    .filecol{padding:0 !important;}
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>게시판 등록하기</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item"><a href="boardEdit.do">게시판 관리</a></li>
        <li class="breadcrumb-item active">게시판 등록하기</li>
      </ol>
      <br>
      <div class="container my-4" id="post">
        <div class="container my-3">
            <form class="form-group" action="registrationBoard.do" method="post" enctype="multipart/form-data" id="bform">
                <div class="row">
                    <div class="col-md-2"><label>카테고리</label></div>
                    <div class="col-md-4">
                    <select name="categoryNo" class="form-control" id="categoryNo" style="width:80%" onchange="change(this)">
                    	<option value="0" selected="selected">선택</option>
                    	<option value="1">공지사항</option>
                    	<option value="2">FAQ</option>
                    </select>
                    </div>
                </div>
                <script>
                	function change(result){
                		$("#fileDiv").css("visibility","visible");
                		if($(result).val()==2){
                			$("#fileDiv").css("visibility","hidden");
                		}
                	}
                </script>
                <div class="row mt-2">
                    <div class="col-md-2"><label>제목</label></div>
                    <div class="col-md-10"><input type="text" class="form-control"
                            style="width:100%; text-align:left;" name="boardTitle"></div>
                </div>
                
                <div class="mt-2">
                	<textarea class="form-control"
                     	style="width:100%; height:300px; resize:none; text-align:left;" name="boardContent"></textarea>
                </div>
                
                <div class="row mt-2 filerow" id="fileDiv">
                     <div class="col-md-2 text-center"><label for="find_file01">파일첨부</label></div>
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
                         <button type="button" onclick="bSubmit()" class="btn inquiryBtn">작성완료</button>                         	
                         <script>
                         	function bSubmit(){
                         		if($("#categoryNo").val()==0){
                         			alert("카테고리를 선택하세요.")
                         		}else{
                         			$("#bform").submit();                         			
                         		}
                         			
                         	}
                         </script>
                     </div>
                 </div>
        </form>
        </div>
    </div>

    </div>
  </div>
	
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