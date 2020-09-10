<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.mypage_container {padding: 0 !important; margin-top: 3rem !important;}
.myPage-row {margin: 0;}

/* 가운데 내용 */
.main_content {margin: 0; padding: 0;}
.main_content_div {background: lightgray; border-radius: 0.5rem; padding: 1rem;}
.main_content .row {margin: 0;}

  /*myList*/
  .edge {border: 0.1rem solid black; background-color: white; height: 10rem;}
  .img1 {margin-left:0; width: 11rem; height: 8rem; border-radius: 5%;}
  .title {font-size: 1.3rem; font-family: 'bold'; margin-top: 1.5rem; text-align: center;}
  .content {font-size: 1rem;}
  .btn-light {background-color: rgb(204, 51, 98); border: rgb(204, 51, 98); box-shadow: none !important; width: 4.3rem; 
  			  height: 1.8rem; font-size: 0.7rem; font-family: 'bold'; color: white; margin-top: 0.1rem; margin-bottom: 0.3rem;}


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
						<div class="row center_title">
							<p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F618; 나의 활동 - 마이리스트</p>
              			</div>

                  <h5 style="margin-left: 27.5rem;"><a href="mylistRegist.do"><i class="far fa-check-square"
                      style="font-size: 1.6rem;"></i>&nbsp;마이리스트 만들기</a></h5>
                    <c:forEach var="my" items="${mylist }">
                    <br>
                      <div class="row shadow-sm edge">
                        <div class="col-4 d-flex justify-content-center align-items-center">
                          <img src="resources/restaurantImage/${my.mlImageName}" class="img1">
                        </div>
                            <div class="col-6">
                              <h6 class="title">${my.mlTitle}</h6>
                            </div>
                            <div class="col-2" style="margin-top: 1.5rem ;">
                                <button type="button" class="btn btn-light" id="recommendBtn" onclick="recommend(this)">추천하기</button>
                                <button type="button" class="btn btn-light" onclick="goModify(this)">수정</button>
                                <button type="button" class="btn btn-light" 
                                onclick="deleteMylist(this)" value="${my.mlId }">삭제</button>
                            </div>
                      </div>
                      </c:forEach>
						

						

					
					</div>
				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>
	
	<script>
		function deleteMylist(id){
			if(confirm("마이리스트를 삭제하시겠습니까?")){
				var mlId = $(id).val();
				location.href="deleteMylist.do?mlId="+mlId;
			}
		}
		
		function goModify(id){
			var mlId = $(id).attr('value');
			
			location.href="moveMylistModifyPage.do?mlId="+mlId;
		}
		
		function recommend(){
				if(confirm("마이리스트를 테마로 추천하시겠습니까? 승인되면 마이리스트가 테마로 등록됩니다.")){
					var mlId = $(id).attr('value');
					location.href="recommendMylst.do?mlId="+mlId;
				}
				
		}

		
	
	
		/* function recommend(){
			if(confirm("마이리스트를 테마로 추천하시겠습니까? 승인여부는 언제알수있을까?")==true){
				$.ajax({
					url:"recommendationMylist.do",
					success:function()
				})
			}
			else{
				return;
			}
		} */
	
	</script>
		

</body>

</html>