<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
     <!-- 아이콘 -->
     <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
     <style>
       /*폰트*/
      @font-face {font-family: 'heavy'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff'); font-weight: bold; font-style: normal;}
      @font-face {font-family: 'bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal;}
      @font-face {font-family: 'medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); font-weight: normal; font-style: normal;}
      @font-face {font-family: 'light'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); font-weight: normal; font-style: normal;}
      * {font-family:'light';}
      
    
      /*FAQ*/
      .center{border: rgb(253, 215, 129); width: 50rem; height: 40rem; background-color: rgb(253, 215, 129); position: absolute;}
      .header_font{ margin-left: 3rem; margin-top: 1.5rem; font-size: 1.8rem; font-weight: bold;}
      .title_font{margin-left: 3rem; margin-top: 1.5rem; font-size: 1.4rem; font-weight: bold;}
      .content_font{margin-left: 3rem; margin-top: 1rem; font-size: 1.1rem;}
      
       /*좌측 메뉴바*/
    .left_menu{border: rgb(253, 215, 129); width:9.5rem; height: 10rem;background-color: rgb(253, 215, 129);}
    .li_1{color:black; font-weight: bolder;margin-left: 0.4rem;}
    .leftMenubar li{list-style: none;}
    .li_2{color:black;margin-left: 0.4rem;}
    
    </style>
  </head>
  <body>
    <header>
    	<jsp:include page="../common/menubar.jsp"></jsp:include>  
    	
              <div class="row">
                <div class="col-2">
              </div>
                &nbsp;&nbsp;&nbsp;&nbsp;<h6>HOME ></h6><h6 style="color: rgb(204, 51, 98)">고객센터</h6>
              </div>
      </header>
              <br>
    <!--FAQ -->        
  <section>
        <div class="row">
        <div class="col-2">
        </div>
        <div class="col-6">
        <div class="center">
            <h1 class="header_font">FAQ</h1>
            <br>
            <div style="padding-left:7rem;">
            <h1 class="title_font">멤버십</h1>
            
            <h1 class="content_font">[멤버십안내]&nbsp;&nbsp;<a href="#exampleModal" data-toggle="modal" style="color: black;">6개월과 12개월의 차이는 무엇인가요?</a></h1>
            <h1 class="content_font">[멤버십안내]&nbsp;&nbsp;<a href="#exampleModal" data-toggle="modal" style="color: black;">6개월과 12개월의 차이는 무엇인가요?</a></h1>
            <h1 class="content_font">[멤버십안내]&nbsp;&nbsp;<a href="#exampleModal" data-toggle="modal" style="color: black;">6개월과 12개월의 차이는 무엇인가요?</a></h1>

        </div></div></div>

        <div class="col-2">
        </div>
  

         <!-- FAQ 답변에 대한 Modal -->
         <!-- Vertically centered modal -->
        <div class="modal-dialog modal-dialog-centered">
         <!-- Vertically centered scrollable modal -->
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">멤버십 안내</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          6개월이랑 12개월의 혜택은 다르지 않습니다. 대신 조금 더 저렴한 가격에 멤버십을 이용할 수 있습니다.
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary"onClick="location.href='inquiry.html'">1:1 문의등록하기</button>
        </div>
      </div>
    </div>
  </div>
    </div>
    </div>
       </div>   
  </div>   <!--container끝-->
      </section>

      
      <!--footer-->
      <footer>
        <div class="mainFooter shadow-sm d-flex justify-content-center align-items-center">
          <span style="font-family:'medium'">Copyright </span>                
      </div>
      </footer>



      <!--script-->
       <script>
           $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
            })

       </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

