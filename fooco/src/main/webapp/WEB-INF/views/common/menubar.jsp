<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* 헤더 네비게이션 바 */
        .mainHeader {padding:0; background-color:rgb(253,215,129);}
        .logo {width:8rem; height:4.5rem;}
        .mh-navbar-brand {padding:0;}
        .fa-user-circle {margin-right:0.5rem; color:rgb(204,51,98); font-size:2.3rem;}
        .mh-dropdown-title {color:black; font-size:1.1rem;}
        .mh-dropdown-menu {text-align:right; border:none; background-color:whitesmoke;}
        .mh-dropdown-menu a:hover {color:white; background-color:rgb(204,51,98);}
        .mh-dropdown-toggle::after {display:none;}
        .mh-dropdown-item {font-family:'medium';}

        /* 헤더 네비게이션 서브 */
        .mainSubHeader {padding:0; height:3rem; background-color:rgb(204,51,98);}
        .nav-underline {margin:auto;}
        .msh-items {color:white; font-size:1.1rem;}
        .nav-underline a:hover {color:rgb(253,215,129);}
</style>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
	
            <nav class="navbar navbar-expand-xl shadow-sm mainHeader">
                <div class="container d-flex justify-content-between">
                    <a class="navbar-brand mh-navbar-brand" href="#">
                        <img class="logo" src="resources/logo/logo.png">
                    </a>
                    <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarsExample07">
                        <div class="navbar-nav">
                            <div class="nav-item dropdown">
                            <c:if test="${empty loginUser }">
                                <a class="nav-link dropdown-toggle mh-dropdown-toggle d-flex align-items-center" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-user-circle"></i>
                                    <span class="dropdown-title mh-dropdown-title" style="font-family:'bold'">로그인</span>
                                </a>
                                </c:if>
                               
                                <div class="dropdown-menu dropdown-menu-right mh-dropdown-menu" aria-labelledby="dropdown07">
                                	<c:if test="${!empty loginUser }">
                                    <a class="dropdown-item mh-dropdown-item" href="#">마이페이지</a>
                                    </c:if>
                                    <a class="dropdown-item mh-dropdown-item" href="#">지역 맛집</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">테마 맛집</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">멤버십</a>
                                    <a class="dropdown-item mh-dropdown-item" href="serviceCenterMain.do">고객센터</a>
                                    <a class="dropdown-item mh-dropdown-item" href="dashboard.do">관리자페이지</a>
                                    <div class="dropdown-divider"></div>
                                    <c:if test="${!empty loginUser }">
                                    <a class="dropdown-item mh-dropdown-item" href="#">로그아웃</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="nav-scroller d-flex align-items-center shadow-sm mainSubHeader">
                <div class="container msh-container">
                    <div class="nav nav-underline d-flex justify-content-around">
                        <a class="nav-link msh-items" style="font-family:'medium'" href="#">지역 맛집</a>
                        <a class="nav-link msh-items" style="font-family:'medium'" href="#">테마 맛집</a>
                        <a class="nav-link msh-items" style="font-family:'medium'" href="#">멤버십</a>
                        <a class="nav-link msh-items" style="font-family:'medium'" href="serviceCenterMain.do">고객센터</a>
                    </div>
                </div>
            </div>
   
</body>
</html>