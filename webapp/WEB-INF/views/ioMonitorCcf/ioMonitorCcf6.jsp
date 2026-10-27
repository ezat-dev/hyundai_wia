<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/io_monitor/vars.css">
  <link rel="stylesheet" href="/DHT/css/io_monitor/style.css">
<jsp:include page="../include/pluginpage.jsp"/>

  <style>
   a,button,input,select,h1,h2,h3,h4,h5,* {
       box-sizing: border-box; margin: 0; padding: 0; border: none; text-decoration: none; background: none;
       -webkit-font-smoothing: antialiased;
font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, 'Malgun Gothic', sans-serif;
   }
        .footer{ margin-top:85px; }
   menu, ol, ul { list-style-type: none; margin: 0; padding: 0; }
   </style>
  <title>Document</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="auto-con">
    <div class="group-3">
      <div class="main"></div>
    </div>
  <div class="io-xy-tab io-xy-tab-x" onclick="location.href='/DHT/ioMonitorCcfX1'">X</div>
  <div class="io-xy-tab io-xy-tab-y io-xy-tab-active" onclick="location.href='/DHT/ioMonitorCcf1'">Y</div>

  <div class="io-box-num-1">21</div>
  <div class="io-box-1">Y4D0 ~ Y4DF</div>
  <div class="io-box-frac-1">(1/1)</div>
  <div class="Y4D0" data-role="io-data" data-slot="0">Q'Tank Entr. Door Close</div>
  <div class="Y4D0" data-role="io-tag" data-slot="0">Y4D0</div>
  <div class="Y4D1" data-role="io-data" data-slot="1">Q'Tank Entr. Door Open</div>
  <div class="Y4D1" data-role="io-tag" data-slot="1">Y4D1</div>
  <div class="Y4D2" data-role="io-data" data-slot="2">Q'Tank Exit Door Close</div>
  <div class="Y4D2" data-role="io-tag" data-slot="2">Y4D2</div>
  <div class="Y4D3" data-role="io-data" data-slot="3">Q'Tank Exit Door Open</div>
  <div class="Y4D3" data-role="io-tag" data-slot="3">Y4D3</div>
  <div class="Y4D4" data-role="io-data" data-slot="4">Q'Tank E/V Down</div>
  <div class="Y4D4" data-role="io-tag" data-slot="4">Y4D4</div>
  <div class="Y4D5" data-role="io-data" data-slot="5">Q'Tank E/V Up</div>
  <div class="Y4D5" data-role="io-tag" data-slot="5">Y4D5</div>
  <div class="Y4D6" data-role="io-data" data-slot="6">Q'Tank Exhaust Pipe P-Burner Frame Dete.</div>
  <div class="Y4D6" data-role="io-tag" data-slot="6">Y4D6</div>
  <div class="Y4D7" data-role="io-data" data-slot="7">Q'Tank Exit Door Curtain Frame Dete.</div>
  <div class="Y4D7" data-role="io-tag" data-slot="7">Y4D7</div>
  <div class="Y4D8" data-role="io-data" data-slot="8">Q'Tank Exhaust Pipe P-Burner Frame Dete.</div>
  <div class="Y4D8" data-role="io-tag" data-slot="8">Y4D8</div>
  <div class="Y4D9" data-role="io-data" data-slot="9">Q'Tank E/V Product Dete.</div>
  <div class="Y4D9" data-role="io-tag" data-slot="9">Y4D9</div>
  <div class="Y4DA" data-role="io-data" data-slot="10">Q'Tank Exit Roller Position Product Dete.</div>
  <div class="Y4DA" data-role="io-tag" data-slot="10">Y4DA</div>
  <div class="Y4DB" data-role="io-data" data-slot="11">Q'Tank Exit Door P-Burner Frame Dete.</div>
  <div class="Y4DB" data-role="io-tag" data-slot="11">Y4DB</div>
  <div class="Y4DC" data-role="io-data" data-slot="12">SPARE</div>
  <div class="Y4DC" data-role="io-tag" data-slot="12">Y4DC</div>
  <div class="Y4DD" data-role="io-data" data-slot="13">SPARE</div>
  <div class="Y4DD" data-role="io-tag" data-slot="13">Y4DD</div>
  <div class="Y4DE" data-role="io-data" data-slot="14">SPARE</div>
  <div class="Y4DE" data-role="io-tag" data-slot="14">Y4DE</div>
  <div class="Y4DF" data-role="io-data" data-slot="15">SPARE</div>
  <div class="Y4DF" data-role="io-tag" data-slot="15">Y4DF</div>

  <div class="rectangle-5-x"></div>
  <div class="plc-input" onclick="location.href='/DHT/ioMonitorCcfX1'">PLC I/O <br />입력 모니터링</div>
  <div class="plc-input-1" onclick="location.href='/DHT/ioMonitorCcfX1'">X0A0 ~ X0DF</div>
  <div class="plc-input-2" onclick="location.href='/DHT/ioMonitorCcfX2'">X0E0 ~ X22F</div>
  <div class="plc-input-3" onclick="location.href='/DHT/ioMonitorCcfX3'">X230 ~ X29F</div>
  <div class="plc-input-4" onclick="location.href='/DHT/ioMonitorCcfX4'">X2A0 ~ X30F</div>
  <div class="plc-input-5" onclick="location.href='/DHT/ioMonitorCcfX5'">X310 ~ X34F</div>
  <div class="plc-input-6" onclick="location.href='/DHT/ioMonitorCcfX6'">X350 ~ X38F</div>
  <div class="plc-input-7" onclick="location.href='/DHT/ioMonitorCcfX7'">X400 ~ X45F</div>
  <div class="plc-input-8" onclick="location.href='/DHT/ioMonitorCcfX8'">X460 ~ X4BF</div>
  <div class="plc-output" onclick="location.href='/DHT/ioMonitorCcf1'">PLC I/O <br />출력 모니터링</div>
  <div class="plc-output-1" onclick="location.href='/DHT/ioMonitorCcf1'">Y120 ~ Y25F</div>
  <div class="plc-output-2" onclick="location.href='/DHT/ioMonitorCcf2'">Y280 ~ Y2FF</div>
  <div class="plc-output-3" onclick="location.href='/DHT/ioMonitorCcf3'">Y390 ~ Y3CF</div>
  <div class="plc-output-4" onclick="location.href='/DHT/ioMonitorCcf4'">Y3D0 ~ Y42F</div>
  <div class="plc-output-5" onclick="location.href='/DHT/ioMonitorCcf5'">Y430 ~ Y4CF</div>
  <div class="plc-output-6" onclick="location.href='/DHT/ioMonitorCcf6'">Y4D0 ~ Y4DF</div>
