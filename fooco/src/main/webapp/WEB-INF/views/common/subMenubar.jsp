<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
</style>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
	
            <nav class="navbar navbar-expand-xl shadow-sm mainHeader">
                <div class="container d-flex justify-content-between">
                    <a class="navbar-brand mh-navbar-brand" href="#">
                        <img class="logo" src="ui.png">
                    </a>
                    <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarsExample07">
                        <div class="navbar-nav">
                            <div class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle mh-dropdown-toggle d-flex align-items-center" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-user-circle"></i>
                                    <span class="dropdown-title mh-dropdown-title" style="font-family:'bold'">로그인</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right mh-dropdown-menu" aria-labelledby="dropdown07">
                                    <a class="dropdown-item mh-dropdown-item" href="#">마이페이지</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">지역 맛집</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">테마 맛집</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">멤버십</a>
                                    <a class="dropdown-item mh-dropdown-item" href="#">고객센터</a>
                                    <a class="dropdown-item mh-dropdown-item" href="dashboard.do">관리자페이지</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item mh-dropdown-item" href="#">로그아웃</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
   
</body>
</html>