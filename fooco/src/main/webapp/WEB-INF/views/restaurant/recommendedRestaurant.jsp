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
	.sr-recommend-title-row {margin:0;}
	.sr-recommend-title-row p {margin:0.3rem;}
	.sr-recommend-content-row {margin:0; margin-bottom:0.3rem; padding:0;}
	.sr-recommend-boundary {padding:0.1rem; margin-bottom:0.3rem;}
	.sr-recommend-boundary .row {margin:0;}
	.sr-recommend-card {background-color:white; border-radius:0.5rem; margin:0;}
	.sr-recommend-card:hover {cursor:pointer;}
	.sr-recommend-card-title {height:2rem;}
	.sr-recommend-card-content {padding:0.5rem; padding-top:0;}
	.sr-recommend-card-img {padding:0.5rem; height:6rem;}
	.recommend-img {width:100%; height:100%;}
</style>
</head>
<body>
	<div class="row sr-recommend-title-row">
		<p style="font-family: 'bold';">&#x1F44D; 이 지역 맛집 BEST</p>
	</div>
	<div class="row row-cols-2 sr-recommend-content-row">
		<c:forEach var="list" items="${sameLocationBestRestaurant}">
		<div class="col sr-recommend-boundary" id="sr-recommend-boundary" onclick="goDetail(${list.resId})">
			<div class="row row-cols-1 sr-recommend-card shadow-sm">
				<div class="col sr-recommend-card-img">
					<img class="recommend-img" src="${contextPath}/resources/${list.resThumbnailImage.imageFilepath}/${list.resThumbnailImage.imageNewName}" style="border-radius: 0.2rem;"></img>
				</div>
				<div class="col sr-recommend-card-content">
					<div class="row sr-recommend-card-title">
						<span style="font-size: 0.9rem; line-height: 0.9rem; font-family:'medium';">${list.resName}</span>
					</div>
					<div class="row sr-recommend-card-rating">
						<span style="color: #F4E04E; font-family:'bold'"><i class="fas fa-star"></i><fmt:formatNumber value="${list.reviewRating}" pattern="0.0"/></span>
					</div>
					<div class="row sr-recommend-card-location d-flex align-items-center">
						<i class="fas fa-map-marker-alt" style="font-size: 0.8rem; margin-right: 0.2rem;"></i>
						<span style="font-family:'medium'; font-size: 0.8rem;">${list.locationName}</span>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</body>
</html>