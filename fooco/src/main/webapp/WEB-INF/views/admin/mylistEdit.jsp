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
	.mBtn{
		width: 200px; background:rgb(253, 215, 129) !important; color:rgb(204, 51, 98) !important;	border: 0px solid black !important;
	}
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
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
	       		<c:if test="${search.category eq 'Y'}">
	       			: "승인"
	       		</c:if>
	       		<c:if test="${search.category eq 'N'}">
	       			: "거절"
	       		</c:if>
	       		<c:if test="${search.category eq 'W'}">
	       			: "승인대기"
	       		</c:if>
       		</h4>           	
          </div>
          <div class="col-7" style="vertical-align: middle;">            
            	<input type="hidden" name="category" id="category" value="${search.category}">
            	<input type="hidden" name="page" id="page" value="${pi.currentPage }">
              <div class="mt-1 mr-5"style="margin:auto; float: right; vertical-align: middle;" align="center">
              	<input type="radio" name="category" value="W" onclick="searchOnclick(this)"><label>&nbsp;승인대기&nbsp;</label>
              	<input type="radio" name="category" value="Y" onclick="searchOnclick(this)"><label>&nbsp;승인&nbsp;</label>
              	<input type="radio" name="category" value="N" onclick="searchOnclick(this)"><label>&nbsp;거절</label>              	
                  <script>
                  	function searchOnclick(id){    
	                  	$("#category").val($(id).val());   
                  		var page = $("#page").val();
                  		var category = $("#category").val();
                  		alert("page"+page+"category"+category);
                  		location.href="mylistEditAdmin.do?category="+category+"&page="+page;
                  	}
                  </script>
              </div>
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
                    <th>관리</th>
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
	                    <c:if test="${m.mlModifyDate eq 'Y' }">
		                    <td>승인</td>	                    
	                    </c:if>
	                    <c:if test="${m.mlModifyDate eq 'N' }">
		                    <td>승인거절</td>	                    
	                    </c:if>
	                    <c:if test="${m.mlModifyDate eq 'W' }">
		                    <td>승인대기</td>	                    
	                    </c:if>
	                    <th>
	                      <button type="button" class="btn btn-primary" onclick="mylistEdit(this)" value="${m.mlId }"
	                        style="background-color: white; color: rgb(204, 51, 98); border-color: gray;"><i
	                          class="fas fa-trash-alt"></i></button>
	                    </th>
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
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">추천 마이리스트</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body" align="center">
	      	
	      
	      
	       <!-- <button type="button" class="btn btn-primary mBtn" id="detailBtn" onclick="goDetail(this)">상세페이지 보기</button>
	       <button type="button" class="btn btn-primary mBtn" id="modifyBtn" onclick="goModify(this)">수정하기</button> -->
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
				var redId = $(this).parents().children("td").eq(0).text();
				$("#detailBtn").attr("value",redId);
				$("#modifyBtn").attr("value",redId);				
				$("#goModal").click();					
			})
		})
		function goDetail(id){
        	var resId = $(id).attr('value');
        	/* alert(resId); */
        	location.href="goDetailRestaurant.do?resId="+resId;
        }
		function goModify(id){
			var resId = $(id).attr('value');
			/* alert(resId); */
        	location.href="detailRestaurantAdmin.do?resId="+resId;
        }
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