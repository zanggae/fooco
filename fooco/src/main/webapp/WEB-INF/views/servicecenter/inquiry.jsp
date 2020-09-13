<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">
<head>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
    <script src="/resources/js/summernote-ko-KR.js"></script>
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/0d9e858b34.js" crossorigin="anonymous"></script>

    <!-- summernote script (밑부분에는 인식이 안되서 위에 올림) -->
    <script>
        $(document).ready(function () {
            //여기 아래 부분
            $('#summernote').summernote({

                height: 400,                     // 에디터 높이
                width: 650,                     // 에디터 넓이
                minHeight: 400,                      // 최소 높이
                maxHeight: 400,                      // 최대 높이
                focus: false,                       // 에디터 로딩후 포커스를 맞출지 여부
                lang: "ko-KR",                  // 한글 설정
                placeholder: '최대 2048자까지 쓸 수 있습니다',   //placeholder 설정
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                /*   callbacks: {	//여기 부분이 이미지를 첨부하는 부분
                         onImageUpload : function(files) {
                             uploadSummernoteImageFile(files[0],this);
                         }
                     }, */


                toolbar: [
                    // [groupName, [list of button]]
                    ['fontname', ['fontname']],
                    ['fontsize', ['fontsize']],
                    ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                    ['color', ['color']],
                    ['table', ['table']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['height', ['height']],
                    ['insert', ['picture', 'link', 'video']],
                    ['view', ['fullscreen', 'help']]
                ],
                fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체', '바탕체'],
                fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72']

            });

        });



        /**
        * 이미지 파일 업로드
        */
        function uploadSummernoteImageFile(file, editor) {
            data = new FormData();
            data.append("file", file);
            $.ajax({
                data: data,
                type: "POST",
                url: "/uploadSummernoteImageFile",
                contentType: false,
                processData: false,
                success: function (data) {
                    //항상 업로드된 파일의 url이 있어야 한다.
                    $(editor).summernote('insertImage', data.url);
                }
            });


        }

		


    </script>


    <script>


        //서머노트에 text 쓰기
        $('#summernote').summernote('insertText');


        // 서머노트 쓰기 활성화
        $('#summernote').summernote('enable');


        // 서머노트 리셋
        $('#summernote').summernote('reset');


        // 마지막으로 한 행동 취소 ( 뒤로가기 )
        $('#summernote').summernote('undo');
        // 앞으로가기
        $('#summernote').summernote('redo');


    </script>



    <style>
        /*폰트*/
        @font-face {
            font-family: 'heavy';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
            font-weight: bold;
            font-style: normal;
        }

        @font-face {
            font-family: 'bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'medium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'light';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        * {
            font-family: 'light';
        }

       /*문의 등록*/
     .title{margin-top: 4rem; margin-left: 29rem;}
      #boardTitle{ box-shadow: none !important;}
      .bord{border:solid; border-top : none; border-left: none; border-right: none;}
      .box{border: rgb(253, 215, 129); width: 15rem; height: 15rem; background-color: rgb(253, 215, 129); position: absolute;}
      .leftMenubar li{list-style: none;}



  
  </style>
</head>
<body>
    <!--메뉴바-->
    <header>
        <jsp:include page="../common/commonHeader.jsp"></jsp:include>
    </header>
    <section>

        <!--문의 등록-->
        <div class="container">
            <h3 class="title">1:1 문의하기</h3>
            <br><br>
            <div class="row">
                <div class="col-3">
                </div>
                <!--form-->
                <form action="inquiryInsert.do" method="post" enctype="Multipart/form-data" class="form-inline">
                    <!--select-->
                    <label>문의선택</label>
                    <select class="custom-select my-1 mr-sm-2" id="none" style="margin-left: 2rem; width: 25rem;"
                        name="inquiryCode">
                        <option selected value="">선택</option>
                        <option value="1">음식점 문의</option>
                        <option value="2">리뷰 문의</option>
                        <option value="3">테마 문의</option>
                        <option value="4">기타 문의</option>
                    </select>
            </div>
            <!--input-->
            <div class="row" style="margin-top: 2rem;">
                <div class="col-3">
                </div>
                <!-- 제목 -->
                <label>&nbsp;&nbsp;제목</label>
                <input type="text" name="boardTitle" class="form-control" id="boardTitle" placeholder="제목을 입력하세요"
                    style="margin-left: 3.4rem; width: 25rem; margin-top: -0.3rem;">
            </div>

            <!-- 내용 -->
            <br>
            <label style="margin-left:17.3rem">&nbsp;&nbsp;내용</label>
            <div class="row" style="margin-top: 2rem;">
                <div class="col-3">
                </div>
                <textarea id="summernote" name="summernoteContent" style="margin-left:3rem">
        </textarea>
            </div>


            <br><br>
			
            <input type="submit" value="등록하기" class="btn btn-warning" id="none" style="margin-left:51rem; width: 7rem;">
            </form>
        </div>
		

        <!--container 끝-->
    </section>
    <br><br><br><br>
    <!--footer-->
    <footer>
        <div class="mainFooter shadow-sm d-flex justify-content-center align-items-center">
            <span style="font-family:'medium'">Copyright </span>
        </div>
        </div>
    </footer>
    <br><br><br><br>
    
	<!-- <script>
	if($("#boardTitle").val()==""){
        swal("이름을 입력하세요");
        $("#boardTitle").focus();
        return;
   }

	</script> -->




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!--  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
     -->

</body>

</html>