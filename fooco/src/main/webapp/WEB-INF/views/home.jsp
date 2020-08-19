<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<a href="dashboard.do">admin dashboard page test </a><br>
	<a href="testMember.do">MemberPage</a><br>
	<c:if test="${!empty sessionScope.loginUser }">
	 		<h3 align="right">
	 			<c:out value="${loginUser.name }님 환영합니다"></c:out>
	 		</h3>
	 	</c:if>
	<a href="main.do">Go Main</a>

</body>
</html>
