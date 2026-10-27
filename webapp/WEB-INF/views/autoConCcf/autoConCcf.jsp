<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/auto_con/vars.css">
  <link rel="stylesheet" href="/DHT/css/auto_con/style.css">
  <jsp:include page="../include/pluginpage.jsp"/>
  
  <style>
   a,
   button,
   input,
   select,
   h1,
   h2,
   h3,
   h4,
   h5,
   * {
       box-sizing: border-box;
       margin: 0;
       padding: 0;
       border: none;
       text-decoration: none;
       background: none;
   
       -webkit-font-smoothing: antialiased;
font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, 'Malgun Gothic', sans-serif;
   }
        .footer{
  	 margin-top:85px;
   }
   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
   </style>
  <title>Document</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="auto-con">
    <div class="group-3">
      <div class="main"></div>

    </div>
    </div>

    <div class="auto-big-box-1"></div>
    <div class="ac-grid-wrap ac-grid-wrap-1">
    <table class="ac-table">
      <colgroup><col style="width:67.45px" /><col style="width:330.4px" /></colgroup>
      <tr><td class="sag-0" colspan="2">예열로 자동운전 조건 불만족</td></tr>
      <tr><td class="auto-0">X224</td><td class="data-0">예열로 입구 보조 리프터 하강 LS</td></tr>
      <tr><td class="auto-1">X225</td><td class="data-1">예열로 입구 보조 리프터 상승 LS 해제</td></tr>
      <tr><td class="auto-2">X412</td><td class="data-2">예열로 입구문 닫힘 SPB</td></tr>
      <tr><td class="auto-3">X413</td><td class="data-3">예열로 입구문 열림 SPB 해제</td></tr>
      <tr><td class="auto-4">X220</td><td class="data-4">예열로 입구문 닫힘 LS</td></tr>
      <tr><td class="auto-5">X221</td><td class="data-5">예열로 입구문 열림 LS 해제</td></tr>
      <tr><td class="auto-6">X222</td><td class="data-6">예열로 출구문 닫힘 LS</td></tr>
      <tr><td class="auto-7">X223</td><td class="data-7">예열로 출구문 열림 LS 해제</td></tr>
      <tr><td class="auto-8">X226</td><td class="data-8">예열로 출구 보조 리프터 상승 LS</td></tr>
      <tr><td class="auto-9">X227</td><td class="data-9">예열로 출구 보조 리프터 하강 LS 해제</td></tr>
    </table>
    </div>

    <div class="auto-big-box-2"></div>
    <div class="ac-grid-wrap ac-grid-wrap-2">
    <table class="ac-table">
      <colgroup><col style="width:67.45px" /><col style="width:330.4px" /></colgroup>
      <tr><td class="sag-1" colspan="2">연속로입구 자동운전 조건 불만족</td></tr>
      <tr><td class="auto-10">X228</td><td class="data-10">연속로 입구 보조 리프터 하강 LS</td></tr>
      <tr><td class="auto-11">X229</td><td class="data-11">연속로 입구 보조 리프터 상승 LS 해제</td></tr>
      <tr><td class="auto-12">X260</td><td class="data-12">가열존 입구문 닫힘 LS</td></tr>
      <tr><td class="auto-13">X261</td><td class="data-13">가열존 입구문 열림 LS 해제</td></tr>
      <tr><td class="auto-14">X94</td><td class="data-14">가열존 입구문 닫힘 LS</td></tr>
      <tr><td class="auto-15">X95</td><td class="data-15">가열존 입구문 열림 LS 해제</td></tr>
      <tr><td class="auto-16">X262</td><td class="data-16">가열존 출구문 닫힘 LS</td></tr>
      <tr><td class="auto-17">X263</td><td class="data-17">가열존 출구문 닫힘 LS 해제</td></tr>
      <tr><td class="auto-18">Y28E</td><td class="data-18">가열존 클러치 ON</td></tr>
      <tr><td class="auto-19">X0A6</td><td class="data-19">연속로 번아웃 스위치 해제</td></tr>
    </table>
    </div>

    <div class="auto-big-box-3"></div>
    <div class="ac-grid-wrap ac-grid-wrap-3">
    <table class="ac-table">
      <colgroup><col style="width:67.45px" /><col style="width:330.4px" /></colgroup>
      <tr><td class="sag-2" colspan="2">연속로출구 자동운전 조건 불만족</td></tr>
      <tr><td class="auto-20">X292</td><td class="data-20">균열2존 입구문 닫힘 LS</td></tr>
      <tr><td class="auto-21">X293</td><td class="data-21">균열2존 입구문 열림 LS 해제</td></tr>
      <tr><td class="auto-22">X2C0</td><td class="data-22">유조 입구문 닫힘 LS</td></tr>
      <tr><td class="auto-23">X2C1</td><td class="data-23">유조 입구문 열림 LS 해제</td></tr>
      <tr><td class="auto-24">Y2BC</td><td class="data-24">확산존 추출 클러치 ON</td></tr>
    </table>
    </div>

    <div class="auto-big-box-4"></div>
    <div class="ac-grid-wrap ac-grid-wrap-4">
    <table class="ac-table">
      <colgroup><col style="width:67.45px" /><col style="width:330.4px" /></colgroup>
      <tr><td class="sag-3" colspan="2">유조 자동운전 조건 불만족</td></tr>
      <tr><td class="auto-25">X2C0</td><td class="data-25">연속로 출구문 닫힘 LS</td></tr>
      <tr><td class="auto-26">X9B</td><td class="data-26">연속로 출구문 열림 LS 해제</td></tr>
      <tr><td class="auto-27">X2C3</td><td class="data-27">유조 엘리베이터 상승 LS</td></tr>
      <tr><td class="auto-28">X2C2</td><td class="data-28">유조 엘리베이터 하강 LS 해제</td></tr>
      <tr><td class="auto-29">X2C5</td><td class="data-29">유조 출구문 닫힘 LS</td></tr>
      <tr><td class="auto-30">X2C6</td><td class="data-30">유조 출구문 열림 LS 해제</td></tr>
    </table>
    </div>




