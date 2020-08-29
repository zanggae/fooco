<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

  <title>Hello, world!</title>
  <style>
    .table td {
      vertical-align: middle;
    }

  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>음식점 관리</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item active">음식점 관리</li>
      </ol>
      <br>
      <div class="container">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col-5">
          	<c:if test="${search.category eq 0 }">
          		<h4>음식점(${rCount })</h4> 
          	</c:if>
          	<c:if test="${search.category ne 0 }"> 
	            <h4>${search.category} : "${search.search }"(${rCount })</h4>            
          	</c:if>
          </div>
          <div class="col-7">
            <form class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0">
            	<input type="hidden" name="search" id="search">
            	<input type="hidden" name="category" id="category">
            	<input type="hidden" name="page" id="page" value="${page }">
              <div class="input-group">
              	<select class="float-right form-control" id="searchCategory">
	              <option selected value="0">선택</option>
	              <option value="1">맛집명</option>
	              <option value="2">지역</option>
	              <option value="3">카테고리</option>
	            </select>
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" id="searchContent"
                  aria-describedby="basic-addon2" />                
                <button class="btn btn-primary mr-0"
                  style="background-color: rgb(204, 51, 98); color: white; border-color: rgb(204, 51, 98);"
                  type="button" onclick="searchOnclick()">
                  <i class="fas fa-search"></i></button>
                  <script>
                  	function searchOnclick(){
                  		$("#search").val($("#searchContent").val());
                  		$("#category").val($("#searchCategory").val());
                  	}
                  </script>
              </div>
            </form>
          </div>
        </div>
        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th></th>
                    <th>맛집명</th>
                    <th>지역</th>
                    <th>카테고리</th>
                    <th>평점</th>
                    <th>음식점등록일</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody>
               	<c:if test="${empty memberList }">
	              	<tr align="center">
	              		<td colspan="7">조회된 음식점이 없습니다.</td>
	              	</tr>
                </c:if>
                <c:if test="${!empty restaurantList }">
	               	<c:forEach var="r" items="${restaurantList }">
	                  <tr>
	                    <td align="center">
	                      <img src="${r.resImageFilepath}/${r.resImageName}" width="60" height="60">
	                    </td>
	                    <td>${r.resName}</td>
	                    <td>${r.locationName }</td>
	                    <td>${r.resCategoryName }</td>
	                    <td>${r.reviewRatingAvg }</td>
	                    <td>${r.resUpdateDate }</td>
	                    <th>
	                      <button type="button" class="btn btn-primary" onclick="restaurantDelete(this)" value="${r.resId }"
	                        style="background-color: white; color: rgb(204, 51, 98); border-color: gray;"><i
	                          class="fas fa-trash-alt"></i></button>
	                    </th>
	                  </tr>
                  	</c:forEach>
                </c:if>
                  <tr>
                    <td align="center">
                      <img src="img/logo.png" width="60" height="60">
                    </td>
                    <td>
                      서정완(와니비)<br>
                      wjddhkswoddl@naver.com
                    </td>
                    <td>12-458264</td>
                    <td>gold</td>
                    <td>2020-05-14</td>
                    <td>2020-05-14</td>
                    <td>
                      <button type="button" class="btn btn-primary" value="1" onclick="restaurantDelete(this)"
                        style="background-color: white; color: rgb(204, 51, 98); border-color: gray;"><i
                          class="fas fa-trash-alt"></i></button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <button type="button" class="btn float-right mr-3" onclick="location.href='restaurantRegistration.do'"
        style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;">등록</button>


      <script>
        function restaurantDelete(id){
         	var rId = $(id).val();
         	location.href="deleteRestaurant.do?resId="+rId;
        }
      </script>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
</body>

</html>