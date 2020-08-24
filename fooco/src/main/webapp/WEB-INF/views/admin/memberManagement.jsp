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
    .table td {vertical-align:middle;}
    #searchBtn {background-color: rgb(204, 51, 98); color: white; border-color: rgb(204, 51, 98);}
    .modalBtn{background:rgb(253, 215, 129) !important; color:rgb(204, 51, 98) !important; width:125px !important; }
    .mainModalBtn{background-color: white !important; color: rgb(204, 51, 98) !important; border-color: rgb(204, 51, 98) !important;}
    
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
	<jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>회원관리</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item active">회원관리</li>
      </ol>
      <br>
      <div class="container">
        <div class="row">
          <div class="col-8">
            <h4>회원수 (${memberCount })</h4>
            <p>&nbsp;관리 매뉴에서는 <span style="color: red;">이메일보내기, 회원정지/해제, 리뷰정지/해제</span> 처리를 할 수 있습니다.</p>

          </div>
          <div class="col-4">
            <br>            
            <form class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0" 
            	style="padding-bottom: 10px;" action="memberManagement.do" method="get">
              <div class="input-group">
                  <input class="form-control" type="text" placeholder="이름으로 검색..." aria-label="Search"
                      aria-describedby="basic-addon2" id="searchMemberTextbox" name="searchMemberTextbox"/>
                  <div class="input-group-append"></div>
                  <button class="btn btn-primary mr-0" type="submit" id="searchBtn">
                      <i class="fas fa-search"></i></button>                      
              </div>
          </form>
          </div>
        </div>
        
        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">              
              <table class="table">
                <thead>
                  <tr>
                    <th></th>
                    <th>이름</th>
                    <th>맴버십 <i class="fas fa-arrows-alt-v" style="color: gray;"></i></th>
                    <th>가입일</th>
                    <th>최근접속일</th>
                    <th>상태</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody>
                <c:if test="${empty memberList }">
                	<tr align="center">
                		<td colspan="7">조회된 회원이 없습니다.</td>
                	</tr>
                </c:if>
                <c:if test="${!empty memberList }">
	                <c:forEach var="m" items="${memberList }">
		       			<tr>
		                    <td align="center">
		                      <img src="${contextPath}/resources/noimage/${m.renameName }" width="60" height="60" style="border-radius: 50%;">
		                    </td>
		                    <td>
		                      ${m.memberName }(${m.nickName })<br>
		                      ${m.email }
		                    </td>
		                    <c:if test="${empty m.membershipName }">
		                    	<td>미가입</td>
		                    </c:if>
		                    <c:if test="${!empty m.membershipName }">
		                    	<td>${m.membershipName }</td>                    	
		                    </c:if>
		                    <td>${m.memberEnrolldate }</td>
		                    <td>${m.memberAccessdate }</td>
		                    <td>회원 ${m.memberStatus }<br>리뷰 ${m.reviewStatus }</td>
		                    
		                    <td>
		                    	<button type="button" class="btn btn-primary mainModalBtn memberId" onclick="selectOneMember()" value="${m.memberId }"><i class="fas fa-cog"></i></button>
		                        <button type="button" id="modal1"style="display: none;"class="btn btn-primary mainModalBtn" data-toggle="modal" data-target="#memberEditModal" data-whatever=${m.memberId }><i class="fas fa-cog"></i></button>
		                        
		                    </td>
		               	</tr>
	                </c:forEach>
                </c:if>
                <script>
                	/* function selectOneMember(){
                		alert("나 나와?");
                		alert($(this).attr('value'));
                	} */
                	
                	$( document ).ready( function() {                        
                        $(".memberId").click(function(){
                        	var memberId = $(this).attr('value');
                        	 $.ajax({
                        		 url:"memberEditModal.do",
                        		 data:{memberId:memberId},
                        		 success:function(data){
                        			 $("#modal1MemberIdInput").val(data.memberId);
                        			 $("#modal2MemberIdInput").val(data.memberId);
                        			 $("#modal1EmailInput").val(data.email);                        			 
                        			 
                        			 $("#modal1").click();
                        			 
                        			 
                        		 },
                        		 error:function(request, status, errorData){
                 					alert("error code: " + request.status + "\n"
                 							+"message: " + request.responseText
                 							+"error: " + errorData);
                 				}
                        	 })
                        });                  
                    });
                </script>
                  <!-- 페이징 처리부분 -->
					<tr align="center" height="20">
						<td colspan="7">
					<!-- [이전] -->
							<c:if test="${pi.currentPage eq 1 }">
								[이전]&nbsp;
							</c:if>
							<c:if test="${pi.currentPage gt 1 }">
								<c:url var="mlistBack" value="memberManagement.do">
									<c:param name="page" value="${pi.currentPage - 1 }"/>
									<c:param name="searchMemberTextbox" value="${searchName }"/>
								</c:url>
								<a href="${mlistBack }">[이전]</a>
							</c:if>
					<!-- [번호들] -->
							<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
								<c:if test="${p eq pi.currentPage }">
									<font color="red" size="4"><b>[${p}]</b></font>
								</c:if>
								<c:if test="${p ne pi.currentPage }">
									<c:url var="mlistCheck" value="memberManagement.do">
										<c:param name="page" value="${p}"/>
										<c:param name="searchMemberTextbox" value="${searchName }"/>
									</c:url>
									<a href="${mlistCheck }">${p}</a>
								</c:if>
							</c:forEach>
					<!-- [이후] -->
							<c:if test="${pi.currentPage eq pi.maxPage }">
								&nbsp;[이후]
							</c:if>
							<c:if test="${pi.currentPage lt pi.maxPage }">
								<c:url var="mlistAfter" value="memberManagement.do">
									<c:param name="page" value="${pi.currentPage + 1 }"/>
									<c:param name="searchMemberTextbox" value="${searchName }"/>
								</c:url>
								<a href="${mlistAfter }">[이후]</a>
							</c:if>				
						</td>		
					</tr>                 
                </tbody>
              </table>          
              </script>
            </div>
          </div>
        </div>
      </div>
      

      

