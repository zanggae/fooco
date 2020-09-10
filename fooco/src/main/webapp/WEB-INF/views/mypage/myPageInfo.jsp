<<<<<<< HEAD
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
@font-face {
	font-family: 'heavy';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff')
		format('woff');
	font-weight: bold;
	font-style: normal;
}

@font-face {
	font-family: 'bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'light';
}

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

/* 타임라인 */
.timeline_sub {
	background-color: white;
	padding: 0.5rem;
	width: 30rem;
	border-radius: 0.5rem;
}

  /* 프로필 사진 */
  .profile_poto {
    width: 6rem;
    height: 6rem;
    border-radius: 50%;
    background-color: white;
    align-content: center;
    margin-bottom: 1rem;
    z-index: 0;
    margin-bottom: 0.3rem;
    border: solid 1px black;
  }

  .profile_location {
    width: 30rem;
    margin-left: 5.5rem;
    background-color: white;
    border-radius: 0.5rem;
    padding: 0.5rem;
  }

  .profile_poto_add {
    color: #0066FF;
    position: absolute;
    z-index: 1;
    top: 4.5rem;
    left: 9.5rem;
    font-size: 1.3rem;
    cursor: pointer;
  }

  .profile_font {
    padding-left: 0rem;
    padding-right: 0rem;
    padding-bottom: 0.5rem;
    font-family: 'medium';
    font-size: 21px;
  }
</style>

<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content" style="padding:0rem;">
					<div class="main_content_div shadow-sm">
						<div class="row">
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F618;
								나의 활동</p>
						</div>

            <div align="center" style="margin-bottom: 2rem;">
              <div class="row shadow-sm profile_location">

                <div class="col-5" style="position: relative; padding-right: 0; padding-left: 4rem;">
                  <div>
                    <img class="profile_poto" id="img" src="${contextPath }/resources/ProFiles/${rename_name}">
                  </div>
                  <div>
                    <i class="fas fa-plus-circle profile_poto_add" onclick="ProfileChange();"></i>
                  </div>
                  <form action="proFileUpDate.do" method="post" enctype="Multipart/form-data">
               
				<input type="hidden" name="memberId" value="${loginUser.memberId }"/>
				
				
                  <input class="btn btn-primary btn-sm" id="changebtn" type="submit" value="변경" disabled>
                  <input type="file" id="ProfileChange" name="profile" accept="image/*" style="display: none;">
                  </form>
                </div>
                <div class="col-6" style="padding-left: 0rem;">

                  <div class="row" style="padding-top: 1rem;">
                    <div class="col-7 profile_font" style="padding:0rem;">
              			${loginUser.nickName }
                    </div>
                    <div class="col-3" style="display:none;">
                      <i class="fas fa-user-plus" style="font-size: 1.5rem; cursor: pointer;"></i>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-4" style="padding-left: 0rem;">
                      <p style="margin: 0rem;">팔로워</p>
                      <p style="margin: 0rem;">${followCount }</p>
                    </div>
                    <div class="col-4" style="padding-left: 0rem;">
                      <p style="margin: 0rem;">팔로잉</p>
                      <p style="margin: 0rem;">${followingCount}</p>
                    </div>
                  </div>
                </div>

              </div>
            </div>

						<div class="row center_title">
							<p style="font-size: 1.5rem; font-family: 'heavy';">&#x23F0;
								타임라인</p>
						</div>

						<div style="margin-left: 2.5rem;">
							<div class="row timeline_sub"
								style="margin-left: 2rem; margin-bottom: 1rem;">
								<div class="col-4">
									<i class="fas fa-pen"> 리뷰</i>
								</div>
								<div class="col-5"></div>
								<div class="col-3">
									<div class="row">
										<div class="col-3" style="margin-right: 0.5rem;">
											<span>${reviewCount }</span>
										</div>
										<a href="">
											<div class="col-2">
												<i class="fas fa-angle-right"></i>
											</div>
										</a>
									</div>
								</div>
							</div>



							<div class="row timeline_sub"
								style="margin-left: 2rem; margin-bottom: 1rem;">
								<div class="col-4">
									<i class="fas fa-edit"> 체크인</i>
								</div>
								<div class="col-5"></div>
								<div class="col-3">
									<div class="row">
										<div class="col-3" style="margin-right: 0.5rem;">
											<span>${checkinCount }</span>
										</div>
										<a href="">
											<div class="col-2">
												<i class="fas fa-angle-right"></i>
											</div>
										</a>
									</div>
								</div>
							</div>

							<div class="row timeline_sub"
								style="margin-left: 2rem; margin-bottom: 1rem;">
								<div class="col-4">
									<i class="fas fa-list-alt"> 마이리스트</i>
								</div>
								<div class="col-5"></div>
								<div class="col-3">
									<div class="row">
										<div class="col-3" style="margin-right: 0.5rem;">
											<span>${mylistCount }</span>
										</div>
										<a href="">
											<div class="col-2">
												<i class="fas fa-angle-right"></i>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>

<!-- 프로필 +버튼 클릭 시 파일 변경 창 띄우기 -->
<script>
  function ProfileChange() {
    $(function () {
      $("#ProfileChange").click();
    })
  }
</script>

<!-- 프로필 사진 변경 시 이미지 미리보기 -->
<script>
	var sel_file;
	$(document).ready(function(){
		$("#ProfileChange").on("change", handleImgFileSelect);
	});

	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img").attr("src", e.target.result);
				$("#changebtn").attr('disabled', false);
			}
			reader.readAsDataURL(f);
		});
	}

</script>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
@font-face {
	font-family: 'heavy';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff')
		format('woff');
	font-weight: bold;
	font-style: normal;
}

@font-face {
	font-family: 'bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'light';
}

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

