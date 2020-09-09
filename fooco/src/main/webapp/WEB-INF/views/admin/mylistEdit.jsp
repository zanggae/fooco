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
	.middle {background: rgb(204, 51, 98); height: 5rem; text-align: center;}
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
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>마이리스트 관리</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item active">마이리스트 관리</li>
      </ol>
      <br>
      <div class="container">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col-5">          	
       		<h4>추천리스트(${mCount }) 
	       		<c:if test="${search.category eq 2}">
	       			: "승인"
	       		</c:if>
	       		<c:if test="${search.category eq 3}">
	       			: "거절"
	       		</c:if>
	       		<c:if test="${search.category eq 1}">
	       			: "승인대기"
	       		</c:if>
       		</h4>           	
          </div>
          <div class="col-7" style="vertical-align: middle;">            
            	<input type="hidden" name="category" id="category" value="${search.category}">
            	<input type="hidden" name="page" id="page" value="${pi.currentPage }">
              <div class="mt-1 mr-5"style="margin:auto; float: right; vertical-align: middle;" align="center">
              	<input type="radio" name="category" value="W" onclick="searchOnclick(this)" id="W"><label>&nbsp;승인대기&nbsp;</label>
              	<input type="radio" name="category" value="Y" onclick="searchOnclick(this)" id="Y"><label>&nbsp;승인&nbsp;</label>
              	<input type="radio" name="category" value="N" onclick="searchOnclick(this)" id="N"><label>&nbsp;거절</label>              	
                  <script>
                  	function searchOnclick(id){    
	                  	$("#category").val($(id).val());   
                  		var page = $("#page").val();
                  		var category = $("#category").val();
                  		/* alert("page"+page+"category"+category); */
                  		location.href="mylistEditAdmin.do?category="+category+"&page="+page;
                  	}
                  </script>
              </div>
              <!-- 처음  로딩티 조회 된것의 종류의 따라 클릭 되있도록-->
              <script>
              	$(function(){
              		var cat = $("#category").val();
              		if(cat ==1){
              			$("#W").prop("checked", true);  
              		}else if(cat ==2){
              			$("#Y").prop("checked", true);
              			$("#modalThemeInsertBtn").prop("disabled",true);
              		}else if(cat ==3){
              			$("#N").prop("checked", true);
              			$("#modalThemeInsertBtn").prop("disabled",true);
              		}
              	})
              	
              </script>
          </div>
        </div>
        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">
              <table class="table table-hover" id="mylistTable">
                <thead>
                  <tr>
                    <th></th>
                    <th>추천리스트제목</th>
                    <th>추천인</th>
                    <th>등록날짜</th>
                    <th>상태</th>
                  </tr>
                </thead>
                <tbody>
               	<c:if test="${empty ml }">
	              	<tr align="center">
	              		<th colspan="6">조회된 마이리스트가 없습니다.</th>
	              	</tr>
                </c:if>
                <c:if test="${!empty ml }">
	               	<c:forEach var="m" items="${ml }">
	                  <tr>
	                  	<td style="display: none">${m.mlId}</td>
	                    <td align="center">
	                      <img src="resources/restaurantImage/${m.mlImageName}" width="60" height="60">
	                    </td>
	                    <td>${m.mlTitle}</td>
	                    <td>${m.mlWNickname }</td>
	                    <td>${m.mlModifyDate }</td>
	                    <c:if test="${m.approveTheme eq 'Y' }">
		                    <td >승인</td>	                    
	                    </c:if>
	                    <c:if test="${m.approveTheme eq 'N' }">
		                    <td>승인거절</td>	                    
	                    </c:if>
	                    <c:if test="${m.approveTheme eq 'W' }">
		                    <td>승인대기</td>	                    
	                    </c:if>	                    
	                  </tr>
                  	</c:forEach>
                </c:if>
                                  <!-- 페이징 처리부분 -->
					<tr align="center" height="20">
						<th colspan="7">
					<!-- [이전] -->
							<c:if test="${pi.currentPage eq 1 }">
								[이전]&nbsp;
							</c:if>
							<c:if test="${pi.currentPage gt 1 }">
								<script>
									function rListBack(){
										$("#page").val(${pi.currentPage -1});
										searchOnclick();
									}									
								</script>
								<a href="#" onclick="rListBack()">[이전]</a>
							</c:if>
					<!-- [번호들] -->
							<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
								<c:if test="${p eq pi.currentPage }">
									<font color="red" size="4"><b>[${p}]</b></font>
								</c:if>
								<c:if test="${p ne pi.currentPage }">
									<script>
										function rListCheck(page1){
											var page = $(page1).attr('value');
											$("#page").val(page);
											searchOnclick();
										}									
									</script>									
									<a href="#" onclick="rListCheck(this)" value="${p}">${p}</a>
								</c:if>
							</c:forEach>
					<!-- [이후] -->
							<c:if test="${pi.currentPage eq pi.maxPage }">
								&nbsp;[이후]
							</c:if>
							<c:if test="${pi.currentPage lt pi.maxPage }">
								<script>
									function rListAfter(){
										$("#page").val(${pi.currentPage + 1 });
										searchOnclick();
									}									
								</script>
								<a href="#" onclick="rListAfter()">[이후]</a>
							</c:if>				
						</th>		
					</tr> 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>	
	<!-- 이동 모달 영역 -->
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="display: none" id="goModal">
	  Launch demo modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-xl">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">추천 마이리스트</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body" align="center" >
	      	<div class="middle outside">
				<div class="indiv"><h4><b>제목</b></h4></div>
			</div>
			<div id="test">
			<!-- container 시작 -->
		    <div class="container" style="height: 52rem; overflow-y : auto;">
		        <div class="row">
		            <div class="col-1"></div>
		            <div class="col-10" style="overflow-y : auto; overflow-x: hidden;" id="forStart">
		                <!-- for문 실행되는 음식점 리스트 시작 -->
		                
		                <div class="boundary mt-5">
		                    <div class="row" style="height: 100%;">
		                        <div class="col-5" align="center" style="vertical-align:middle;">
		                            <img style="height: 80%; width: 90%;" class="bo mt-4">
		                        </div>
		                        <div class="col-7" style="margin: 0%; padding: 0%;">
		                            <div style="height: 80%;" class="mt-4">
		                                <div class="row bo" style="height: 25%;">
		                                    <div class="col-7 bo" style="overflow-y : auto; height: 100%;">
		                                        <div><p class="title">서울여관식당</p></div>
		                                    </div>
		                                    <div class="col-5 bo">
		                                    	<i class="fas fa-star" id="star"></i>
		                        				<h1 class="score">0.0</h1>
		                                    </div>
		                                </div>
		                                <div class="row" style="height: 25%;">
		                                    <div class="col-7 address" style="overflow-y : auto; height: 100%;">
		                                        <div>경상북도 청송군 청송읍 약수길 18-1</div>
		                                    </div>
		                                </div>
		                                <div class="row" style="height: 20%;">
		                                    <div class="col-2 bo"><img class="bo"
		                                            style="border-radius: 50%; width: 100%; height: 100%;"></div>
		                                    <div class="col-5 nickname mt-2">닉네임</div>
		                                </div>
		                                <div class="row mt-2" style="height: 30%;">
		                                    <div class="col-7 bo" style="overflow-y : auto; height: 100%;">
		                                        <div class="content">음식점 너무 맛있고 좋고 좋요음식점 너무 맛있고 좋고 좋아요</div>
		                                    </div>
		                                    <div class="col-5 bo"><br>
		                                    	<a href="#" class="detailInfo" value="#">
		                                    	음식점 정보 더보기&nbsp;&nbsp;<i class="fas fa-arrow-right"></i></a>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div> 
		                <!-- for문 종료 -->
		            </div>
		            <div class="col-1"></div>
		        </div>
		    </div>
		    <!-- container 끝 -->						
			
			    </div>

	      
	      
	       <div>
		       <button type="submit" class="btn btn-primary mBtn" id="modifyBtn" id="modalThemeInsertBtn">테마등록</button>
	       </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>	        
	      </div>
	    </div>
	  </div>
	</div>
      <script>
        function mylistEdit(id){
        	
         	var mlId = $(id).val();
        }
        $(function(){
			$("#mylistTable").find("td").click(function(){				
				var mlId = $(this).parents().children("td").eq(0).text();
				location.href="selectOneMylistAdmin.do?mlId="+mlId;
				
				
			})
		})
		
      </script>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


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