</div>

<script>
    $(document).ready(function() {
    	getAlarmText("ccf_in_6");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT06");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT06"); }, 2000);
    });

    function ccfAlarmListView(opcGroup) {
    	  $.ajax({
    	    url: "/DHT/ioMonitorCcf1/view",
    	    type: "post",
    	    dataType: "json",
    	    data:{"opcGroup":opcGroup},
    	    success: function(result) {
    	      var data = result.multiValues;
    	      for (let key in data) {
    	        for (let keys in data[key]) {
    	          var d = data[key];
    	          if(d[keys].action == "red"){
    	        	  red(keys, d[keys].value);
    	          }
    	        }
    	      }
    	    }
    	  });
    	}

    function red(keys, value){
      if (value == true) {
        $("." + keys).css("background-color", "red");
        $("." + keys).css("color", "white");
      } else {
        $("." + keys).css("background-color", "#f1f1f1");
        $("." + keys).css("color", "black");
      }
    }

    function getAlarmText(dbGroup){
      $.ajax({
        url: "/DHT/ioMonitorCcf1/data",
        type: "post",
        dataType: "json",
        data: {"dbGroup":dbGroup},
        success: function(result){
          var data = result.data;
          for (let key in data) {
            $("." + data[key].mi_webclass).text(data[key].mi_plcname);
          }
        }
      });
    }
  </script>

<script>
//ez_scada foldertag API(BIT값) 폴링 - folderId: 16 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(16, 1000);
});

function pollFolderBitTags(folderId, intervalMs){
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
				$("." + tag.name + "[data-role='io-tag']").toggleClass("io-tag-active", on);
			});
		}).always(function(){
			setTimeout(tick, intervalMs);
		});
	}
	tick();
}
</script>

</body>
</html>