/* 타임라인 */
.timeline_sub {
	background-color: white;
	padding: 0.5rem;
	width: 30rem;
	border-radius: 0.5rem;
}

  /* 프로필 사진 */
  .profile_poto {
    width: 6rem;
    height: 6rem;
    border-radius: 50%;
    background-color: white;
    align-content: center;
    margin-bottom: 1rem;
    z-index: 0;
    margin-bottom: 0.3rem;
    border: solid 1px black;
  }

  .profile_location {
    width: 30rem;
    margin-left: 5.5rem;
    background-color: white;
    border-radius: 0.5rem;
    padding: 0.5rem;
  }

  .profile_poto_add {
    color: #0066FF;
    position: absolute;
    z-index: 1;
    top: 4.5rem;
    left: 9.5rem;
    font-size: 1.3rem;
    cursor: pointer;
  }

  .profile_font {
    padding-left: 0rem;
    padding-right: 0rem;
    padding-bottom: 0.5rem;
    font-family: 'medium';
    font-size: 21px;
  }
</style>

<body>
	<header>
		<jsp:include page="../common/commonHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="container mypage_container">
			<div class="row myPage-row">
				<jsp:include page="../common/myPageSideMenubar.jsp"></jsp:include>

				<div class="col-7 main_content" style="padding:0rem;">
					<div class="main_content_div shadow-sm">
						<div class="row">
							<p
								style="font-size: 1.5rem; font-family: 'heavy'; color: rgb(204, 51, 98);">&#x1F618;
								나의 활동</p>
						</div>

            <div align="center" style="margin-bottom: 2rem;">
              <div class="row shadow-sm profile_location">

                <div class="col-5" style="position: relative; padding-right: 0; padding-left: 4rem;">
                  <div>
                    <img class="profile_poto" id="img" src="${contextPath }/resources/ProFiles/${rename_name}">
                  </div>
                  <div>
                    <i class="fas fa-plus-circle profile_poto_add" onclick="ProfileChange();"></i>
                  </div>
                  <form action="proFileUpDate.do" method="post" enctype="Multipart/form-data">
               
				<input type="hidden" name="memberId" value="${loginUser.memberId }"/>
				
				
                  <input class="btn btn-primary btn-sm" id="changebtn" type="submit" value="변경" disabled>
                  <input type="file" id="ProfileChange" name="profile" accept="image/*" style="display: none;">
                  </form>
                </div>
                <div class="col-6" style="padding-left: 0rem;">

                  <div class="row" style="padding-top: 1rem;">
                    <div class="col-7 profile_font" style="padding:0rem;">
              			${loginUser.nickName }
                    </div>
                    <div class="col-3" style="display:none;">
                      <i class="fas fa-user-plus" style="font-size: 1.5rem; cursor: pointer;"></i>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-4" style="padding-left: 0rem;">
                      <p style="margin: 0rem;">팔로워</p>
                      <p style="margin: 0rem;">${followCount }</p>
                    </div>
                    <div class="col-4" style="padding-left: 0rem;">
                      <p style="margin: 0rem;">팔로잉</p>
                      <p style="margin: 0rem;">${followingCount}</p>
                    </div>
                  </div>
                </div>

              </div>
            </div>

						<div class="row center_title">
							<p style="font-size: 1.5rem; font-family: 'heavy';">&#x23F0;
								타임라인</p>
						</div>

						<div style="margin-left: 2.5rem;">
							<div class="row timeline_sub"
								style="margin-left: 2rem; margin-bottom: 1rem;">
								<div class="col-4">
									<i class="fas fa-pen"> 리뷰</i>
								</div>
								<div class="col-5"></div>
								<div class="col-3">
									<div class="row">
										<div class="col-3" style="margin-right: 0.5rem;">
											<span>${reviewCount }</span>
										</div>
										<a href="">
											<div class="col-2">
												<i class="fas fa-angle-right"></i>
											</div>
										</a>
									</div>
								</div>
							</div>



							<div class="row timeline_sub"
								style="margin-left: 2rem; margin-bottom: 1rem;">
								<div class="col-4">
									<i class="fas fa-edit"> 체크인</i>
								</div>
								<div class="col-5"></div>
								<div class="col-3">
									<div class="row">
										<div class="col-3" style="margin-right: 0.5rem;">
											<span>${checkinCount }</span>
										</div>
										<a href="">
											<div class="col-2">
												<i class="fas fa-angle-right"></i>
											</div>
										</a>
									</div>
								</div>
							</div>

							<div class="row timeline_sub"
								style="margin-left: 2rem; margin-bottom: 1rem;">
								<div class="col-4">
									<i class="fas fa-list-alt"> 마이리스트</i>
								</div>
								<div class="col-5"></div>
								<div class="col-3">
									<div class="row">
										<div class="col-3" style="margin-right: 0.5rem;">
											<span>${mylistCount }</span>
										</div>
										<a href="">
											<div class="col-2">
												<i class="fas fa-angle-right"></i>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<jsp:include page="../common/myPageAdMenubar.jsp"></jsp:include>

			</div>
		</div>
	</section>

</body>

<!-- 프로필 +버튼 클릭 시 파일 변경 창 띄우기 -->
<script>
  function ProfileChange() {
    $(function () {
      $("#ProfileChange").click();
    })
  }
</script>

<!-- 프로필 사진 변경 시 이미지 미리보기 -->
<script>
	var sel_file;
	$(document).ready(function(){
		$("#ProfileChange").on("change", handleImgFileSelect);
	});

	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				swal("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img").attr("src", e.target.result);
				$("#changebtn").attr('disabled', false);
			}
			reader.readAsDataURL(f);
		});
	}

</script>

>>>>>>> refs/remotes/origin/master
</html>