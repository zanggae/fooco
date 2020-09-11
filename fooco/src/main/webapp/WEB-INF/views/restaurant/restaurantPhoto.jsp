<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mz-photo-container {background:#ECECEC; padding:0; border-radius:0.5rem;}
	.mz-photo-sort {width:25%; padding:0; margin:0;}
	.photo-sort-label {font-size:1.1rem; font-family:'medium'; padding:0; margin:0; margin-right:1rem;}
	.mz-photo-row {padding-left:0.5rem; padding-right:0.5rem; padding-top:1rem; padding-bottom:0;}
	.mz-photo-col {padding:0; padding-left:0.5rem; padding-right:0.5rem; margin-bottom:1rem;}
	.mz-photo-div {border-radius:0.3rem; overflow:hidden;}
	.mz-photo {width:100%; height:8rem; border-radius:0.3rem; transition-duration:0.3s; transition-timing-function:ease;}
	.mz-photo-div:hover .mz-photo {transform:scale(1.1);}
</style>
</head>
<body>
	<div class="row">
		<div class="col" style="padding: 0">
			<p class="mz-review-title">&#x1F4F8; 사진</p>
		</div>
		<div
			class="col form-group mz-photo-sort d-flex justify-content-end align-items-center">
			<label for="photo-sort" class="photo-sort-label">정렬</label>
			<div class="photo-sort-input">
				<select class="form-control form-control-sm photo-sort" id="photo-sort">
					<option value="latest" selected>최신 순</option>
					<option value="oldest">오래된 순</option>
					<option value="highrating">평점 높은 순</option>
					<option value="lowrating">평점 낮은 순</option>
				</select>
			</div>
		</div>
	</div>
	<div class="row mz-photo-container">
		<div class="row row-cols-4 mz-photo-row">
			<c:forEach var="photo" items="${photoList}">
			<div class="col mz-photo-col">
				<div class="mz-photo-div">
					<img src="${contextPath}/resources/${photo.imageFilepath}/${photo.imageNewName}" class="mz-photo">
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>