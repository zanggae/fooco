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

    select {
      width: 200px;
      padding: .8em .5em;
      font-family: inherit;
      background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      border: 1px solid lightgray;
      border-radius: 3px;
    }

    select::-ms-expand {
      display: none;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>게시판 관리</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="#">관리자페이지</a></li>
        <li class="breadcrumb-item active">게시판 관리</li>
      </ol>
      <br>
      <div class="container">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col-6" style="margin:auto;">
            <p style="margin:auto;">카테고리를 선택하시면 해당 게시물이 조회됩니다.</p>
          </div>
          <div class="col-6">
            <select class="float-right">
              <option selected>선택</option>
              <option>공지사항</option>
              <option>FAQ</option>
            </select>

          </div>
        </div>
        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>게시물 제목</th>
                    <th>작성자</th>
                    <th>카테고리</th>
                    <th>등록 날짜</th>
                    <th>조회수</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>ddd</td>
                    <td>12-458264</td>
                    <td>gold</td>
                    <td>2020-05-14</td>
                    <td>2020-05-14</td>
                    <td>
                      <button type="button" class="btn btn-primary" onclick="restaurantDelete()"
                        style="background-color: white; color: rgb(204, 51, 98); border-color: gray;"><i
                          class="fas fa-trash-alt"></i></button>
                    </td>
                  </tr><tr>
                    <td>ddd</td>
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
                    <td>ddd</td>
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
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <button type="button" class="btn float-right mr-3" onclick="location.href='boardRegistration.do'"
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