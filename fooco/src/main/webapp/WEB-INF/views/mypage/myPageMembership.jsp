<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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

  /* 멤버십 */
  .my_membership {
    font-size: 1.5rem;
    font-family: 'heavy';
    color: rgb(204, 51, 98);
  }

  /* 쿠폰 */
  .coupon_div_div {
    overflow-x: auto;
    height: 9.5rem;
  
    margin-top: 0.7rem;
    margin-bottom: 1.5rem;
  }

  .coupon_div {
    padding: 0.5rem;
  }

  .coupon {
    padding: 0.5rem;
    border-radius: 0.5rem;
    background-color: white;
  }

  .deadline {
    font-size: 0.9rem;
  }
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
              <p class="my_membership">&#x1F451; 나의 멤버십</p>
            </div>
            
            <div class="row" style="margin-left: 1rem;">
              <i class="fas fa-ticket-alt" style="font-size: 1.7rem;"></i>&nbsp;
              <span style="font-family: 'heavy'; font-size: 1.2rem;">내가 보유한 쿠폰</span>
            </div>
			
			
            <div class="coupon_div_div">
            <!-- 보유한 쿠폰이 없을 때 -->
            <c:forEach var="coupon1" items="${couponList }">
	            <c:if test="${coupon1.couponListId eq '0'}">							
					<div style="background-color:white; height:9rem; border-radius: 0.5rem; padding-top:3.5rem;">
						<p style="font-size:1.1rem; font-family:'heavy'; color:rgb(204,51,98); text-align:center">&#x1F645;보유한 쿠폰이 없습니다.</p>
					</div>
				</c:if>
	        </c:forEach>
	        <c:if test="${empty couponList }">
				<div style="background-color:white; height:9rem; border-radius: 0.5rem; padding-top:3.5rem;">
					<p style="font-size:1.1rem; font-family:'heavy'; color:rgb(204,51,98); text-align:center">&#x1F645;보유한 쿠폰이 없습니다.</p>
				</div>	        
	        </c:if>    
              <div class="row row-cols-2">
				
				<c:forEach var="coupon" items="${couponList }">
				<c:if test="${coupon.couponListId ne '0' }">
                <div class="coupon_div">
                  <div class="col coupon shadow-sm">
                    <div class="row">
                      <div class="col-8" style="padding: 0rem;">
                        <p style="margin: 0rem; font-size: 1.1rem; font-family: 'medium';">${coupon.couponContent } 쿠폰</p>
                      </div>
                      <div class="col-4" align="right" style="padding:0rem">
                      <c:if test="${coupon.cStatus eq 'Y' && coupon.couponContent eq '1만원할인'}">
                        <button type="button" class="btn btn-primary btn-sm" style="font-size: 0.7rem; line-height: 0.9rem;" disabled>쿠폰받기</button>
                      </c:if>
                      <c:if test="${coupon.cStatus eq 'N' || coupon.couponContent eq '음료제공' }">
                      	<c:url var="cStatusChange" value="cStatusChange.do">
                      		<c:param name="couponListId" value="${coupon.couponListId }"></c:param>
                      		<c:param name="couponStartDate" value="${coupon.couponStartDate }"></c:param>
                      		<c:param name="couponExpireDate" value="${coupon.couponExpireDate }"></c:param>
                      	</c:url>
                        <a href="${cStatusChange }"><button type="button" class="btn btn-primary btn-sm" style="font-size: 0.7rem; line-height: 0.9rem;">쿠폰받기</button></a>
                      </c:if>
                      </div>
                    </div>
                    <div class="row">
                      <span class="deadline">유효기간 : &nbsp;</span>
                      <span class="deadline">${coupon.couponStartDate }</span>
                      <span class="deadline">&nbsp;~&nbsp;</span>
                      <span class="deadline">${coupon.couponExpireDate }</span>
                    </div>
                  </div>
                </div>
                </c:if>
				</c:forEach>

                

          



              </div>
            </div>

            <div class="row" style="margin-left: 1rem; margin-top: 7.5rem;">
              <i class="fas fa-id-card" style="font-size: 1.7rem;"></i>&nbsp;
              <span style="font-family: 'heavy'; font-size: 1.2rem; margin-right: 0.7rem;">내가 가입한 멤버십</span>
              <!-- 구독내역 없으면 가입된 멤버십이 없습니다.라는 alert창 발생 -->
              <c:url var="goMembershipList" value="goMembershipList.do">
					<c:param name="memberId" value="${loginUser.memberId }"/>
				</c:url>
              <a href="${goMembershipList }"><button type="button" class="btn btn-primary btn-sm" style="font-size: 0.7rem; line-height: 0.9rem;">구독내역</button></a>
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