<script>

//로드
$(document).ready(function() {
	$('[class^="auto-"]').css({
		'padding': '5px'
	});

	$('[class^="data-"]').css({
		'padding': '5px'
	});
	
	getCcfAutoConText();
	ccfAutoConListView();
	autoConCcfInterval = setInterval("ccfAutoConListView()", 1000);

	pollAutoConBitTags(8, 1000);
});

function ccfAutoConListView(){
	$.ajax({
		url:"/DHT/autoConCcf/view",
		type:"post",
		dataType:"json",
		success:function(result){				
			var data = result.multiValues;
			
            for(let key in data){
            	for(let keys in data[key]){
            		var d = data[key];
					
					if(d[keys].action == "c"){
						c(keys, d[keys].value)	
					}else if(d[keys].action == "cv"){
						cv(keys, d[keys].value)
						}
            	}                    	
            }
		}
	});
}

function c(keys, value){
	
	if(value == true){
		$("."+keys).css("background-color","red");
		$("."+keys).css("color","white");
	}else{
		$("."+keys).css("background-color","#f1f1f1");
		$("."+keys).css("color","black");
	}
	
}


//sag-N 헤더: 신호=1일 때 bit-on 클래스로 박스/폰트색 전환 + 문구 끝단어 "불만족"->"만족" 치환
function cv(keys, value) {
	var $el = $("." + keys);
	$el.toggleClass("bit-on", value == true);
	var text = $el.text();
	if (value == true && text.indexOf("불만족") !== -1) {
		$el.text(text.replace("불만족", "만족"));
	} else if (value != true && text.indexOf("불만족") === -1 && text.indexOf("만족") !== -1) {
		$el.text(text.replace("만족", "불만족"));
	}
}

//ez_scada foldertag API(BIT값) 폴링 - folderId: 8 = 자동운전조건
//신호=1일 때 auto-N/data-N 박스색+폰트색 전부 반전, sag-N은 헤더 색상+문구(불만족->만족) 전환
function pollAutoConBitTags(folderId, intervalMs){
	function tick(){
		$.ajax({
			url: "http://localhost:5050/api/foldertag/values?folderId=" + folderId,
			type: "get",
			dataType: "json",
			timeout: 4000
		}).done(function(result){
			if(!result || !result.tags) return;
			result.tags.forEach(function(tag){
				if(!tag.name) return;
				var on = (tag.value === 1 || tag.value === true);
				if(tag.name.indexOf("sag-") === 0){
					cv(tag.name, on);
				}else if(tag.name.indexOf("data-") === 0){
					var autoName = tag.name.replace("data-", "auto-");
					$("." + tag.name + ", ." + autoName).toggleClass("bit-on", on);
				}
			});
		}).always(function(){
			setTimeout(tick, intervalMs);
		});
	}
	tick();
}




function getCcfAutoConText(){
	$.ajax({
		url:"/DHT/autoConCcf/autoConCcfData",
		type:"post",
		dataType:"json",
		data:{},
		success:function(result){
			var data = result.data;
			
            for(let key in data){

            	var n_data = (data[key].ai_webclass).replace("auto","data");
                
            	$("."+data[key].ai_webclass).text(data[key].ai_plcaddr)
            	$("."+n_data).text(data[key].ai_plcname)
            }
		}
	});
}












</script>










</body>
</html>