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
  <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
  
   <!-- 아이콘 -->
   <script src="https://kit.fontawesome.com/4b6b63d8f6.js" crossorigin="anonymous"></script>
  
  <style>
    @font-face {font-family: 'heavy';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
      font-weight: bold; font-style: normal;}

    @font-face {font-family: 'bold';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
      font-weight: normal; font-style: normal;}

    @font-face {font-family: 'medium';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
                font-weight: normal; font-style: normal;}

    @font-face { font-family: 'light';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
                font-weight: normal; font-style: normal;}

    * {font-family: 'light';}

  
	/*a태그 설정*/
    A:link {text-decoration: none; color:#646464;}
    /* A:visited {text-decoration: none; color:#646464;} */
     A:active {text-decoration: none; color:#646464;} 
    A:hover {text-decoration: none; color:rgb(204,51,98);}
	/*버튼 설정*/
	#button{box-shadow: none !important; background-color: rgb(204,51,98); border-style:none; margin-top:2rem; width:10rem; height:3rem;}
    /*내용 설정*/
    .round{border-style : none; background-color: #FFFAFA; height: auto;}
    .menuname{font-size: 5.5rem; font-family: 'bold'; color :rgb(253, 215, 129); margin-left: 3rem; margin-top: 1rem; }
    .title{font-size : 2.5rem; font-family: 'medium'; color : black; margin-top:10rem; margin-left: 3rem;}
    .date{ font-size : 1.5rem; color: #646464; margin-left: 3rem; margin-top: 0.5rem;}
    .content{font-size : 1.2rem; color: black; margin-top : 5rem;}
    .list{font-size : 2rem; color:#646464; margin-left: 3rem; margin-bottom: 4rem; font-family: 'light'!important;}
    .imgdownload{font-size:1.2rem; color: black; margin-left:3rem;}
    
    </style>
    </head>
<body>
  <header>
	 <jsp:include page="../common/commonHeader.jsp"></jsp:include>
  </header>

  <section>
    <div class="container">
      <div class="round">
     
      
        <a href="notice.do" class="menuname">NOITCE</a>
        <div><h1 class="imgdownload">첨부파일 : 
         <a href="${contextPath }//resources/buploadFiles/${board.imageOriginName}" download>${board.imageOriginName}</a></h1>
        </div>
        
        <div class="title">${board.boardTitle }
        </div>
        <div class="date">
           ${board.boardCreateDate }
        </div>
        <div class="row">
          <div class="col-1">
          </div>
          <div class="col-10">
            <div class="content">
          		${board.boardContent }
          		
            </div>
          </div>
          <div class="col-1">


          </div>

        </div>
        <br><br><br><br><br><br>
        <div class="row">
          <div class="col-5">
            <a href="notice.do" class="list"><i class="fas fa-arrow-left" style="font-size: 1.5rem;">&nbsp;&nbsp;뒤로가기</a></i>
          </div>

          <div class="col-5">
			 <c:if test="${loginUser.nickName eq '관리자' }">   
			 
        	 <c:url var="noticedetail" value="selectBoardOneAdmin.do">
            	<c:param name="boardId" value="${board.boardId }"/>
            </c:url>
        	 <button type="button" class="btn btn-secondary" id="button" onclick="location.href='${noticedetail}'">수정하기</button>
         	 </c:if> 
         	
          </div>

        </div>
        <br><br>
      </div>



    </div>	<!-- container끝 -->



    

  </section>

  <footer>


  </footer>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
</body>

</html>