<div class="modal fade" id="memberEditModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">회원 관리</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">            
            <input type="hidden" class="form-control" id="modal1MemberIdInput">
          </div>
          <div align="center">
          <button type="button" class="btn modalBtn" onclick="emailModalOpen()">이메일</button>
          <button type="button" class="btn modalBtn"  data-toggle="modal" data-target="#emailModal" id="modal2" style="display: none">이메일</button>
          <button type="button" class="btn modalBtn" onclick="membershipSuspension()" >회원상태변경</button>
          <button type="button" class="btn modalBtn" onclick="reviewProhibition()">리뷰상태변경</button>
        </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="modal1Close">Close</button>
      </div>
    </div>
  </div>
</div>
<script>
  function membershipSuspension(){
	  var memberId = $("#modal1MemberIdInput").val();
	  var confirm1 = confirm("정말로 회원상태를 변경하시겠습니까?");
	  
	  if(confirm1 == true){
		  location.href="membershipSuspension.do?memberId="+memberId;		  
	  }else{
		  $("#modal1Close").click();		  
	  }
  }
  function reviewProhibition(){
	  var memberId = $("#modal1MemberIdInput").val();
	  var confirm1 = confirm("정말로 리뷰상태를 변경하시겠습니까?");
	  
	  if(confirm1 == true){
		  location.href="reviewProhibition.do?memberId="+memberId;  
	  }else{
		  $("#modal1Close").click();		  
	  }
	  
	  
	  
  }
  function emailModalOpen(){
	  $('#memberEditModal').modal("hide");
	  $("#modal2").click();
  }
  
  
  function sendEmail(){
	  var memberId = $("#modal2MemberIdInput").val();
	  var title = $("#emailTitle").val();
	  var email = $("#modal1EmailInput").val();
	  var emailContent = $("#messageText").val();
	  if($("#emailTitle").val()==""){
		  alert("제목을 입력하세요");
		  return;
	  }else if($("#messageText").val() == ""){
		  alert("내용을 입력하세요");
		  return;
	  }
	  var confirm1 = confirm("정말로 이메일을 보내시겠습니까?");
	  
	  if(confirm1 == true){
		  location.href="sendEmailAdmin.do?memberId="+memberId+"&title="+ title +"&email="+ email +"&emailContent="+ emailContent;
	  }else{
		  $("#emailTitle").val("");
		  $("#messageText").val("");
		  $("#modal2Close").click();	  
	  }
	  
	  
	  
  }
  
</script>
<div class="modal fade" id="emailModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">이메일 보내기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="sendEmailAdmin.do", method="get" id="emailModal" onsubmit="return checkEmail()">
	       <div class="form-group">
	           <label for="recipient-name" class="col-form-label">Title:</label>
	           <input type="text" class="form-control" id="emailTitle" name="title">
	       </div>
          <div class="form-group">
            <input type="hidden" class="form-control" id="modal2MemberIdInput" name="memberId">
            <input type="hidden" class="form-control" id="modal1EmailInput" name="email">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="messageText" name="emailContent"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="modal2Close">Close</button>
        <button type="button" class="btn btn-primary" onclick="sendEmail()">Send message</button>
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