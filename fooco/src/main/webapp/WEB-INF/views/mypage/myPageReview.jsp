<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

  /* 리뷰 */
 


  .mz-review-div {
    background-color:white;
    padding: 1rem;
    margin-bottom: 1rem !important;
    border-radius:0.3rem;
  }

  .mz-review-userProfile-div {
    padding: 0;
  }

  .mz-userProfile {
    max-width: 100%;
    max-height: 100%;
    border-radius: 50%;
  }

  .mz-review-content-div {
    padding-right: 0;
  }

  .mz-review-content-div>div {
    padding: 0;
  }

  .mz-review-content-div>div>div {
    padding: 0;
  }

  .mz-review-follow-btn-div {
    padding: 0 !important;
  }

  .mz-review-follow-btn {
    margin: 0 !important;
    background: rgb(204, 51, 98);
    border: none;
    height: 2rem;
    border-radius: 0.2rem;
    color: white;
    font-family: 'medium';
    font-size: 1rem;
    width: 6rem;
  }

  .mz-review-rating-row {
    font-size: 0.8rem;
    display: block;
    margin-top: 0.5rem !important;
  }

  .mz-review-rating-row>div>div {
    padding: 0;
  }

  .mz-review-rating-row .col-11 {
    color: #F4E04E;
  }

  .mz-review-rating-date {
    margin-bottom: 0.5rem !important;
  }

  .review-content-more {
    display: none;
  }

  .review-content-more-btn {
    color: rgb(204, 51, 98);
  }

  .review-content-more-btn:hover {
    color: rgb(204, 51, 98);
  }

  .mz-review-rating-good {
    margin-top: 0.5rem !important;
  }

  .mz-review-rating-good-btn {
    margin-bottom: 0.5rem !important;
  }

  .mz-reviewPhoto-col {
    padding: 0;
    padding-right: 0.5rem !important;
  }

  .mz-reviewPhoto-div {
    border-radius: 0.3rem;
    overflow: hidden;
  }

  .mz-reviewPhoto {
    width: 100%;
    height: 6rem;
    border-radius: 0.3rem;
    transition-duration: 0.3s;
    transition-timing-function: ease;
  }

  .mz-reviewPhoto-div:hover .mz-reviewPhoto {
    transform: scale(1.08);
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
              <p style="font-size:1.5rem; font-family:'heavy'; color:rgb(204,51,98);">&#x1F618; 나의 활동 - 마이리뷰</p>
            </div>


            <div class="row mz-review-list">
              <div class="row mz-review-div shadow-sm">
                <div class="col-1 mz-review-userProfile-div">
                  <div class="mz-userProfile-img">
                    <img src="profile/luffy.jpg" class="mz-userProfile">
                  </div>
                </div>
                <div class="col-11 mz-review-content-div">
                  <div class="row" style="padding-right:0.5rem;">
                    <div class="col-9">
                      <div class="row">
                        <span style="font-size:1.2rem; font-family:'bold';">와니</span>
                      </div>
                      <div class="row">
                        <span style="font-size:0.7rem; color:gray;">리뷰 32개 · 팔로워 51명</span>
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="mz-review-follow-btn-div" style="text-align:end;">
                        <input type="button" value="팔로우" class="mz-review-follow-btn" style="margin-top:0.5rem;">
                      </div>
                    </div>
                  </div>
                  <div class="row mz-review-rating-row">
                    <div class="row">
                      <div class="col-1">
                        <span style="font-family:'bold';">맛</span>
                      </div>
                      <div class="col-11">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                          class="fas fa-star"></i><i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-1">
                        <span style="font-family:'bold';">가격</span>
                      </div>
                      <div class="col-11">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                          class="fas fa-star"></i><i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-1">
                        <span style="font-family:'bold';">서비스</span>
                      </div>
                      <div class="col-11">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                          class="fas fa-star"></i><i class="fas fa-star"></i>
                      </div>
                    </div>
                  </div>
                  <div class="row mz-review-rating-date">
                    <span style="font-size:0.7rem; color:gray;">2020-07-30</span>
                  </div>
                  <div class="row" style="padding-right:0.5rem;">
                    <p style="font-size:0.8rem; margin:0;">
                      진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
                      <span class="dots" id="dots">...</span>
                      <span class="review-content-more" id="review-content-more">
                        진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
                        맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜
                        맛있어요~! 진짜 진짜 맛있어요~! 진짜 진짜 맛있어요~!
                      </span>
                    </p>
                    <a class="review-content-more-btn" id="review-content-more-btn"
                      style="font-size:0.8rem; cursor:pointer;" onclick="readmore()">더 보기</a>
                  </div>
                  <div class="row mz-review-rating-good">
                    <span style="font-size:0.7rem; color:gray;">좋아요 32개</span>
                  </div>
                  <div class="row mz-review-rating-good-btn">
                    <a class="review-content-good-btn" id="review-content-good-btn" onclick="pushGood()"
                      style="font-size:0.8rem; color:mediumseagreen; font-family:'medium'; cursor:pointer;">&#x1F44D;
                      좋아요</a>
                  </div>
                  <div class="row row-cols-4 mz-reviewPhoto-row">
                    <div class="col mz-reviewPhoto-col">
                      <div class="mz-reviewPhoto-div">
                        <img src="resThumb/restaurant1.jpg" class="mz-reviewPhoto">
                      </div>
                    </div>
                    <div class="col mz-reviewPhoto-col">
                      <div class="mz-reviewPhoto-div">
                        <img src="resThumb/restaurant2.jpg" class="mz-reviewPhoto">
                      </div>
                    </div>
                    <div class="col mz-reviewPhoto-col">
                      <div class="mz-reviewPhoto-div">
                        <img src="resThumb/restaurant3.jpg" class="mz-reviewPhoto">
                      </div>
                    </div>
                    <div class="col mz-reviewPhoto-col">
                      <div class="mz-reviewPhoto-div">
                        <img src="resThumb/restaurant4.jpg" class="mz-reviewPhoto">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
             
            </div>
					

						

					
					</div>
				</div>
				<!-- 오른쪽 광고 -->
				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>

<!-- 리뷰 더 보기 버튼 누를 때 이벤트 -->
<script>
  function readmore() {
    var dots = document.getElementById("dots");
    var moreText = document.getElementById("review-content-more");
    var button = document.getElementById("review-content-more-btn");

    if (dots.style.display === "none") {
      dots.style.display = "inline";
      button.innerHTML = "더 보기";
      moreText.style.display = "none";
    } else {
      dots.style.display = "none";
      button.innerHTML = "감추기";
      moreText.style.display = "inline";
    }

    button.focus();
  }
</script>


</html>