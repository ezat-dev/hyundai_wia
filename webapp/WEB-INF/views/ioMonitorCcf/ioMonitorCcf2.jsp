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

  <div class="io-box-num-1">05</div>
  <div class="io-box-1">Y280 ~ Y28F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="Y280" data-role="io-data" data-slot="0">PH'Z Entr. Door Curtain Gas</div>
  <div class="Y280" data-role="io-tag" data-slot="0">Y280</div>
  <div class="Y281" data-role="io-data" data-slot="1">PH'Z Entr. Door Curtain Air</div>
  <div class="Y281" data-role="io-tag" data-slot="1">Y281</div>
  <div class="Y282" data-role="io-data" data-slot="2">PH'Z Entr. Door Pilot Burner Gas</div>
  <div class="Y282" data-role="io-tag" data-slot="2">Y282</div>
  <div class="Y283" data-role="io-data" data-slot="3">SPARE</div>
  <div class="Y283" data-role="io-tag" data-slot="3">Y283</div>
  <div class="Y284" data-role="io-data" data-slot="4">SPARE</div>
  <div class="Y284" data-role="io-tag" data-slot="4">Y284</div>
  <div class="Y285" data-role="io-data" data-slot="5">SPARE</div>
  <div class="Y285" data-role="io-tag" data-slot="5">Y285</div>
  <div class="Y286" data-role="io-data" data-slot="6">SPARE</div>
  <div class="Y286" data-role="io-tag" data-slot="6">Y286</div>
  <div class="Y287" data-role="io-data" data-slot="7">SPARE</div>
  <div class="Y287" data-role="io-tag" data-slot="7">Y287</div>
  <div class="Y288" data-role="io-data" data-slot="8">PH'Z Entr. Door Close</div>
  <div class="Y288" data-role="io-tag" data-slot="8">Y288</div>
  <div class="Y289" data-role="io-data" data-slot="9">PH'Z Entr. Door Open</div>
  <div class="Y289" data-role="io-tag" data-slot="9">Y289</div>
  <div class="Y28A" data-role="io-data" data-slot="10">Carb.Zone Entr. Door Close</div>
  <div class="Y28A" data-role="io-tag" data-slot="10">Y28A</div>
  <div class="Y28B" data-role="io-data" data-slot="11">Carb.Zone Entr. Door Open</div>
  <div class="Y28B" data-role="io-tag" data-slot="11">Y28B</div>
  <div class="Y28C" data-role="io-data" data-slot="12">Pilot Burner Ignition Tr.</div>
  <div class="Y28C" data-role="io-tag" data-slot="12">Y28C</div>
  <div class="Y28D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="Y28D" data-role="io-tag" data-slot="13">Y28D</div>
  <div class="Y28E" data-role="io-data" data-slot="14">Carb.Zone Entr. Clutch ON</div>
  <div class="Y28E" data-role="io-tag" data-slot="14">Y28E</div>
  <div class="Y28F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="Y28F" data-role="io-tag" data-slot="15">Y28F</div>

  <div class="io-box-num-2">06</div>
  <div class="io-box-2">Y2B0 ~ Y2BF</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="Y2B0" data-role="io-data" data-slot="16">Hard.1-Zone Entr. Door Close</div>
  <div class="Y2B0" data-role="io-tag" data-slot="16">Y2B0</div>
  <div class="Y2B1" data-role="io-data" data-slot="17">Hard.1-Zone Entr. Door Open</div>
  <div class="Y2B1" data-role="io-tag" data-slot="17">Y2B1</div>
  <div class="Y2B2" data-role="io-data" data-slot="18">Hard.2-Zone Entr. Door Close</div>
  <div class="Y2B2" data-role="io-tag" data-slot="18">Y2B2</div>
  <div class="Y2B3" data-role="io-data" data-slot="19">Hard.2-Zone Entr. Door Open</div>
  <div class="Y2B3" data-role="io-tag" data-slot="19">Y2B3</div>
  <div class="Y2B4" data-role="io-data" data-slot="20">SPARE</div>
  <div class="Y2B4" data-role="io-tag" data-slot="20">Y2B4</div>
  <div class="Y2B5" data-role="io-data" data-slot="21">SPARE</div>
  <div class="Y2B5" data-role="io-tag" data-slot="21">Y2B5</div>
  <div class="Y2B6" data-role="io-data" data-slot="22">SPARE</div>
  <div class="Y2B6" data-role="io-tag" data-slot="22">Y2B6</div>
  <div class="Y2B7" data-role="io-data" data-slot="23">SPARE</div>
  <div class="Y2B7" data-role="io-tag" data-slot="23">Y2B7</div>
  <div class="Y2B8" data-role="io-data" data-slot="24">SPARE</div>
  <div class="Y2B8" data-role="io-tag" data-slot="24">Y2B8</div>
  <div class="Y2B9" data-role="io-data" data-slot="25">SPARE</div>
  <div class="Y2B9" data-role="io-tag" data-slot="25">Y2B9</div>
  <div class="Y2BA" data-role="io-data" data-slot="26">SPARE</div>
  <div class="Y2BA" data-role="io-tag" data-slot="26">Y2BA</div>
  <div class="Y2BB" data-role="io-data" data-slot="27">SPARE</div>
  <div class="Y2BB" data-role="io-tag" data-slot="27">Y2BB</div>
  <div class="Y2BC" data-role="io-data" data-slot="28">Diff.&amp;Cool.Zone Clutch ON</div>
  <div class="Y2BC" data-role="io-tag" data-slot="28">Y2BC</div>
  <div class="Y2BD" data-role="io-data" data-slot="29">SPARE</div>
  <div class="Y2BD" data-role="io-tag" data-slot="29">Y2BD</div>
  <div class="Y2BE" data-role="io-data" data-slot="30">SPARE</div>
  <div class="Y2BE" data-role="io-tag" data-slot="30">Y2BE</div>
  <div class="Y2BF" data-role="io-data" data-slot="31">SPARE</div>
  <div class="Y2BF" data-role="io-tag" data-slot="31">Y2BF</div>

  <div class="io-box-num-3">07</div>
  <div class="io-box-3">Y2E0 ~ Y2EF</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="Y2E0" data-role="io-data" data-slot="32">Q'Tank Exit Door Curtain SOL</div>
  <div class="Y2E0" data-role="io-tag" data-slot="32">Y2E0</div>
  <div class="Y2E1" data-role="io-data" data-slot="33">Q'Tank Exit Door Pilot Burner ON</div>
  <div class="Y2E1" data-role="io-tag" data-slot="33">Y2E1</div>
  <div class="Y2E2" data-role="io-data" data-slot="34">Q'Tank Exit Door Pilot Burner Gas SOL</div>
  <div class="Y2E2" data-role="io-tag" data-slot="34">Y2E2</div>
  <div class="Y2E3" data-role="io-data" data-slot="35">Q'Tank Exhaust Pipe Damper</div>
  <div class="Y2E3" data-role="io-tag" data-slot="35">Y2E3</div>
  <div class="Y2E4" data-role="io-data" data-slot="36">Q'Tank Exhaust Ring Burner</div>
  <div class="Y2E4" data-role="io-tag" data-slot="36">Y2E4</div>
  <div class="Y2E5" data-role="io-data" data-slot="37">Q'Tank Exhaust Pipe Pilot Burner Gas SOL</div>
  <div class="Y2E5" data-role="io-tag" data-slot="37">Y2E5</div>
  <div class="Y2E6" data-role="io-data" data-slot="38">Q'Tank N2 Purge</div>
  <div class="Y2E6" data-role="io-tag" data-slot="38">Y2E6</div>
  <div class="Y2E7" data-role="io-data" data-slot="39">SPARE</div>
  <div class="Y2E7" data-role="io-tag" data-slot="39">Y2E7</div>
  <div class="Y2E8" data-role="io-data" data-slot="40">Q'Tank Entr. Door Close</div>
  <div class="Y2E8" data-role="io-tag" data-slot="40">Y2E8</div>
  <div class="Y2E9" data-role="io-data" data-slot="41">Q'Tank Entr. Door Open</div>
  <div class="Y2E9" data-role="io-tag" data-slot="41">Y2E9</div>
  <div class="Y2EA" data-role="io-data" data-slot="42">Q'Tank Elevator Down</div>
  <div class="Y2EA" data-role="io-tag" data-slot="42">Y2EA</div>
  <div class="Y2EB" data-role="io-data" data-slot="43">Q'Tank Elevator Up</div>
  <div class="Y2EB" data-role="io-tag" data-slot="43">Y2EB</div>
  <div class="Y2EC" data-role="io-data" data-slot="44">Q'Tank Cooling Water SV</div>
  <div class="Y2EC" data-role="io-tag" data-slot="44">Y2EC</div>
  <div class="Y2ED" data-role="io-data" data-slot="45">Q'Tank Exit Door Close</div>
  <div class="Y2ED" data-role="io-tag" data-slot="45">Y2ED</div>
  <div class="Y2EE" data-role="io-data" data-slot="46">Q'Tank EXit Door Open</div>
  <div class="Y2EE" data-role="io-tag" data-slot="46">Y2EE</div>
  <div class="Y2EF" data-role="io-data" data-slot="47">SPARE</div>
  <div class="Y2EF" data-role="io-tag" data-slot="47">Y2EF</div>

  <div class="io-box-num-4">08</div>
  <div class="io-box-4">Y2F0 ~ Y2FF</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="Y2F0" data-role="io-data" data-slot="48">Q'Tank Exhaust Pipe Burner IGT</div>
  <div class="Y2F0" data-role="io-tag" data-slot="48">Y2F0</div>
  <div class="Y2F1" data-role="io-data" data-slot="49">Q'Tank Exit Door Burner IGT</div>
  <div class="Y2F1" data-role="io-tag" data-slot="49">Y2F1</div>
  <div class="Y2F2" data-role="io-data" data-slot="50">SPARE</div>
  <div class="Y2F2" data-role="io-tag" data-slot="50">Y2F2</div>
  <div class="Y2F3" data-role="io-data" data-slot="51">SPARE</div>
  <div class="Y2F3" data-role="io-tag" data-slot="51">Y2F3</div>
  <div class="Y2F4" data-role="io-data" data-slot="52">SPARE</div>
  <div class="Y2F4" data-role="io-tag" data-slot="52">Y2F4</div>
  <div class="Y2F5" data-role="io-data" data-slot="53">SPARE</div>
  <div class="Y2F5" data-role="io-tag" data-slot="53">Y2F5</div>
  <div class="Y2F6" data-role="io-data" data-slot="54">SPARE</div>
  <div class="Y2F6" data-role="io-tag" data-slot="54">Y2F6</div>
  <div class="Y2F7" data-role="io-data" data-slot="55">SPARE</div>
  <div class="Y2F7" data-role="io-tag" data-slot="55">Y2F7</div>
  <div class="Y2F8" data-role="io-data" data-slot="56">SPARE</div>
  <div class="Y2F8" data-role="io-tag" data-slot="56">Y2F8</div>
  <div class="Y2F9" data-role="io-data" data-slot="57">SPARE</div>
  <div class="Y2F9" data-role="io-tag" data-slot="57">Y2F9</div>
  <div class="Y2FA" data-role="io-data" data-slot="58">SPARE</div>
  <div class="Y2FA" data-role="io-tag" data-slot="58">Y2FA</div>
  <div class="Y2FB" data-role="io-data" data-slot="59">SPARE</div>
  <div class="Y2FB" data-role="io-tag" data-slot="59">Y2FB</div>
  <div class="Y2FC" data-role="io-data" data-slot="60">SPARE</div>
  <div class="Y2FC" data-role="io-tag" data-slot="60">Y2FC</div>
  <div class="Y2FD" data-role="io-data" data-slot="61">SPARE</div>
  <div class="Y2FD" data-role="io-tag" data-slot="61">Y2FD</div>
  <div class="Y2FE" data-role="io-data" data-slot="62">SPARE</div>
  <div class="Y2FE" data-role="io-tag" data-slot="62">Y2FE</div>
  <div class="Y2FF" data-role="io-data" data-slot="63">SPARE</div>
  <div class="Y2FF" data-role="io-tag" data-slot="63">Y2FF</div>


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
    	getAlarmText("ccf_in_2");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT02");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT02"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 12 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(12, 1000);
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
