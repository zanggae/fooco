<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/4b6b63d8f6.js"
	crossorigin="anonymous"></script>


<title>Insert title here</title>
</head>
<style>

/* 페이지 전체 */
.mypage_container {
	padding: 0 !important;
	margin-top: 3rem !important;
}

.myPage-row {
	margin: 0;
}

/* 가운데 내용 */
.main_content {
	margin: 0;
	padding: 0;
}

.main_content_div {
	background: lightgray;
	border-radius: 0.5rem;
	padding: 1rem;
}

.main_content .row {
	margin: 0;
}

  /* 테이블 hover */
  #inquiryNo:hover{background-color: khaki; cursor: pointer;}
  
</style>

<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<!-- 왼쪽 메뉴바 -->
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content" style="padding:0;">
					<div class="main_content_div shadow-sm">
						              <div class="row">
                <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F64B; 1:1문의</p>
              </div>

              <div class="row" style="margin-bottom: 18rem;">
                <table class="table-light table-bordered">
                  <thead style="background-color: #ececec;" align="center">
                      <tr style="height: 3rem;">
                        <th width="150px" style="font-size: 1.1em;">게시물 번호</th>
                        <th width="150px" style="font-size: 1.1em;">문의 분류</th>
                        <th width="300px" style="font-size: 1.1em;">제목</th>
                        <th width="150px" style="font-size: 1.1em;">날짜</th>
                        <th width="150px" style="font-size: 1.1em;">답변상태</th>
                      </tr>
                  </thead>
                  <tbody>
                    <!-- 문의 내역이 없을 시 -->
                    <!-- <tr>
                      <td>1:1 문의 내역이 없습니다.</td>
                    </tr> -->
                    <c:forEach var="inquiry" items="${InquiryList }">
                      <c:url var="inquirymodify" value="InquiryModify.do">
                      	<c:param name="boardId" value="${ inquiry.boardId }"></c:param>
                      </c:url>
                    <tr id="inquiryNo" align="center" style="height: 2.5rem;" onClick="location.href='${inquirymodify}'">
                      <td>${inquiry.boardId }</td>
                      <td>${inquiry.inquiryName }</td>
                      <td>${inquiry.boardTitle }</td>
                      <td>${inquiry.boardCreateDate }</td>
                      <c:if test="${inquiry.inquiryYN eq 'N'}">
                      <td>처리중</td>
                      </c:if>
                      <c:if test="${inquiry.inquiryYN eq 'Y'}">
                      <td>답변완료</td>
                      </c:if>
                    </tr>
                   
                    </c:forEach>
                  </tbody>
                  
                </table>
              </div>
					</div>
				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>




</html>