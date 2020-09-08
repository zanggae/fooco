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
    /*맛집추가*/
    .img_set {
      width: 9.5rem;
      height: 6rem;
      margin-top: 2rem;
      border: solid black 0.18rem;
      border-radius: 5%;
    }

    .searchIcon {
      position: absolute;
      z-index: 100;
      top: 0.5rem;
      left: 14.3rem;
    }

    .btn1 {
      margin-left: 0.2rem;
      height: 2rem;
      width: 2.5rem;
      box-shadow: none !important;
      border: none !important;
    }

    .search {
      height: 2rem;
      border: 1px solid black;
      color: gold;
      -webkit-border-radius: 7px;
      -moz-border-radius: 5px;
      border-radius: 5px !important;
      box-shadow: none;
    }

    /*선택된 맛집*/
    .img_set2 {
      width: 10rem;
      height: 6rem;
      margin-left: 1rem;
      border: solid black 0.18rem;
      border-radius: 5%;
    }

    .position1 {
      margin-top: 2rem;
    }

    .btn2 {
      box-shadow: none !important;
      border: none !important;
      width: 5.5rem;
      float: right;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container">

    <form action="restaurantThemeAdmin.do" method="get" id="themeSubmit">
    <input type="hidden" name="themeId" value="${ta.themeId }">
    <script>
    	function onsubmitTheme(){
    		if($("#themeTile").val() == ""){
    			alert("제목을 입력해 주세요");
    			$("#themeTile").focus();
    			return
    		}
    		if($(".themeRList").val() == null){
    			alert("음식점을 추가해 주세요");
    			return 
    		}    		

    		if(confirm("테마를 등록 하시겠습니까?")){
    			$("#themeSubmit").submit();
    		}    		
    	}    	
    </script>
    <div style="text-align: center;">
      <br><br>
      <h3>테마 수정</h3>
      <br>
        <div class="form-group row" style="margin-left: 8rem; font-size: 1.2rem;">
          <label for="inputEmail3" class="col-sm-3 col-form-label">테마 제목</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="themeTitle" style="width: 35rem; border:1px solid black; box-shadow: none;" id="themeTile" value="${ta.themeTitle }">
          </div>
        </div>

    </div>
    <br>
    <div class="row" style="text-align: center;">
      <div class="col-1"></div>
      <div class="col-4" align="center">      
        <h3>맛집 추가</h3>
        <hr>
        <div class="input-group" style="width:16em; margin-left: 3rem; box-shadow: none !important;">
          <input type="text" class="form-control search" placeholder="음식점 검색" id="searchInput">
          <button type="button" class="btn btn-warning btn1" id="searchBtn" onclick="searchRestaurant()"><i class="fas fa-search searchIcon" id="searchIcon"></i></button>
        </div>
        <script>
        	var check = new Array();
        	$(function(){
	       		<c:forEach items="${themeRList}" var="item"> 
	       			check.push("${item.resId}"); 
	       		</c:forEach>
	       		deleteRestaurant();        		
        	})
        	function searchRestaurant(){
        		var search = $("#searchInput").val();
        		if(search == ""){
        			alert("검색어를 입력하세요");
        			return;
        		}
        		$.ajax({
    				url:"searchRestaurantAdmin.do",
    				data:{search:search},
    				success:function(data){
    					
    					$mainDiv = $("#mainDiv");
    					$mainDiv.html("");
    					
    					var $div;
    					var $img;
    					var $divT;
    					var $divA;    					
    					var $inputRId;
    					
    					 if(data.restaurant.length > 0){	// 조회된 음식점이 존재하면
    						for(var i in data.restaurant){
    							var src = "resources/restaurantImage/"+data.restaurant[i].resImageName;
    							var address = data.restaurant[i].resAddress.split(',').join(' ');
    							$div = $("<div class='pickDiv'>");
    							$img = $("<img class='img_set' id='divImg'>").attr("src",src);
    							$divT = $("<div style='font-weight: bold;' id='divTitle'>").html(data.restaurant[i].resName);
    							$divA = $("<div id='divAddress'>").html(address);
    							$inputRId = $("<input type='hidden' id='resId'>").attr('value',data.restaurant[i].resId);    							
    							
    							$div.append($img);
    							$div.append($divT);
    							$div.append($divA);
    							$div.append($inputRId);
    							
    							$mainDiv.append($div);    							       							
    						}
    					}else{					// 조회된 음식점이 없으면
    						$div = $("<div class='mt-3'>").html("조회된 음식점이 없습니다.")
    						
    						$mainDiv.append($div);    						
    					} 
    					settingFunction();
    				},
    				error:function(request, status, errorData){
    					alert("error code: " + request.status + "\n"
    							+"message: " + request.responseText
    							+"error: " + errorData);
    				}				
    			 })
        	}
        	
        	function settingFunction(){
        		$(".pickDiv").click(function(){
        			var resId = $(this).find("#resId").val();
        			var dImg = $(this).find("#divImg").attr('src');
        			var title = $(this).find("#divTitle").text();
        			var address = $(this).find("#divAddress").text();
        			
        			/* 중복여부 확인 */
        			if(check.indexOf(resId)>-1){
        				alert("중복된 음식점은 추가할 수 없습니다.");
        				return;
        			}else{
	        			check.push(resId);        				
        			};
        			if(!confirm("음식점을 추가 하시겠습니까?")){
        				return;
        			}
        			
        			$subDiv = $("#subDiv");
        			
        			var $div;
					var $img;
					var $divI;
					var $divCon;
					var $h4T; 
					var $divA;					
					var $inputRId;
					
					$div = $("<div class='row selectDiv'>");
					$divI = $("<div class='col-5 position1' id='pickRImg'>");
					$img = $("<img class='img_set2'>").attr("src",dImg);
					$divCon = $("<div class='col-5 position1' id='pickRCon'>");
					$h5T = $("<h5 style='font-weight: bold; text-align: center;'>").text(title);
					$divA = $("<div style='text-align: center;'>").html(address);
					
					$inputRId = $("<input type='hidden' id='resId' name='themeRList' class='themeRList'>").attr('value',resId);    							
					
					$divI.append($img);
					$divCon.append($h5T);
					$divCon.append($divA);
					$divCon.append($inputRId);
					
					$div.append($divI);
					$div.append($divCon);
					
					$subDiv.append($div);
					
					deleteRestaurant();
        		})
        		
        		/* $(".selectDiv").click(function(){
        			
        			
        		}) */
        		
        	}
        	function deleteRestaurant(){
        		$(".selectDiv").click(function(){
        			if(!confirm("음식점을 삭제 하시겠습니까?")){
        				return;
        			}
	        		var resId = $(this).find("#resId").val();
	        		var index = check.indexOf(resId);
	        		check.splice(index, 1);
	        		
	        		$(this).remove();
        		})
        		
        	}
        	
        	
        </script>
        <br>
        <div style="height : 40rem; overflow-y : auto; border: solid lightgray 1px; border-radius: 10px !important;" id="">
          <div style="text-align: center;" id="mainDiv">
          </div>
        </div>
      </div>
      <div class="col-1"></div>
      <div class="col-5" >
        <h3>선택된 맛집</h3>
        <hr style="margin-bottom: 4.4rem;">

        <div style="height : 40rem; overflow-y : auto; overflow-x : hidden; border: solid lightgray 1px; border-radius: 10px !important;">
          <div style="text-align: center;" id="subDiv">
	          <c:forEach var="tRL" items="${themeRList }">
	          	<div class='row selectDiv'>
	          		<div class='col-5 position1' id='pickRImg'>
	          			<img class='img_set2' src="resources/restaurantImage/${tRL.resImageName}">
	          		</div>
	          		<div class='col-5 position1' id='pickRCon'>
	          			<h5 style='font-weight: bold; text-align: center;'>${tRL.resName }</h5>
	          			<div style='text-align: center;'>${tRL.resAddress}</div>
	          			<input type='hidden' id='resId' name='themeRList' class='themeRList' value="${tRL.resId }">
	          		</div>
	          	</div>
	          </c:forEach>
          </div>                   
        </div>
      </div>
      <div class="col-1"></div>
    </div>
    <br><br>
    <div class="row">
      <div class="col-11">
        <button type="button" class="btn btn-warning btn2" id="submitBtn" onclick="onsubmitTheme()">수정하기</button>
      </div>
    </div>
  </form>
  </div>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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