<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .table td {vertical-align:middle;}
    body{
      background-color: #fbfbfb;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
	<jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%;">
      <h2>회원관리</h2>
      <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="dashboard.do">관리자페이지</a></li>
        <li class="breadcrumb-item active">회원관리</li>
      </ol>
      <br>
      <div class="container">
        <div class="row">
          <div class="col-8">
            <h4>전체 회원(200)</h4>
            <p>&nbsp;관리 매뉴에서는 <span style="color: red;">이메일보내기, 회원정지/해제, 리뷰정지/해제</span> 처리를 할 수 있습니다.</p>

          </div>
          <div class="col-4">
            <br>
            <form class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0" style="padding-bottom: 10px;">
              <div class="input-group">
                  <input class="form-control" type="text" placeholder="Search for..." aria-label="Search"
                      aria-describedby="basic-addon2" />
                  <div class="input-group-append"></div>
                  <button class="btn btn-primary mr-0" style="background-color: rgb(204, 51, 98); color: white; border-color: rgb(204, 51, 98);" type="button" id="jin">
                      <i class="fas fa-search"></i></button>
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
                    <th>이름</th>
                    <th>주문일</th>
                    <th>맴버십 <i class="fas fa-arrows-alt-v" style="color: gray;"></i></th>
                    <th>가입일</th>
                    <th>최근접속일</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td align="center">
                      <img src="img/logo.png" width="60" height="60" style="border-radius: 50%;">
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
                      <button type="button" class="btn btn-primary" style="background-color: white; color: rgb(204, 51, 98); border-color: rgb(204, 51, 98);" data-toggle="modal" data-target="#exampleModal" data-whatever="내 아이디"><i class="fas fa-cog"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td align="center">
                      <img src="img/logo.png" width="60" height="60" style="border-radius: 50%;">
                    </td>
                    <td>
                      김동원(워니비)<br>
                      wjddhkswoddl@naver.com
                    </td>
                    <td>12-458264</td>
                    <td>gold</td>
                    <td>2020-05-14</td>
                    <td>2020-05-14</td>
                    <td>
                      <button type="button" class="btn btn-primary" style="background-color: white; color: rgb(204, 51, 98); border-color: rgb(204, 51, 98);" data-toggle="modal" data-target="#exampleModal" data-whatever="내 아이디"><i class="fas fa-cog"></i></button>
                    </td>
                  </tr>
                </tbody>
              </table>          
              </script>
            </div>
          </div>
        </div>
      </div>
      

      

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">회원 관리</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">            
            <input type="hidden" class="form-control" id="recipient-name">
          </div>
          <div align="center">
          <button type="button" class="btn" style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;" data-toggle="modal" data-target="#exampleModal1" data-whatever="사용자 이메일">이메일</button></td>
          <button type="button" class="btn" onclick="membershipSuspension()" style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;">회원정지</button></td>
          <button type="button" class="btn" onclick="reviewProhibition()"style="background:rgb(253, 215, 129); color:rgb(204, 51, 98); width:95px;">리뷰정지</button></td>
        </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script>
  function membershipSuspension(){
    alert("나 나와?");
  }
  function reviewProhibition(){
    alert("나는 어때?");
  }
</script>
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">이메일 보내기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>
<script>  
$(function(){
  $('#exampleModal').on('show.bs.modal', function (event) {
var button = $(event.relatedTarget) // Button that triggered the modal
var recipient = button.data('whatever') // Extract info from data-* attributes
// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
var modal = $(this)
modal.find('.modal-body input').val(recipient)
})

$('#exampleModal1').on('show.bs.modal', function (event) {
  $('#exampleModal').modal("hide");
var button = $(event.relatedTarget) // Button that triggered the modal
var recipient = button.data('whatever') // Extract info from data-* attributes
// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
var modal = $(this)
modal.find('.modal-body input').val(recipient)
})
})
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