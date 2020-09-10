<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">

<title>Insert title here</title>
</head>
<style>

/* 오른쪽 광고 */
.right_ad {
	padding: 0;
	padding-left: 1rem;
}

.right_ad_div {
	background: lightgray;
	border-radius: 0.5rem;
	padding: 1rem;
	height: 30rem;
}

.ad_img {
	width: 9rem;
	height: 100%;
	object-fit: cover;

	position: inherit;
}
</style>
<body>

	<div class="col-2 right_ad">
		<div class="right_ad_div shadow-sm">
			<img class="ad_img" src="resources/logo/ad.jpg">
		</div>
	</div>

</body>

</html>