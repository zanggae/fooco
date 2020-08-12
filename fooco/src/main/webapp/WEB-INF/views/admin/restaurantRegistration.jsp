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
      color: rgb(204, 51, 98);
    }
    table tr td{
      padding-bottom: 1rem;
    }
  </style>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%;">
    <div class="container" style="padding: 5%; padding-left: 5rem;">
      <h2 style="font-family:'bold'">음식점 등록</h2> 
		    
      <br>
      <div class="container" style="padding:0;">
        <div class="row" style="margin-bottom: 1rem;">
          <div class="col">
            <form>
              <div style="width:85%; background-color:lightgray; border-radius:1rem; padding:2rem; padding-top:0;" align="center">
              <table>
                <tr>
                  <td>
                    <img src="img/logo.png" style="width: 8rem; height: 8rem;">
                    <input type="file" style="display: none;">
                  </td>
                </tr>
                <tr>
                  <td><label>가게이름</label></td>
                  <td><input type="text" name="resName"></td>
                </tr>
                <tr>
                  <td><label>가게설명</label></td>
                  <td><input type="text" name="resContent"></td>
                </tr>
                <tr>
                  <td><label>전화번호</label></td>
                  <td><input type="tel" name="resName"></td>
                </tr>
                <tr>
                  <td><label>서비스</label></td>
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
                  <td><label>음식점 카테고리</label></td>
                  <td>
                    <select>
                      <option>카테고리1</option>
                      <option>카테고리2</option>
                      <option>카테고리3</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td><label>맴버십</label></td>
                  <td><input type="radio" name="resMembership">일반맛집&nbsp; <input type="radio" name="resMembership">파트너맛집</td>
                </tr>
                <tr>
                  <td><label>지역</label></td>
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