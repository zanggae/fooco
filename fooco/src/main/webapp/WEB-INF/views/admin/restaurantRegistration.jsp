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
    label{
      font-weight: bold;
    }
    table tr td{
      padding-bottom: 1rem;
    }

    /* 사진이미지 */
    #imgtest img{
        margin-left: 25px;
    }
    /* 사진이미지 밑 글씨 */
    #imgtest p{
        margin-top: 5px;
        margin-left: 75px;
    }
    /* input태그 css */
    input{
        border-radius: 3px;
        border: 0.5px solid black;
    }
    /* 노란색 테두리 */
    #background_{
        border:8px solid  rgb(253, 215, 129);
        border-radius: 30px;
        background: white;
    }
    /* 사진테두리 */
    #img_background{
        margin-left: 30px;
        padding-top: 10px;
        padding-bottom: 10px;
        margin-top: 30px;
        width: 25%;
        border: 1px solid black;
        border-radius: 5px;
    }
    /* 등록버튼 */
    #postcodify_search_button{
        border: 1px solid rgb(204, 51, 98);
        background:rgb(204, 51, 98);
        border-radius: 3px;
        color: white;
    }
    #postcodify_search_button:hover{
        background: rgb(253, 215, 129);
        color:rgb(204, 51, 98);
    }
    /* 아이콘 */
    .fa-sticky-note{
        font-size: 40px;
        margin-left: 55px;
        position: absolute;
    }
    /* 메뉴 + 하는 버튼 */
    #plus_btn{
        border: none;
        background:rgb(204, 51, 98);
        color: white;
        border-radius: 3px;
    }
    .menu_2{
        display: none;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%; padding-left: 5rem;">
      <i class="far fa-sticky-note"></i><h2 style="font-family:'bold'; margin-left: 100px; margin-bottom: 20px;">음식점 등록</h2>      
      <br>
      <div class="container" style="padding:0;">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col">
            <form>
              <div id="background_" style="width:80%; border-radius:1rem; padding:2rem; padding-top:0; margin-left: 40px;">
                <div id="imgtest">
                    <div id="img_background"><img src="image/LOGO.png" style="width: 8rem; height: 10rem;"></div><br>
                    <p>[음식점 사진]</p>
                </div>
              <table style="margin-left: 300px; margin-top: -260px;">
                <tr>
                  <td>
                    <input type="file" style="display: none;">
                  </td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>가게이름</label></td>
                  <td><input type="text" name="resName"></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>가게설명</label></td>
                  <td><input type="text" name="resContent"></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>전화번호</label></td>
                  <td><input type="tel" name="resName"></td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>메뉴1</label></td>
                  <td><input type="text" name="resName"></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>메뉴2</label></td>
                  <td><input type="text" name="resName"></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>메뉴3</label></td>
                  <td><input type="text" name="resName"></td>
                </tr>

                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>서비스</label></td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="resFilter">주차</td>
                  <td><input type="checkbox" name="resFilter">와이파이</td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="resFilter">룸</td>
                  <td><input type="checkbox" name="resFilter">노키즈존</td>
                </tr>
                <tr>
                  <td><input type="checkbox" name="resFilter">야외좌석</td>
                  <td><input type="checkbox" name="resFilter">유아시설</td>
                </tr> 
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>음식점 카테고리</label></td>
                  <td>
                    <select>
                      <option>카테고리1</option>
                      <option>카테고리2</option>
                      <option>카테고리3</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>맴버십</label></td>
                  <td><input type="radio" name="resMembership">일반맛집&nbsp; <input type="radio" name="resMembership">파트너맛집</td>
                </tr>
                <tr>
                  <td><i class="fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<label>지역</label></td>
                  <td><select>
                    <option>카테고리1</option>
                    <option>카테고리2</option>
                    <option>카테고리3</option>
                  </select></td>
                </tr>

                <tr>
                  <td><label>우편번호</label></td>                  
                  <td>
                    <input type="text" name="post" 
                       class="postcodify_postcode5" value="" size="6">
                     <button type="button" id="postcodify_search_button">검색</button>
                  </td>
                </tr>
                <tr>
                  <td><label>도로명 주소</label></td>
                  <td><input type="text" name="address1"
                        class="postcodify_address" value=""></td>
                </tr>
                <tr>
                  <td><label>상세 주소</label></td>
                  <td><input type="text" name="address2"
                      class="postcodify_extra_info" value=""></td>
                </tr>
                <!-- Postcodify를 로딩하자 -->
                <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
                <script>
                  $(function(){
                    $("#postcodify_search_button").postcodifyPopUp();
                  })                 
                </script>
                
              </table>
            </div>
            </form>
          </div>          
        </div>





      </div>
      <div align="center" style="width: 85%;">
        <button type="button" class="btn"
          style="background:rgb(204, 51, 98); color: white; width:95px;">등록</button>
      </div>


      
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