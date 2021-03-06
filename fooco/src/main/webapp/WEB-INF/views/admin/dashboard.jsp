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
  .DCard{height: 210px;}
  .aStyle{text-decoration:none; color: black;} 
  .aStyle:hover {
	text-decoration:none;
	}
  </style>
  <script src="https://code.jquery.com/jquery.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  
</head>

<body>
  <jsp:include page="../common/adminSideMenubar.jsp"></jsp:include>
  
  <div style="margin-left: 13%; padding:5%; padding-top: 3%;">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="container">
            <h1 id="clock" style="color:gray;" align="right">00:00</h1>
            <br>
            <div class="row">
              <div class="col-4">
                <div class="card">
                  <div class="card-body">

                    <h5 class="card-title"><b>방문자수</b></h5>
                    <p class="card-text"><b>today : </b>${vc.day }</p>
                    <p class="card-text"><b>total 방문자수 : </b>${vc.totalCount }</p>
                    <p class="card-text"><b>today 방문자수 : </b>${vc.count }</p>
                  </div>
                </div>
              </div>
              <div class="col-4">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title"><b>회원현황</b></h5>
                    <p class="card-text"><b>총 회원가입 수 : </b>${membershipStatus.totalCount }</p>
                    <p class="card-text"><b>현재 회원 수 : </b>${membershipStatus.yCount }</p>
                    <p class="card-text"><b>탈퇴 회원 수 : </b>${membershipStatus.nCount }</p>
                  </div>
                </div>
              </div>
              <div class="col-4">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title"><b>맴버십</b></h5>
                    <p class="card-text"><b>total 가입자수 : </b>${membershipCount.total }</p>
                    <p class="card-text"><b>gold 가입자수 : </b>${membershipCount.gold }</p>
                    <p class="card-text"><b>silver 가입자수 : </b>${membershipCount.silver }</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="container mt-3">
            <br>
            <div class="row">
              <div class="col-6">
                <h4>사이트 방문자 현황 그래프</h4>
                <div id="Line_Controls_Chart">
                  <!-- 라인 차트 생성할 영역 -->
                  <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
                  <!-- 컨트롤바를 생성할 영역 -->
                  <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
                </div>
              </div>
              <div class="col-6">
                <h4>맴버십 회원 현황 그래프</h4>
                <div id="Line_Controls_Chart1">
                  <!-- 라인 차트 생성할 영역 -->
                  <div id="lineChartArea1" style="padding:0px 20px 0px 0px;"></div>
                  <!-- 컨트롤바를 생성할 영역 -->
                  <div id="controlsArea1" style="padding:0px 20px 0px 0px;"></div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <div class="card">
                  <div class="card-header">미답변 문의</div>
                  <div class="card-body">
                  <div class="DCard">  
                  	<c:forEach var="iq" items="${inquiry }">
	                <c:url var="selectInquiryOne" value="selectInquiryOne.do">
	             		<c:param name="boardId" value="${iq.boardId }"/>
	             	</c:url>   
		            <a class="aStyle" href="${selectInquiryOne }">${iq.boardTitle }</a> 
                    <hr>
                    </c:forEach>
                    </div>
                    <p class="card-text"></p>
                    <a href="inquiryEdit.do" class="btn btn-primary">더보러 가기</a>
                  </div>
                </div>
              </div>
              <div class="col-6">
                <div class="card">
                  <div class="card-header">공지사항</div>
                  <div class="card-body" >
                  <div class="DCard" >
                    <c:forEach var="no" items="${notice }">
                    <c:url var="selectBoardOneAdmin" value="selectBoardOneAdmin.do">
	             		<c:param name="boardId" value="${no.boardId }"/>
	             	</c:url>   
		            <a class="aStyle" href="${selectBoardOneAdmin }">${no.boardTitle }</a>                    
                    <hr>
                    </c:forEach>
                  </div>
                    <p class="card-text"></p>
                    <a href="#" onclick="aNotice()"class="btn btn-primary">더보러 가기</a>
                    <script>
                    	function aNotice(){
	                    	location.href="boardEdit.do?categoryNo=1";                    		
                    	}
                    </script>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col-6">
                <div class="card">
                  <div class="card-header">FAQ</div>
                  <div class="card-body">
                  <div class="DCard">
                    <c:forEach var="fa" items="${faq }">
                    <c:url var="selectBoardOneAdmin" value="selectBoardOneAdmin.do">
	             		<c:param name="boardId" value="${fa.boardId }"/>
	             	</c:url>   
		            <a class="aStyle" href="${selectBoardOneAdmin }">${fa.boardTitle }</a>
                    <hr>
                    </c:forEach>
                    </div>
                    <p class="card-text"></p>
                    <a href="#" onclick="aFaq()" class="btn btn-primary">더보러 가기</a>
                    <script>
                    	function aFaq(){
	                    	location.href="boardEdit.do?categoryNo=2";                    		
                    	}
                    </script>
                  </div>
                </div>
              </div>
              <div class="col-6">
                <div class="card">
                  <div class="card-header">마이리스트 추천</div>
                  <div class="card-body">
                  <div class="DCard">
                    <c:forEach var="ml" items="${mylist }">
                    <c:url var="selectOneMylistAdmin" value="selectOneMylistAdmin.do">
	             		<c:param name="mlId" value="${ml.mlId }"/>
	             	</c:url>   
		            <a class="aStyle" href="${selectOneMylistAdmin }">${ml.mlTitle }</a>
                    <hr>
                    </c:forEach>
                    </div>
                    <p class="card-text"></p>
                    <a href="mylistEditAdmin.do" class="btn btn-primary">더보러 가기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <c:forEach var="s" items="${st }" varStatus="status">
             <input type="hidden" value="${s.staticDate }" name="sdate">
             <input type="hidden" value="${s.staticCount }" name="scount">
             <input type="hidden" value="${s.goldCount }" name="goldCount">
             <input type="hidden" value="${s.silverCount }" name="silverCount">           
          </c:forEach>         
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

        </div>
      </div>

    </div>
  </div>

  <script>
    var clockTarget = document.getElementById("clock");

    function clock() {
      var date = new Date();

      // date Object를 받아오고 
      var month = date.getMonth();

      // 달을 받아옵니다 
      var clockDate = date.getDate();

      // 몇일인지 받아옵니다 
      var day = date.getDay();

      // 요일을 받아옵니다. 
      var week = ['일', '월', '화', '수', '목', '금', '토'];

      // 요일은 숫자형태로 리턴되기때문에 미리 배열을 만듭니다. 
      var hours = date.getHours();
		hours = hours < 10 ? '0'+ hours : hours;

      // 시간을 받아오고 
      var minutes = date.getMinutes();
      	minutes = minutes < 10 ? '0'+ minutes : minutes;
				
      // 분도 받아옵니다.
      var seconds = date.getSeconds();
		seconds = seconds < 10 ? '0'+ seconds : seconds;
      // 초까지 받아온후 
      clockTarget.innerText = month+1+'월 '+clockDate+'일 '+week[day]+'요일 ' + hours + ':' + minutes + ':' + seconds;
      
      

      // 월은 0부터 1월이기때문에 +1일을 해주고 

      // 시간 분 초는 한자리수이면 시계가 어색해보일까봐 10보다 작으면 앞에0을 붙혀주는 작업을 3항연산으로 했습니다. 
    }


    function init() {

      clock();

      // 최초에 함수를 한번 실행시켜주고 
      setInterval(clock, 1000);

      // setInterval이라는 함수로 매초마다 실행을 해줍니다.

      // setInterval은 첫번째 파라메터는 함수이고 두번째는 시간인데 밀리초단위로 받습니다. 1000 = 1초 

    }


    init();


  </script>

  <script>

    var chartDrowFun = {

      chartDrow: function () {
        var chartData = '';

        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
        var chartDateformat = 'yyyy년MM월dd일';
        //라인차트의 라인 수
        var chartLineCount = 10;
        //컨트롤러 바 차트의 라인 수
        var controlLineCount = 10;


        function drawDashboard() {

          var data = new google.visualization.DataTable();
          //그래프에 표시할 컬럼 추가
          data.addColumn('datetime', '날짜');
          data.addColumn('number', '방문자수');

          //그래프에 표시할 데이터
          var dataRow = [];
		
          var list = new Array();
     	  $("input[name=scount]").each(function(index, item){     		  
     		 list.push($(item).val());
     	   });          
          
     	  $("input[name=sdate]").each(function(index, item){
     		  var sdate = sqlToJsDate($(item).val());
     		  /* console.log(sdate); */
     		  var count = list[index];
     		  count *= 1;
     		  /* console.log(count); */
     		 dataRow = [sdate, count];
             data.addRow(dataRow);
     	   });
          
          
          var chart = new google.visualization.ChartWrapper({
            chartType: 'LineChart',
            containerId: 'lineChartArea', //라인 차트 생성할 영역
            options: {
              isStacked: 'percent',
              focusTarget: 'category',
              height: 350,
              width: '100%',
              legend: { position: "top", textStyle: { fontSize: 13 } },
              pointSize: 5,
              tooltip: { textStyle: { fontSize: 12 }, showColorCode: true, trigger: 'both' },
              hAxis: {
                format: chartDateformat, gridlines: {
                  count: chartLineCount, units: {
                    years: { format: ['yyyy년'] },
                    months: { format: ['MM월'] },
                    days: { format: ['dd일'] },
                    hours: { format: ['HH시'] }
                  }
                }, textStyle: { fontSize: 12 }
              },
              vAxis: { minValue: 100, viewWindow: { min: 0 }, gridlines: { count: -1 }, textStyle: { fontSize: 12 } },
              animation: { startup: true, duration: 1000, easing: 'in' },
              annotations: {
                pattern: chartDateformat,
                textStyle: {
                  fontSize: 15,
                  bold: true,
                  italic: true,
                  color: '#871b47',
                  auraColor: '#d799ae',
                  opacity: 0.8,
                  pattern: chartDateformat
                }
              }
            }
          });

          var control = new google.visualization.ControlWrapper({
            controlType: 'ChartRangeFilter',
            containerId: 'controlsArea',  //control bar를 생성할 영역
            options: {
              ui: {
                chartType: 'LineChart',
                chartOptions: {
                  chartArea: { 'width': '60%', 'height': 80 },
                  hAxis: {
                    'baselineColor': 'none', format: chartDateformat, textStyle: { fontSize: 12 },
                    gridlines: {
                      count: controlLineCount, units: {
                        years: { format: ['yyyy년'] },
                        months: { format: ['MM월'] },
                        days: { format: ['dd일'] },
                        hours: { format: ['HH시'] }
                      }
                    }
                  }
                }
              },
              filterColumnIndex: 0
            }
          });

          var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat });
          date_formatter.format(data, 0);

          var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
          window.addEventListener('resize', function () { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
          dashboard.bind([control], [chart]);
          dashboard.draw(data);

        }
        google.charts.setOnLoadCallback(drawDashboard);

      }
    }
    var chartDrowFun1 = {

      chartDrow1: function () {
        var chartData = '';

        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
        var chartDateformat = 'yyyy년MM월dd일';
        //라인차트의 라인 수
        var chartLineCount = 10;
        //컨트롤러 바 차트의 라인 수
        var controlLineCount = 10;


        function drawDashboard() {

          var data = new google.visualization.DataTable();
          //그래프에 표시할 컬럼 추가
          data.addColumn('datetime', '날짜');
          data.addColumn('number', '골드');
          data.addColumn('number', '실버');
          data.addColumn('number', '전체');

          //그래프에 표시할 데이터
          var dataRow = [];

          
          var list2 = new Array();
     	  $("input[name=goldCount]").each(function(index, item){     		  
     		 list2.push($(item).val());     		 
     	   });          
     	  var list3 = new Array();
    	  $("input[name=silverCount]").each(function(index, item){     		  
    		 list3.push($(item).val());
    	   });
    	  
     	  $("input[name=sdate]").each(function(index, item){
     		  var sdate = sqlToJsDate($(item).val());
     		  console.log(sdate);
     		  var goldCount1 = list2[index];
     		 console.log(goldCount1);
     		  var silverCount1 = list3[index];
     		 console.log(silverCount1);
     		 goldCount1 *= 1;
     		 silverCount1 *= 1;
    		  var total = goldCount1+silverCount1;
    		 
     		 dataRow = [sdate, goldCount1,silverCount1,total];
             data.addRow(dataRow);
     	   });
          
          
          
          
          
          
          /* for (var i = 0; i <= 29; i++) { //랜덤 데이터 생성
            var total = Math.floor(Math.random() * 300) + 1;
            var man = Math.floor(Math.random() * total) + 1;
            var woman = total - man;

            dataRow = [new Date('2018', '09', i, '11'), man, woman, total];
            data.addRow(dataRow);
          } */


          var chart = new google.visualization.ChartWrapper({
            chartType: 'LineChart',
            containerId: 'lineChartArea1', //라인 차트 생성할 영역
            options: {
              isStacked: 'percent',
              focusTarget: 'category',
              height: 350,
              width: '100%',
              legend: { position: "top", textStyle: { fontSize: 13 } },
              pointSize: 5,
              tooltip: { textStyle: { fontSize: 12 }, showColorCode: true, trigger: 'both' },
              hAxis: {
                format: chartDateformat, gridlines: {
                  count: chartLineCount, units: {
                    years: { format: ['yyyy년'] },
                    months: { format: ['MM월'] },
                    days: { format: ['dd일'] },
                    hours: { format: ['HH시'] }
                  }
                }, textStyle: { fontSize: 12 }
              },
              vAxis: { minValue: 100, viewWindow: { min: 0 }, gridlines: { count: -1 }, textStyle: { fontSize: 12 } },
              animation: { startup: true, duration: 1000, easing: 'in' },
              annotations: {
                pattern: chartDateformat,
                textStyle: {
                  fontSize: 15,
                  bold: true,
                  italic: true,
                  color: '#871b47',
                  auraColor: '#d799ae',
                  opacity: 0.8,
                  pattern: chartDateformat
                }
              }
            }
          });

          var control = new google.visualization.ControlWrapper({
            controlType: 'ChartRangeFilter',
            containerId: 'controlsArea1',  //control bar를 생성할 영역
            options: {
              ui: {
                chartType: 'LineChart',
                chartOptions: {
                  chartArea: { 'width': '60%', 'height': 80 },
                  hAxis: {
                    'baselineColor': 'none', format: chartDateformat, textStyle: { fontSize: 12 },
                    gridlines: {
                      count: controlLineCount, units: {
                        years: { format: ['yyyy년'] },
                        months: { format: ['MM월'] },
                        days: { format: ['dd일'] },
                        hours: { format: ['HH시'] }
                      }
                    }
                  }
                }
              },
              filterColumnIndex: 0
            }
          });

          var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat });
          date_formatter.format(data, 0);

          var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart1'));
          window.addEventListener('resize', function () { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
          dashboard.bind([control], [chart]);
          dashboard.draw(data);

        }
        google.charts.setOnLoadCallback(drawDashboard);

      }
    }

    $(document).ready(function () {
      google.charts.load('current', { 'packages': ['line', 'controls'] });
      chartDrowFun.chartDrow(); //chartDrow() 실행
      chartDrowFun1.chartDrow1(); //chartDrow() 실행
    });
    
    function sqlToJsDate(sqlDate){
        //sqlDate in SQL DATETIME format ("yyyy-mm-dd hh:mm:ss.ms")
        var sqlDateArr1 = sqlDate.split("-");
        //format of sqlDateArr1[] = ['yyyy','mm','dd hh:mm:ms']
        var sYear = sqlDateArr1[0];
        var sMonth = (Number(sqlDateArr1[1]) - 1).toString();
        var sDay = sqlDateArr1[2];
        var sHour = '10';
    return new Date(sYear,sMonth,sDay,sHour);
    }
  </script>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>