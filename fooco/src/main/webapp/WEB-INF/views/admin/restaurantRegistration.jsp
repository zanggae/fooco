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
    label{
      font-weight: bold;
    }
    table tr td{
      padding-bottom: 1rem;
    }

    /* 사진이미지 */
    #imgtest img{
        margin-left: 25px;
    }
    /* 사진이미지 밑 글씨 */
    #imgtest p{
        margin-top: 5px;
        margin-left: 75px;
    }
    /* input태그 css */
    input{
        border-radius: 3px;
        border: 0.5px solid black;
    }
    /* 노란색 테두리 */
    #background_{
        border:8px solid  rgb(253, 215, 129);
        border-radius: 30px;
        background: white;
    }
    /* 사진테두리 */
    #img_background{
        margin-left: 30px;
        padding-top: 10px;
        padding-bottom: 10px;
        margin-top: 30px;
        width: 25%;
        border: 1px solid black;
        border-radius: 5px;
    }
    /* 등록버튼 */
    #postcodify_search_button{
        border: 1px solid rgb(204, 51, 98);
        background:rgb(204, 51, 98);
        border-radius: 3px;
        color: white;
    }
    #postcodify_search_button:hover{
        background: rgb(253, 215, 129);
        color:rgb(204, 51, 98);
    }
    /* 아이콘 */
    .fa-sticky-note{
        font-size: 40px;
        margin-left: 55px;
        position: absolute;
    }
    /* 메뉴 + 하는 버튼 */
    #plus_btn{
        border: none;
        background:rgb(204, 51, 98);
        color: white;
        border-radius: 3px;
    }
    .menu_2{
        display: none;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%; padding-left: 5rem;">
      <i class="far fa-sticky-note"></i><h2 style="font-family:'bold'; margin-left: 100px; margin-bottom: 20px;">음식점 수정</h2>      
      <br>
      <div class="container" style="padding:0;">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col">
            <form action="registrationRestaurant.do" method="post" enctype="multipart/form-data">
              <div id="background_" style="width:80%; border-radius:1rem; padding:2rem; padding-top:0; margin-left: 40px;">
                <div id="imgtest">
                	<input type="file" style="display: none" id="thumbnailChange" name="uploadFile" accept="image/*">
                    <div id="img_background" onclick="thumbnail()"><img id="img" src="image/LOGO.png" style="width: 8rem; height: 10rem;"></div><br>
                    <p>[음식점 사진]</p>
                </div>
              <table style="margin-left: 300px; margin-top: -260px;">
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>가게이름</label></td>
                  <td><input type="text" name="resName" id="resName"></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>가게설명</label></td>
                  <td><textarea id="rContent" name="resContent" style="height: 100px !important; resize: none" readonly="readonly" onclick="modal()"></textarea></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>전화번호</label></td>
                  <td><input type="tel" name="resPhone" id="resPhone" placeholder="예)031-1234-1234"></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>영업시간</label></td>
                  <td><input type="text" name="resTime" id="resTime" placeholder="예)12:00~22:00"></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>메뉴1</label></td>
                  <td><input type="text" name="menu" id="menu1"></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>메뉴2</label></td>
                  <td><input type="text" name="menu" id="menu2"></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>메뉴3</label></td>
                  <td><input type="text" name="menu" id="menu3"></td>
                </tr>				
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>서비스</label></td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="filter" value="1">주차</td>
                  <td><input type="checkbox" name="filter" value="2">와이파이</td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="filter" value="3">룸</td>
                  <td><input type="checkbox" name="filter" value="4">노키즈존</td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="filter" value="5">야외좌석</td>
                  <td><input type="checkbox" name="filter" value="6">유아시설</td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="filter" value="7" id="partner" style="display: none"></td>
                  <td></td>
                </tr> 
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>음식점 카테고리</label></td>
                  <td>
                    <select name="resCategoryId" id="resCategoryId"> 
                      <option value="0" selected="selected">선택</option>                
                      <option value="1">한식</option>
                      <option value="2">분식</option>
                      <option value="3">카페,디저트</option>
                      <option value="4">돈까스,회,일식</option>
                      <option value="5">치킨</option>
                      <option value="6">피자</option>
                      <option value="7">아시안,양식</option>
                      <option value="8">중식</option>
                      <option value="9">족발,보쌈</option>
                      <option value="10">주점</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>맴버십</label></td>
                  <td><input type="radio" name="resMembership" onclick="partnerOff()">일반맛집&nbsp; <input type="radio" name="resMembership" onclick="partnerOn()">파트너맛집</td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>지역</label></td>
                  <td><select name="locationId" id="locationId">
                    <option value="0" selected="selected">선택</option>
                    <option value="1">서울</option>
                    <option value="2">인천</option>
                    <option value="3">부산</option>
                    <option value="4">대구</option>
                    <option value="5">광주</option>
                    <option value="6">대전</option>
                    <option value="7">울산</option>
                    <option value="8">제주</option>
                  </select></td>
                </tr>

                <tr>
                  <td><label>우편번호</label></td>                  
                  <td>
                    <input type="text" name="post" id="post"
                       class="postcodify_postcode5" value="" size="6" readonly="readonly">
                     <button type="button" id="postcodify_search_button">검색</button>
                  </td>
                </tr>
                <tr>
                  <td><label>도로명 주소</label></td>
                  <td><input type="text" name="address1" readonly="readonly"
                        class="postcodify_address" value=""></td>
                </tr>
                <tr>
                  <td><label>상세 주소</label></td>
                  <td><input type="text" name="address2" readonly="readonly"
                      class="postcodify_extra_info" value=""></td>
                </tr>
                <!-- Postcodify를 로딩하자 -->
                <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
                <script>
                  $(function(){
                    $("#postcodify_search_button").postcodifyPopUp();
                  })                 
                </script>
                
              </table>
              <button id="submit"style="display: none">등록</button>
            </div>
            </form>
          </div>          
        </div>





      </div>
      <div align="center" style="width: 85%;">
        <button type="button" class="btn"
          style="background:rgb(204, 51, 98); color: white; width:95px;" onclick="submit()">등록</button>
      </div>
      
	<!-- 모달 영역 -->
	<button type="button" class="btn btn-primary" id="modalBtn" data-toggle="modal" data-target="#staticBackdrop" style="display: none">
	  Launch static backdrop modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">가게 설명</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <textarea rows="20" cols="53" style="resize: none" id="mContent"></textarea>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close">Close</button>
	        <button type="button" class="btn btn-primary" onclick="contentUp()">설명등록</button>
	      </div>
	    </div>
	  </div>
	</div>

      
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


    </div>
  </div>
	<!-- 이미지 영역 누르면 파일 변경 창 띄우기 -->
<script>
  function thumbnail() {
    $(function () {
      $("#thumbnailChange").click();
    })
  }
</script>

<!-- 프로필 사진 변경 시 이미지 미리보기 -->
<script>
	var sel_file;
	$(document).ready(function(){
		$("#thumbnailChange").on("change", handleImgFileSelect);
	});

	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>
<script>
	$(function(){
		$("#resPhone").change(function(){
			var regExp = /^\d{2,3}-\d{3,4}-\d{4}$/;
			if(!regExp.test($("#resPhone").val())){
	               	alert("전화번호는 (2,3글자)-(3,4글자)-(4글자)형식으로 입력되어야 합니다.");
	               $(this).val('').focus();
	             }
		})
		$("#resTime").change(function(){
			var regExp = /^\d{2}:\d{2}~\d{2}:\d{2}$/;
			if(!regExp.test($("#resTime").val())){
	               	alert("영업시간은 00:00~00:00 형식으로 입력되어야 합니다.");
	               $(this).val('').focus();
	             }
		})
	})
	/* 가게설명 textarea누르면 모달창 열림 */
	function modal(){
		$("#modalBtn").click();
	}
	/* 가게설명 모달안에 내용입력 후 버튼 누르면 가게설명 textarea에 내용입력 */
	function contentUp(){		
		var content = $("#mContent").val();
		$("#rContent").val(content);
		/* $("#mContent").val(""); */		
		$("#close").click();
	}
	
	/* 맴버십 유무로 필터에 숨겨져있는 맴버십체크박스의 체크유무 */
	function partnerOn(){
		$("#partner").prop("checked",true);
	}	
	function partnerOff(){
		$("#partner").prop("checked",false);
	}
	
	/* submit전에 정보 입력 체크 */
	function submit(){
		var fileCheck = $("#thumbnailChange").val();
		if(!fileCheck){
			alert("파일을 첨부하시오");
			return;
		}
		if($("#resName").val()==""){
            alert("가게이름을 입력하세요");
            $("#resName").focus();
            return;
       }
		if($("#rContent").val()==""){
            alert("가게설명을 입력하세요");
            return;
       }
		if($("#resPhone").val()==""){
            alert("전화번호를 입력하세요");
            $("#resPhone").focus();
            return;
       }
		if($("#resTime").val()==""){
            alert("영업시간을 입력하세요");
            $("#resTime").focus();
            return;
       }
		/* if($("#menu1").val()=="" || $("#menu2").val()=="" || $("#menu3").val()==""){
            alert("매뉴를 3가지 전부 입력해주세요");
            return;
       } */
		if($("#resCategoryId").val()==0){
            alert("음식점 카테고리를 선택해 주세요");
            $("#resCategoryId").focus();
            return;
       }		
		if($(':radio[name="resMembership"]:checked').length < 1){
		    alert('맴버십을 선택해주세요.');
		    document.frm.test[0].focus();
		    return false;
		}
		if($("#locationId").val()==0){
            alert("지역을 선택해 주세요");
            $("#locationId").focus();
            return;
       }
       
		if($("#post").val()==""){
            alert("주소를 입력해 주세요");
            return;
       }
		
		
		if(confirm("음식점을 등록 하시겠습니까?")){
			$("#submit").click();			
		}
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