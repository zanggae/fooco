<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery.min.js"></script>
</head>
<body>
	<h1>이곳은 paymentprocedure.jsp</h1>
	<h1>${mv.membershipId }</h1>
	<h1>${mv.membershipName }</h1>
	

	<c:forEach var="item" items="${membershiplist}">
     <p>번호 : ${item.membershipId}</p>
     <p>이름 : ${item.membershipName}</p>
</c:forEach>




	
	
</body>
</html>