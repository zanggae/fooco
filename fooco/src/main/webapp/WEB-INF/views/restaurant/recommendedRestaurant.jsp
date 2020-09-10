<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.sr-recommend-title-row {margin:0;}
	.sr-recommend-title-row p {margin:0.3rem;}
	.sr-recommend-content-row {margin:0; margin-bottom:0.3rem; padding:0;}
	.sr-recommend-boundary {padding:0.1rem; margin-bottom:0.3rem;}
	.sr-recommend-boundary .row {margin:0;}
	.sr-recommend-card {background-color:white; border-radius:0.5rem; margin:0;}
	.sr-recommend-card-title {height:2rem;}
	.sr-recommend-card-content {padding:0.5rem;}
	.sr-recommend-card-img {padding:0.5rem; height:4.5rem;}
	.sr-recommend-card-img img {width:100%;}
</style>
</head>
<body>
	<div class="row sr-recommend-title-row">
		<p style="font-family: 'bold';">비슷한 </p>
	</div>
	<div class="row row-cols-2 sr-recommend-content-row">
		<div class="col sr-recommend-boundary">
			<div class="row row-cols-1 sr-recommend-card shadow-sm">
				<div class="col sr-recommend-card-img">
					<img src="#" style="border-radius: 0.2rem;"></img>
				</div>
				<div class="col sr-recommend-card-content">
					<div class="row sr-recommend-card-title">
						<span style="font-size: 0.9rem; line-height: 0.9rem; font-family: 'bold';">진짜 맛있는 스테이크</span>
					</div>
					<div class="row sr-recommend-card-rating">
						<span style="color: #F4E04E;"><i class="fas fa-star"></i>4.9</span>
					</div>
					<div class="row sr-recommend-card-location d-flex align-items-center">
						<i class="fas fa-map-marker-alt" style="font-size: 0.8rem; margin-right: 0.2rem;"></i>
						<span style="font-family: 'medium'; font-size: 0.8rem;">인천</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>