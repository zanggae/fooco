<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
	<script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <title>Hello, world!</title>
  <style>
    .table td {
      vertical-align: middle;
    }
	.mBtn{
		width: 200px; background:rgb(253, 215, 129) !important; color:rgb(204, 51, 98) !important;	border: 0px solid black !important;
	}
	.middle {background: rgb(204, 51, 98); height: 8rem; text-align: center;}
	.outside{position: relative;}
	.indiv {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
	.text2 {background-color: none; position: absolute; text-align: center; top: 10%; left: 50%; transform: translate(-50%, -50%);}
	.boundary {
      height: 16rem;
      border: 0.4rem solid lightgray;
      background-color: white;
      border-radius: 0.5rem;
    }
    .title {
      font-size: 1.3rem;
      font-family: 'bold';
      text-align: left;
    }
    .title2{
    	font-size: 1.8rem;
      font-family: 'bold';
      color: white;
    }
    #star {     
      color: gold;
      font-size: 2.8rem;
      display: inline-block;
    }
    .img1 {margin:0; padding:0;  width: 19rem; height: 12rem;}
    .score {
      font-size: 2.6rem;
      color: gold;
      font-weight: bold;
      display: inline-block;
    }
    .address {
      color: gray;
      font-family: 'bold';
      text-align: left;
    }
    .nickname {
      font-size: 1.1rem;
      font-family: 'medium';
      text-align: left;
    }
    .content {
      font-size: 1rem;
      font-family: 'light';
    }
    .detailInfo {
      font-size: 0.9rem;
      color: silver;
      font-weight: bold;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  <form action="restaurantThemeAdmin1.do" method="get" id="mylistThemeinsert">
  <script>
  	function goSubmit1(){
  		alert("나 나와?");
  		if(confirm("마이리스트를 테마로 등록하시겠습니까?")){
	  		$("#mylistThemeinsert").submit();  			
  		}  	
  	}
  	
  	function goback(){
  		location.href="mylistEditAdmin.do";
  	}
  	function goReject(id){
  		var mlid = $(id).val();
  		location.href="mylistRejectAdmin.do?mlId="+mlid;
  	}
  </script>
  <input type="hidden" name="themeTitle" value="${mlA.mlTitle }">
  <input type="hidden" name="mlId" value="${mlA.mlId }">
  <input type="hidden" id="check" value="${mlA.approveTheme }">
  <div style="margin-left: 13%;">  
      <div class="middle outside">
			<div class="indiv title2">${mlA.mlTitle }</div>		
			</div>
			<div id="test">
			<!-- container 시작 -->
		    <div class="container" style="height: 52rem; overflow-y : auto;">
		        <div class="row">
		            <div class="col-1"></div>
		            <div class="col-10">
		                <!-- for문 실행되는 음식점 리스트 시작 -->
		                <c:forEach var="mlR" items="${mlR }">
		                <input type="hidden" name="themeRList" value="${mlR.resId }">
		                <div class="boundary mt-5">
		                    <div class="row">
		                        <div class="col-5" align="center" style="vertical-align:middle;">
		                            <img style="height: 55%; width: 90%;" class="bo mt-4" src="resources/restaurantImage/${mlR.resImageName }">
		                        </div>
		                        <div class="col-7" style="margin: 0%; padding: 0%; height: 90%">
		                            <div style="height: 80%;" class="mt-4">
		                                <div class="row bo" style="height: 25%;">
		                                    <div class="col-7 bo" style="overflow-y : auto; height: 100%;">
		                                        <div><p class="title">${mlR.resName }</p></div>
		                                    </div>
		                                    <div class="col-5 bo">
		                                    	<i class="fas fa-star" id="star"></i>
		                        				<h1 class="score"><fmt:formatNumber type="number" value="${mlR.reviewRatingAvg }" pattern="0.0"/></h1>
		                                    </div>
		                                </div>
		                                <div class="row" style="height: 20%;">
		                                    <div class="col-7 address" style="overflow-y : auto; height: 100%;">
		                                        <div>${mlR.resAddress }</div>
		                                    </div>
		                                </div>
		                                <div class="row" style="height: 20%;">		                                    
		                                    <div class="col-5 nickname mt-2">${mlR.reviewNickname }</div>
		                                </div>
		                                <div class="row mt-2" style="height: 35%;">
		                                    <div class="col-7 bo" style="overflow-y : auto; height: 100%;">
		                                        <div class="content">${mlR.reviewContent }</div>
		                                    </div>
		                                    <div class="col-5 bo"><br>
		                                    <c:url var="detailRes" value="goDetailRestaurant.do">
						                  		<c:param name="resId" value="${mlR.resId }"/>
						                  	</c:url>		                                    
		                                    	<a href="${detailRes }" class="detailInfo">
		                                    	음식점 정보 더보기&nbsp;&nbsp;<i class="fas fa-arrow-right"></i></a>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                </c:forEach>
		                <!-- for문 종료 -->
		            </div>
		            <div class="col-1"></div>
		        </div>
		    </div>
		    <!-- container 끝 -->						
			<div align="center">			
				<button type="button" class="btn btn-primary mBtn" onclick="goback()">목록으로</button>
				<button type="button" class="btn btn-primary mBtn check" onclick="goSubmit1()">테마로 등록</button>
				<button type="button" class="btn btn-primary mBtn check" onclick="goReject(this)" value="${mlA.mlId }">거절하기</button>
			</div>
		</div>
      </div>
   </form>
	<script>
		$(function(){
			var ch = $("#check").val();
			if(ch=='W'){
				
			}else{
				$(".check").prop("disabled",true);
			}
		})
	</script>
	
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