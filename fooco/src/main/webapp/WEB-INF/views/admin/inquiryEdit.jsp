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
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>1:1 문의 관리</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item active">1:1 문의 관리</li>
      </ol>
      <br>
      <div class="container">
          <form action="inquiryEdit.do" method="get" id="iSubmit">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col-6" style="margin:auto;">
            <p style="margin:auto;">카테고리에서 <span style="color: red;">문의</span>를 선택 조회 하실 수 있습니다.</p>
          </div>
          <div class="col-3" style="margin:auto;" align="center">
            <input type="radio" name="inquiryYN" value="N" onclick="inquirySubmit()">&nbsp;<label>미답변</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="inquiryYN" value="Y" onclick="inquirySubmit()">&nbsp;<label>답변완료</label>
          </div>
          <div class="col-3" style="vertical-align: middle;">            
			<input type="hidden" name="page" id="pageNum">			
            <select class="float-right" name="inquiryCode" id="inquiryCode"onchange="inquirySubmit()">
              <option selected value="0">선택</option>
              <option value="1">음식점 문의</option>
              <option value="2">테마 문의</option>
              <option value="3">리뷰 문의</option>
              <option value="4">기타 문의</option>
            </select>
          </div>
        </div>
          </form>
        <script>
        	function inquirySubmit(){        		
        		var inquiryCode = $("#inquiryCode").val();
        		var inquiryYN = $(":input:radio[name=inquiryYN]:checked").val();
        		 $.ajax({
        				url:"inquiryEdit2.do",
        				/* data:{inquiryCode:inquiryCode, inquiryYN:inquiryYN}, */
        				data:$("#iSubmit").serialize(),
        				success:function(data){
        					
        					$tableBody = $("#inquiryTable tbody");
        					$tableBody.html("");
        					
        					var $tr;
        					var $boardId;
        					var $boardTitle;
        					var $boardWriter;
        					var $inquiryName;
        					var $boardUpdateDate;
        					var $inquiryYN;
        					
        					if(data.inquiry.length > 0){	// 조회된 문의가 존재하면
        						for(var i in data.inquiry){
        							$tr = $("<tr>");
        							$boardId = $("<td style='display: none'>").text(data.inquiry[i].boardId);
        							$boardTitle = $("<td>").text(data.inquiry[i].boardTitle);
        							$boardWriter = $("<td>").text(data.inquiry[i].nickname);
        							$inquiryName = $("<td>").text(data.inquiry[i].inquiryName);
        							$boardUpdateDate = $("<td>").text(data.inquiry[i].boardUpdateDate);
        							$inquiryYN = $("<td>").text(data.inquiry[i].inquiryYN);
        							
        							$tr.append($boardId);
        							$tr.append($boardTitle);
        							$tr.append($boardWriter);
        							$tr.append($inquiryName);
        							$tr.append($boardUpdateDate);
        							$tr.append($inquiryYN);
        							
        							$tableBody.append($tr);        							
        						}
        					}else{					// 조회된 문의가 없으면
        						$tr = $("<tr>");
        						$boardTitle = $("<td colspan='5'>").text("조회된 문의가 없습니다.");
        						
        						$tr.append($boardTitle);
        						$tableBody.append($tr);
        						
        					}
        					
        					
        					$tableFooter = $("#inquiryTable tfoot");
        					$tableFooter.html("");
        					
        					
        					var $td;
        					var $back;
        					var $p;
        					var $after;
        					
        					$tr = $("<tr align='center' height='20' >");
        					$th = $("<th colspan='7'>");
        					
        					if(data.pi.currentPage == 1){
        						$back = $("<span>").text("[이전] ");
        					}else{
        						$back = $("<a href='#' onclick='paging(this)'>").attr('value',data.pi.currentPage-1).text("[이전]");
        					}
        					$th.append($back);        					
        					
        					
							for(var i = 0; i <data.pi.maxPage; i++){
								if(data.pi.currentPage == i+1){
									$p = $("<font color='red' size='4'>").text('['+(i+1)+']');
								}else{
        						$p = $("<a href='#' onclick='paging(this)'>").attr('value',i+1).text(i+1);									
								}
								$th.append($p);
        					}
							
							
							if(data.pi.currentPage == data.pi.maxPage||data.pi.maxPage==0){
        						$back = $("<span>").text(" [이후]");
        					}else{
        						$back = $("<a href='#' onclick='paging(this)'>").attr('value',data.pi.currentPage+1).text("[이후]");
        					}
							$th.append($back);
							$tr.append($th);
        					$tableFooter.append($tr);
        					
        					open();
        				},
        				error:function(request, status, errorData){
        					alert("error code: " + request.status + "\n"
        							+"message: " + request.responseText
        							+"error: " + errorData);
        				}				
        			 })
        	}
        	
        </script>
        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3" align="center">
              <table class="table table-hover" id="inquiryTable">
                <thead align="center">
                  <tr>
                    <th style="width: 20rem;">문의제목</th>
                    <th>작성자</th>
                    <th>카테고리</th>
                    <th>문의날짜</th>
                    <th>답변여부</th>
                  </tr>
                </thead>
                <tbody align="center">
                <c:if test="${empty inquiry }">
                	<tr>                   
                    	<td colspan="5">조회된 문의가 없습니다.</td>                    
                  	</tr>
                </c:if>                
                <c:if test="${!empty inquiry }">
	                <c:forEach var="i" items="${inquiry }">
	                  <tr>
	                 	<td style="display: none">${i.boardId }</td>              
	                    <td>${i.boardTitle }</td>
	                    <td>${i.nickname }</td>
	                    <td>${i.inquiryName }</td>
	                    <td>${i.boardUpdateDate }</td>
	                    <td>${i.inquiryYN }</td>
	                  </tr>
	                </c:forEach>	                
                 </c:if>
                </tbody>
                <tfoot>
                	<c:if test="${!empty pi }">
	                	<!-- 페이징 처리부분 -->
						<tr align="center" height="20">
							<th colspan="7">
							<!-- [이전] -->
								<c:if test="${pi.currentPage eq 1 }">
									[이전]&nbsp;
								</c:if>								
								<c:if test="${pi.currentPage gt 1 }">									
									<a href="#" onclick="paging(this)" value="${pi.currentPage - 1 }">[이전]</a>
								</c:if>
						<!-- [번호들] -->
								<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
									<c:if test="${p eq pi.currentPage }">
										<font color="red" size="4"><b>[${p}]</b></font>
									</c:if>
									<c:if test="${p ne pi.currentPage }">										
										<a href="#" onclick="paging(this)" value="${p}">${p}</a>
									</c:if>
								</c:forEach>
						<!-- [이후] -->
								<c:if test="${pi.currentPage eq pi.maxPage }">
									&nbsp;[이후]
								</c:if>
								<c:if test="${0 eq pi.maxPage }">
									&nbsp;[이후]
								</c:if>
								<c:if test="${pi.currentPage lt pi.maxPage }">									
									<a href="#" onclick="paging(this)" value="${pi.currentPage + 1 }">[이후]</a>
								</c:if>				
							</th>		
						</tr>
					</c:if>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
		<script>			
			function paging(obj){				
				var page = $(obj).attr('value');
				$("#pageNum").val(page);
				inquirySubmit();
			}
			
		</script>
		<script>
			$(function(){
				$("#inquiryTable").find("td").click(function(){					
					var boardId = $(this).parents().children("td").eq(0).text();
					location.href="selectInquiryOne.do?boardId="+boardId;
				})
			})
			function open(){
				$("#inquiryTable").find("td").click(function(){
					alert($("dddd").text())
					var boardId = $(this).parents().children("td").eq(0).text();
					location.href="selectInquiryOne.do?boardId="+boardId;
				})
			}
		</script>
      
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