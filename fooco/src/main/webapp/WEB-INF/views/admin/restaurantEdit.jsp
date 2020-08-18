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
          <div class="col-6">
            <h4>음식점(200)</h4>
          </div>
          <div class="col-6">
            <form class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0">
              <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search"
                  aria-describedby="basic-addon2" />
                <div class="input-group-append"></div>
                <button class="btn btn-primary mr-0"
                  style="background-color: rgb(204, 51, 98); color: white; border-color: rgb(204, 51, 98);"
                  type="button" id="jin">
                  <i class="fas fa-search"></i></i></button>
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
                    <th>음식스타일</th>
                    <th>평점</th>
                    <th>등록접속일</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody>
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
                      <button type="button" class="btn btn-primary" onclick="restaurantDelete()"
                        style="background-color: white; color: rgb(204, 51, 98); border-color: gray;"><i
                          class="fas fa-trash-alt"></i></button>
                    </td>
                  </tr>
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
                      <button type="button" class="btn btn-primary"
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
        function restaurantDelete(){
          alert("지우기 나와?");
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