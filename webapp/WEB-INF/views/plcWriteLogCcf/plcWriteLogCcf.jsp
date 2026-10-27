<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../include/pluginpage.jsp"/>
<style>
    * { box-sizing: border-box; }
    .wia-tabulator-wrap .tabulator { border: none; font-family: inherit; font-size: 13px; }
    .wia-tabulator-wrap .tabulator-header { background: #f8fafc; border-bottom: 2px solid #e5e7eb; }
    .wia-tabulator-wrap .tabulator-col { background: #f8fafc; border-right: 1px solid #eef0f2; }
    .wia-tabulator-wrap .tabulator-col-title { color: #4b5563; font-weight: 700; }
    .wia-tabulator-wrap .tabulator-row { border-bottom: 1px solid #eef0f2; }
    .wia-tabulator-wrap .tabulator-row.tabulator-row-even { background: #fafbfc; }
    .wia-tabulator-wrap .tabulator-row:hover { background: #eff6ff !important; }
  </style>

  <title>로그</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="wia-page wia-page-wrap">
    <div class="wia-page-header">
      <div>
        <div class="wia-page-title">로그</div>
        <div class="wia-page-sub">사용자가 PLC에 값을 쓴 이력(누가, 언제, 어느 주소에, 어떤 값을)</div>
      </div>
    </div>
    <div class="wia-card">
      <div class="wia-toolbar">
        <input type="date" id="startDate" placeholder="시작 날짜">
        <span>~</span>
        <input type="date" id="endDate" placeholder="종료 날짜">
        <button class="wia-btn" onclick="plcWriteLogCcf()">조회</button>
      </div>
      <div class="wia-tabulator-wrap">
        <div id="plcWriteLogList"></div>
      </div>
    </div>
  </div>
<script>
//전역변수
var plcWriteLog;

//로드
$(function(){
    var now = new Date();
	var year = now.getFullYear();
	var month = checkDate(now.getMonth()+1);
	var date = checkDate(now.getDate());

	$("#endDate").val(year+"-"+month+"-"+date);

	var before = new Date();
	before.setFullYear(before.getFullYear(), before.getMonth(), before.getDate()-7);

	var b_year = before.getFullYear();
	var b_month = checkDate(before.getMonth()+1);
	var b_date = checkDate(before.getDate());

	$("#startDate").val(b_year+"-"+b_month+"-"+b_date);

	plcWriteLogCcf();
});

//함수
function checkDate(i) {
	var result;
 	if(i<=9){
 		result = "0"+i;
	}else{
		result = i;
	}
   	return result;
}

function plcWriteLogCcf(){

	var sdate = $("#startDate").val();
	var edate = $("#endDate").val();

	var sdateTime = sdate+" 00:00:00";
	var edateTime = edate+" 23:59:59";

	plcWriteLog = new Tabulator("#plcWriteLogList", {
		    height:"600px",
		    layout:"fitColumns",
		    tooltips:true,
		    reactiveData:true,
		    headerHozAlign:"center",
		    ajaxConfig:"POST",
		    ajaxLoader:false,
		    ajaxURL:"/DHT/plcWriteLogCcf/list",
		    ajaxProgressiveLoad:"scroll",
		    ajaxParams:{
		    	"sdateTime":sdateTime,
		    	"edateTime":edateTime
		    },
		    placeholder:"조회된 데이터가 없습니다.",
		    paginationSize:30,
		    columns:[
		        {title:"사용자", field:"userId", sorter:"string", width:120, hozAlign:"center"},
		        {title:"메뉴", field:"pageName", sorter:"string", width:150, hozAlign:"center"},
		        {title:"태그명", field:"tagName", sorter:"string", width:220, hozAlign:"center"},
		        {title:"주소", field:"address", sorter:"string", width:120, hozAlign:"center"},
		        {title:"쓴 값", field:"value", sorter:"string", width:120, hozAlign:"center"},
		        {title:"기록시각", field:"writtenAt", sorter:"string", hozAlign:"center"}
		    ]
		});
	}

</script>
</body>
</html>
