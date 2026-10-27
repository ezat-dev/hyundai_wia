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
  <div class="io-xy-tab io-xy-tab-x io-xy-tab-active" onclick="location.href='/DHT/ioMonitorCcfX1'">X</div>
  <div class="io-xy-tab io-xy-tab-y" onclick="location.href='/DHT/ioMonitorCcf1'">Y</div>

  <div class="io-box-num-1">05</div>
  <div class="io-box-1">X0E0 ~ X0EF</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X0E0" data-role="io-data" data-slot="0">Carb.Zone Control CP. AL-1</div>
  <div class="X0E0" data-role="io-tag" data-slot="0">X0E0</div>
  <div class="X0E1" data-role="io-data" data-slot="1">Carb.Zone Control CP. AL-2</div>
  <div class="X0E1" data-role="io-tag" data-slot="1">X0E1</div>
  <div class="X0E2" data-role="io-data" data-slot="2">Diff.Zone Control CP. AL-1</div>
  <div class="X0E2" data-role="io-tag" data-slot="2">X0E2</div>
  <div class="X0E3" data-role="io-data" data-slot="3">Diff.Zone Control CP. AL-2</div>
  <div class="X0E3" data-role="io-tag" data-slot="3">X0E3</div>
  <div class="X0E4" data-role="io-data" data-slot="4">Hard.Zone Control CP. AL-1</div>
  <div class="X0E4" data-role="io-tag" data-slot="4">X0E4</div>
  <div class="X0E5" data-role="io-data" data-slot="5">Hard.Zone Control CP. AL-2</div>
  <div class="X0E5" data-role="io-tag" data-slot="5">X0E5</div>
  <div class="X0E6" data-role="io-data" data-slot="6">SPARE</div>
  <div class="X0E6" data-role="io-tag" data-slot="6">X0E6</div>
  <div class="X0E7" data-role="io-data" data-slot="7">SPARE</div>
  <div class="X0E7" data-role="io-tag" data-slot="7">X0E7</div>
  <div class="X0E8" data-role="io-data" data-slot="8">RX Gas Pressure Low</div>
  <div class="X0E8" data-role="io-tag" data-slot="8">X0E8</div>
  <div class="X0E9" data-role="io-data" data-slot="9">Enrich Gas Pressure Low</div>
  <div class="X0E9" data-role="io-tag" data-slot="9">X0E9</div>
  <div class="X0EA" data-role="io-data" data-slot="10">Enrich Gas Pressure High</div>
  <div class="X0EA" data-role="io-tag" data-slot="10">X0EA</div>
  <div class="X0EB" data-role="io-data" data-slot="11">SPARE</div>
  <div class="X0EB" data-role="io-tag" data-slot="11">X0EB</div>
  <div class="X0EC" data-role="io-data" data-slot="12">SPARE</div>
  <div class="X0EC" data-role="io-tag" data-slot="12">X0EC</div>
  <div class="X0ED" data-role="io-data" data-slot="13">SPARE</div>
  <div class="X0ED" data-role="io-tag" data-slot="13">X0ED</div>
  <div class="X0EE" data-role="io-data" data-slot="14">SPARE</div>
  <div class="X0EE" data-role="io-tag" data-slot="14">X0EE</div>
  <div class="X0EF" data-role="io-data" data-slot="15">SPARE</div>
  <div class="X0EF" data-role="io-tag" data-slot="15">X0EF</div>

  <div class="io-box-num-2">06</div>
  <div class="io-box-2">X200 ~ X20F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X200" data-role="io-data" data-slot="16">PH'F Entr. Conveyor Roller-1 Forward SPB</div>
  <div class="X200" data-role="io-tag" data-slot="16">X200</div>
  <div class="X201" data-role="io-data" data-slot="17">PH'F Entr. Conv. Roller-1 Backward SPB</div>
  <div class="X201" data-role="io-tag" data-slot="17">X201</div>
  <div class="X202" data-role="io-data" data-slot="18">PH'F Entr. Conveyor Position-1</div>
  <div class="X202" data-role="io-tag" data-slot="18">X202</div>
  <div class="X203" data-role="io-data" data-slot="19">PH'F Entr. Conveyor Position-1</div>
  <div class="X203" data-role="io-tag" data-slot="19">X203</div>
  <div class="X204" data-role="io-data" data-slot="20">PH'F Entr. Conveyor Position-2</div>
  <div class="X204" data-role="io-tag" data-slot="20">X204</div>
  <div class="X205" data-role="io-data" data-slot="21">PH'F Entr. Conveyor Position-3</div>
  <div class="X205" data-role="io-tag" data-slot="21">X205</div>
  <div class="X206" data-role="io-data" data-slot="22">PH'F Entr. Conveyor Position-4</div>
  <div class="X206" data-role="io-tag" data-slot="22">X206</div>
  <div class="X207" data-role="io-data" data-slot="23">PH'F Entr. Conveyor Position-5</div>
  <div class="X207" data-role="io-tag" data-slot="23">X207</div>
  <div class="X208" data-role="io-data" data-slot="24">PH'F Entr. Conveyor Position-5 Overrun</div>
  <div class="X208" data-role="io-tag" data-slot="24">X208</div>
  <div class="X209" data-role="io-data" data-slot="25">SPARE</div>
  <div class="X209" data-role="io-tag" data-slot="25">X209</div>
  <div class="X20A" data-role="io-data" data-slot="26">PH'F Entr. Retriver Backward</div>
  <div class="X20A" data-role="io-tag" data-slot="26">X20A</div>
  <div class="X20B" data-role="io-data" data-slot="27">PH'F Entr. Retriver Forkward-1</div>
  <div class="X20B" data-role="io-tag" data-slot="27">X20B</div>
  <div class="X20C" data-role="io-data" data-slot="28">PH'F Entr. Retriver Forkward-2</div>
  <div class="X20C" data-role="io-tag" data-slot="28">X20C</div>
  <div class="X20D" data-role="io-data" data-slot="29">SPARE</div>
  <div class="X20D" data-role="io-tag" data-slot="29">X20D</div>
  <div class="X20E" data-role="io-data" data-slot="30">SPARE</div>
  <div class="X20E" data-role="io-tag" data-slot="30">X20E</div>
  <div class="X20F" data-role="io-data" data-slot="31">SPARE</div>
  <div class="X20F" data-role="io-tag" data-slot="31">X20F</div>

  <div class="io-box-num-3">07</div>
  <div class="io-box-3">X210 ~ X21F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X210" data-role="io-data" data-slot="32">PH'F Stock Charge Exit. Lifter Down</div>
  <div class="X210" data-role="io-tag" data-slot="32">X210</div>
  <div class="X211" data-role="io-data" data-slot="33">PH'F Stock Charge Exit. Lifter Up</div>
  <div class="X211" data-role="io-tag" data-slot="33">X211</div>
  <div class="X212" data-role="io-data" data-slot="34">PH'F Stock Charge Exit. Lifter Position</div>
  <div class="X212" data-role="io-tag" data-slot="34">X212</div>
  <div class="X213" data-role="io-data" data-slot="35">PH'F Entr. Conv.Position-1</div>
  <div class="X213" data-role="io-tag" data-slot="35">X213</div>
  <div class="X214" data-role="io-data" data-slot="36">PH'F Entr. Conv.Position-2</div>
  <div class="X214" data-role="io-tag" data-slot="36">X214</div>
  <div class="X215" data-role="io-data" data-slot="37">SPARE</div>
  <div class="X215" data-role="io-tag" data-slot="37">X215</div>
  <div class="X216" data-role="io-data" data-slot="38">SPARE</div>
  <div class="X216" data-role="io-tag" data-slot="38">X216</div>
  <div class="X217" data-role="io-data" data-slot="39">SPARE</div>
  <div class="X217" data-role="io-tag" data-slot="39">X217</div>
  <div class="X218" data-role="io-data" data-slot="40">SPARE</div>
  <div class="X218" data-role="io-tag" data-slot="40">X218</div>
  <div class="X219" data-role="io-data" data-slot="41">SPARE</div>
  <div class="X219" data-role="io-tag" data-slot="41">X219</div>
  <div class="X21A" data-role="io-data" data-slot="42">SPARE</div>
  <div class="X21A" data-role="io-tag" data-slot="42">X21A</div>
  <div class="X21B" data-role="io-data" data-slot="43">SPARE</div>
  <div class="X21B" data-role="io-tag" data-slot="43">X21B</div>
  <div class="X21C" data-role="io-data" data-slot="44">SPARE</div>
  <div class="X21C" data-role="io-tag" data-slot="44">X21C</div>
  <div class="X21D" data-role="io-data" data-slot="45">SPARE</div>
  <div class="X21D" data-role="io-tag" data-slot="45">X21D</div>
  <div class="X21E" data-role="io-data" data-slot="46">SPARE</div>
  <div class="X21E" data-role="io-tag" data-slot="46">X21E</div>
  <div class="X21F" data-role="io-data" data-slot="47">SPARE</div>
  <div class="X21F" data-role="io-tag" data-slot="47">X21F</div>

  <div class="io-box-num-4">08</div>
  <div class="io-box-4">X220 ~ X22F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X220" data-role="io-data" data-slot="48">PH'F Entr.Door Close</div>
  <div class="X220" data-role="io-tag" data-slot="48">X220</div>
  <div class="X221" data-role="io-data" data-slot="49">PH'F Entr.Door Open</div>
  <div class="X221" data-role="io-tag" data-slot="49">X221</div>
  <div class="X222" data-role="io-data" data-slot="50">PH'F Exit Door Close</div>
  <div class="X222" data-role="io-tag" data-slot="50">X222</div>
  <div class="X223" data-role="io-data" data-slot="51">PH'F Exit Door Open</div>
  <div class="X223" data-role="io-tag" data-slot="51">X223</div>
  <div class="X224" data-role="io-data" data-slot="52">PH'F Entr Aux. Lifter Down</div>
  <div class="X224" data-role="io-tag" data-slot="52">X224</div>
  <div class="X225" data-role="io-data" data-slot="53">PH'F Entr Aux. Lifter Up</div>
  <div class="X225" data-role="io-tag" data-slot="53">X225</div>
  <div class="X226" data-role="io-data" data-slot="54">PH'F Exit Aux. Lifter Down</div>
  <div class="X226" data-role="io-tag" data-slot="54">X226</div>
  <div class="X227" data-role="io-data" data-slot="55">PH'F Exit Aux. Lifter Up</div>
  <div class="X227" data-role="io-tag" data-slot="55">X227</div>
  <div class="X228" data-role="io-data" data-slot="56">PH'Z Entr Aux. Lifter Down</div>
  <div class="X228" data-role="io-tag" data-slot="56">X228</div>
  <div class="X229" data-role="io-data" data-slot="57">PH'Z Entr Aux. Lifter Up</div>
  <div class="X229" data-role="io-tag" data-slot="57">X229</div>
  <div class="X22A" data-role="io-data" data-slot="58">PH'Z Entr Conv. Position</div>
  <div class="X22A" data-role="io-tag" data-slot="58">X22A</div>
  <div class="X22B" data-role="io-data" data-slot="59">SPARE</div>
  <div class="X22B" data-role="io-tag" data-slot="59">X22B</div>
  <div class="X22C" data-role="io-data" data-slot="60">PH'F Fan Rotation Check NSW</div>
  <div class="X22C" data-role="io-tag" data-slot="60">X22C</div>
  <div class="X22D" data-role="io-data" data-slot="61">PH'F Roller Rotation Check NSW</div>
  <div class="X22D" data-role="io-tag" data-slot="61">X22D</div>
  <div class="X22E" data-role="io-data" data-slot="62">PH'F Upper Photo Sensor</div>
  <div class="X22E" data-role="io-tag" data-slot="62">X22E</div>
  <div class="X22F" data-role="io-data" data-slot="63">PH'F Lower Photo Sensor</div>
  <div class="X22F" data-role="io-tag" data-slot="63">X22F</div>


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
    	getAlarmText("ccf_x_in_2");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT02");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT02"); }, 2000);
    });

    function ccfAlarmListView(opcGroup) {
    	  $.ajax({
    	    url: "/DHT/ioMonitorCcfX1/view",
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
        url: "/DHT/ioMonitorCcfX1/data",
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 18 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(18, 1000);
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
