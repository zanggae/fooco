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
                <c:forEach var="m" items="${memberList }">
                  <tr>
                    <td align="center">
                      <img src="img/${m.renameName }" width="60" height="60" style="border-radius: 50%;">
                    </td>
                    <td>
                      ${m.memberName }(${m.nickName })<br>
                      ${m.email }
                    </td>
                    <td>${m.membershipName }</td>
                    <td>${m.memberEnrolldate }</td>
                    <td>${m.memberAccessdate }</td>
                    <td>회원 ${m.memberStatus }<br>리뷰 ${m.reviewStatus }</td>
                    
                    <td>
                      <button type="button" class="btn btn-primary" style="background-color: white; color: rgb(204, 51, 98); border-color: rgb(204, 51, 98);" data-toggle="modal" data-target="#exampleModal" data-whatever=${m.memberId }><i class="fas fa-cog"></i></button>
                    </td>
                  </tr>
                  </c:forEach>
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
      

      

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
            <input type="hidden" class="form-control" id="recipient-name">
          </div>
          <div align="center">
          <button type="button" class="btn" style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;" data-toggle="modal" data-target="#exampleModal1" data-whatever="사용자 이메일">이메일</button></td>
          <button type="button" class="btn" onclick="membershipSuspension()" style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;">회원정지</button></td>
          <button type="button" class="btn" onclick="reviewProhibition()"style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;">리뷰정지</button></td>
        </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script>
  function membershipSuspension(){
	  var memberId = $("#recipient-name").val();
	  	
	  location.href="membershipSuspension.do?memberId="+memberId;
  }
  function reviewProhibition(){
	  var memberId = $("#recipient-name").val();
    alert("나는 어때?");
  }
</script>
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">이메일 보내기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>
<script>  
$(function(){
  $('#exampleModal').on('show.bs.modal', function (event) {
var button = $(event.relatedTarget) // Button that triggered the modal
var recipient = button.data('whatever') // Extract info from data-* attributes
// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
var modal = $(this)
modal.find('.modal-body input').val(recipient)
})

$('#exampleModal1').on('show.bs.modal', function (event) {
  $('#exampleModal').modal("hide");
var button = $(event.relatedTarget) // Button that triggered the modal
var recipient = button.data('whatever') // Extract info from data-* attributes
// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
var modal = $(this)
modal.find('.modal-body input').val(recipient)
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