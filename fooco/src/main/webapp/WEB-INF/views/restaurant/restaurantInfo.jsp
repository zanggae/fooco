<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mz-moreInfo-container {margin-top:1rem !important;}
	.mz-moreInfo-container > .row {margin-bottom:1rem;}
	.mz-moreInfo-title {font-size:1.1rem;}
	.fa-check-square {color:rgb(204,51,98); font-size:1.5rem; margin-right:0.5rem;}
	.mz-moreInfo-option-row {width:40%;}
	.mz-moreInfo-option-row > div {padding:0;}
</style>
</head>
<body>
	<div class="row">
		<p class="mz-review-title">&#x1F50D; 상세정보</p>
	</div>
	<div class="row mz-moreInfo-container d-block">
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">구분</span>
			</div>
			<div class="row" class="mz-moreInfo-">${info.infoCategoryName}</div>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">대표메뉴</span>
			</div>
			<c:forEach var="bestmenu" items="${info.bestmenu}">
				<div class="row">${bestmenu.bestmenuName}</div>
			</c:forEach>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">영업시간</span>
			</div>
			<div class="row">${info.infoOperatingTime}</div>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">연락처</span>
			</div>
			<div class="row">${info.infoPhone}</div>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">옵션</span>
			</div>
			<div class="row row-cols-2 mz-moreInfo-option-row">
				<c:if test="${0 ne info.infoFilter[0].filterId}">
				<c:forEach var="filter" items="${info.infoFilter}">
					<div class="col d-flex align-items-center">
						<i class="far fa-check-square"></i>${filter.filterName}
					</div>
				</c:forEach>
				</c:if>
			</div>
		</div>
	</div>

</body>
</html>