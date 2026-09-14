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
    .wia-tabulator-wrap .tabulator-row.wia-row-resolved { background: #f0fdf4; box-shadow: inset 3px 0 0 #16a34a; }
    .wia-tabulator-wrap .tabulator-row.tabulator-selected,
    .wia-tabulator-wrap .tabulator-row.row_select { background: #dbeafe !important; }
  </style>

  <title>알람 내역</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="wia-page wia-page-wrap">
    <div class="wia-page-header">
      <div>
        <div class="wia-page-title">알람 내역</div>
        <div class="wia-page-sub">연속로(CCF) 발생 / 해제 알람 이력</div>
      </div>
    </div>
    <div class="wia-card">
      <div class="wia-toolbar">
        <input type="date" id="startDate" placeholder="시작 날짜">
        <span>~</span>
        <input type="date" id="endDate" placeholder="종료 날짜">
        <button class="wia-btn" onclick="alarmHistoryCcf()">조회</button>
      </div>
      <div class="wia-tabulator-wrap">
        <div id="alarmHistoryList"></div>
      </div>
    </div>
  </div>
<script>
//전역변수
var alarmHistory;

//로드
$(function(){
    var now = new Date();
	var year = now.getFullYear();
	var month = checkDate(now.getMonth()+1);
	var date = checkDate(now.getDate());

	$("#endDate").val(year+"-"+month+"-"+date);


	var before = new Date();
	before.setFullYear(before.getFullYear(), before.getMonth(), before.getDate()-1);

	var b_year = before.getFullYear();
	var b_month = checkDate(before.getMonth()+1);
	var b_date = checkDate(before.getDate());

	$("#startDate").val(b_year+"-"+b_month+"-"+b_date);

	alarmHistoryCcf();
});
//이벤트

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

function alarmHistoryCcf(){

	var sdate = $("#startDate").val();
	var edate = $("#endDate").val();

	var sdateTime = sdate+" 00:00:00";
	var edateTime = edate+" 23:59:59";

	alarmHistory = new Tabulator("#alarmHistoryList", {
		    height:"550px",
		    layout:"fitColumns",
		    selectable:true,	//로우 선택설정
		    tooltips:true,
		    selectableRangeMode:"click",
		    reactiveData:true,
		    headerHozAlign:"center",
		    ajaxConfig:"POST",
		    ajaxLoader:false,
		    ajaxURL:"/DHT/alarmHistoryCcf/list",
		    ajaxProgressiveLoad:"scroll",
		    ajaxParams:{
		    	"sdateTime":sdateTime,
		    	"edateTime":edateTime
		    },
		    placeholder:"조회된 데이터가 없습니다.",
		    paginationSize:20,
		    ajaxResponse:function(url, params, response){
		        //url - the URL of the request
		        //params - the parameters passed with the request
		        //response - the JSON object returned in the body of the response.
				$("#alarmHistoryList .tabulator-col.tabulator-sortable").css("height","29px");
		        return response; //return the response data to tabulator
		    },
		    columns:[
//			    {title:"고유번호", field:"idx"},
		        {title:"태그명", field:"tagname", sorter:"string", width:160,
		        	hozAlign:"center"},
		        {title:"알람명", field:"alarmdesc", sorter:"string", width:500,
		        	hozAlign:"center"},
		        {title:"발생시간", field:"time", sorter:"string", width:210,
		        	hozAlign:"center"},
		        {title:"해제시간", field:"lead_alarmtime", sorter:"string", width:200,
		        	hozAlign:"center"}
		    ],
		    rowFormatter:function(row){
			    var data = row.getData();

			    row.getElement().style.fontWeight = "700";
			    if(data.success_chk == "N" || data.success_chk == "" || data.success_chk == null){
				 	row.getElement().classList.remove("wia-row-resolved");
				}else{
					row.getElement().classList.add("wia-row-resolved");
				}
			},
			rowClick:function(e, row){

				$("#alarmHistoryList .tabulator-tableHolder > .tabulator-table > .tabulator-row").each(function(index, item){

					if($(this).hasClass("row_select")){
						$(this).removeClass('row_select');
						row.getElement().className += " row_select";
					}else{
						$("#alarmHistoryList div.row_select").removeClass("row_select");
						row.getElement().className += " row_select";


					}
				});
			}
		});
	}

//다이얼로그

</script>
</body>
</html>
