<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="row" class="mz-moreInfo-">일식</div>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">대표메뉴</span>
			</div>
			<div class="row">푸에르테</div>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">영업시간</span>
			</div>
			<div class="row">10:00~11:00</div>
		</div>
		<div class="row d-block">
			<div class="row">
				<span style="font-family: 'bold';" class="mz-moreInfo-title">옵션</span>
			</div>
			<div class="row row-cols-2 mz-moreInfo-option-row">
				<div class="col d-flex align-items-center">
					<i class="far fa-check-square"></i>WI-FI
				</div>
				<div class="col d-flex align-items-center">
					<i class="far fa-check-square"></i>룸
				</div>
				<div class="col d-flex align-items-center">
					<i class="far fa-check-square"></i>야외좌석
				</div>
			</div>
		</div>
	</div>

</body>
</html>