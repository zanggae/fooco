<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.sr-partner-title-row {margin:0;}
	.sr-partner-title-row p {margin:0.3rem;}
	.sr-partner-content-row {margin:0; margin-bottom:0.3rem; padding:0;}
	.sr-partner-boundary {padding:0.1rem; margin-bottom:0.3rem;}
	.sr-partner-boundary .row {margin:0;}
	.sr-partner-card {background-color:white; border-radius:0.5rem; margin:0;}
	.sr-partner-card:hover {cursor:pointer;}
	.sr-partner-card-title {height:2rem;}
	.sr-partner-card-content {padding:0.5rem; padding-top:0;}
	.sr-partner-card-img {padding:0.5rem; height:6rem;}
	.sr-partner-card-img img {width:100%; height:100%;}
</style>
</head>
<body>
	<div class="row sr-partner-title-row">
		<p style="font-family: 'bold';">&#x1F451; 푸코 멤버십만을 위한 맛집</p>
	</div>
	<div class="row row-cols-2 sr-partner-content-row">
		<c:forEach var="list" items="${membershipRestaurant}">
		<div class="col sr-partner-boundary" id="sr-partner-boundary" onclick="goDetail(${list.resId})">
			<div class="row row-cols-1 sr-partner-card shadow-sm">
				<div class="col sr-partner-card-img">
					<img class="partner-img" src="${contextPath}/resources/${list.resThumbnailImage.imageFilepath}/${list.resThumbnailImage.imageNewName}" style="border-radius: 0.2rem;"></img>
				</div>
				<div class="col sr-partner-card-content">
					<div class="row sr-partner-card-title">
						<span style="font-size: 0.9rem; line-height: 0.9rem; font-family:'medium';">${list.resName}</span>
					</div>
					<div class="row sr-partner-card-rating">
						<span style="color: #F4E04E; font-family:'bold'"><i class="fas fa-star"></i><fmt:formatNumber value="${list.reviewRating}" pattern="0.0"/></span>
					</div>
					<div class="row sr-partner-card-location d-flex align-items-center">
						<i class="fas fa-map-marker-alt" style="font-size: 0.8rem; margin-right: 0.2rem;"></i>
						<span style="font-family:'medium'; font-size: 0.8rem;">${list.locationName}</span>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
	
	<script>
		document.getElementById("sr-partner-boundary").addEventListener("click", function(){
			var locationId = document.getElementById("listLocation").value;
			var resId = document.getElementById("hiddenResId").value;
			window.location.href = window.location.href="goDetailRestaurant.do?resId=" + resId;
		})
	</script>
</body>
</html>