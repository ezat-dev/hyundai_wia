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

  <div class="io-box-num-1">01</div>
  <div class="io-box-1">X0A0 ~ X0AF</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X0A0" data-role="io-data" data-slot="0">Auto-Run ON</div>
  <div class="X0A0" data-role="io-tag" data-slot="0">X0A0</div>
  <div class="X0A1" data-role="io-data" data-slot="1">Manual Select</div>
  <div class="X0A1" data-role="io-tag" data-slot="1">X0A1</div>
  <div class="X0A2" data-role="io-data" data-slot="2">Auto Select</div>
  <div class="X0A2" data-role="io-tag" data-slot="2">X0A2</div>
  <div class="X0A3" data-role="io-data" data-slot="3">P'F &amp; CCF Inner Roller Auto Jogging ON</div>
  <div class="X0A3" data-role="io-tag" data-slot="3">X0A3</div>
  <div class="X0A4" data-role="io-data" data-slot="4">P'F &amp; CCF Inner Roller Auto Jogging OFF</div>
  <div class="X0A4" data-role="io-tag" data-slot="4">X0A4</div>
  <div class="X0A5" data-role="io-data" data-slot="5">Cold/Hot Run Operation Select</div>
  <div class="X0A5" data-role="io-tag" data-slot="5">X0A5</div>
  <div class="X0A6" data-role="io-data" data-slot="6">Furnance Burn-Out Condition Select</div>
  <div class="X0A6" data-role="io-tag" data-slot="6">X0A6</div>
  <div class="X0A7" data-role="io-data" data-slot="7">SPARE</div>
  <div class="X0A7" data-role="io-tag" data-slot="7">X0A7</div>
  <div class="X0A8" data-role="io-data" data-slot="8">SPARE</div>
  <div class="X0A8" data-role="io-tag" data-slot="8">X0A8</div>
  <div class="X0A9" data-role="io-data" data-slot="9">SPARE</div>
  <div class="X0A9" data-role="io-tag" data-slot="9">X0A9</div>
  <div class="X0AA" data-role="io-data" data-slot="10">SPARE</div>
  <div class="X0AA" data-role="io-tag" data-slot="10">X0AA</div>
  <div class="X0AB" data-role="io-data" data-slot="11">SPARE</div>
  <div class="X0AB" data-role="io-tag" data-slot="11">X0AB</div>
  <div class="X0AC" data-role="io-data" data-slot="12">Horn Stop</div>
  <div class="X0AC" data-role="io-tag" data-slot="12">X0AC</div>
  <div class="X0AD" data-role="io-data" data-slot="13">Lamp Test</div>
  <div class="X0AD" data-role="io-tag" data-slot="13">X0AD</div>
  <div class="X0AE" data-role="io-data" data-slot="14">Alarm Reset</div>
  <div class="X0AE" data-role="io-tag" data-slot="14">X0AE</div>
  <div class="X0AF" data-role="io-data" data-slot="15">Emergency Stop</div>
  <div class="X0AF" data-role="io-tag" data-slot="15">X0AF</div>

  <div class="io-box-num-2">02</div>
  <div class="io-box-2">X0B0 ~ X0BF</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X0B0" data-role="io-data" data-slot="16">PH'F Control Temp. AL-1</div>
  <div class="X0B0" data-role="io-tag" data-slot="16">X0B0</div>
  <div class="X0B1" data-role="io-data" data-slot="17">PH'F Control Temp. AL-2</div>
  <div class="X0B1" data-role="io-tag" data-slot="17">X0B1</div>
  <div class="X0B2" data-role="io-data" data-slot="18">PH'F Burner Control ON</div>
  <div class="X0B2" data-role="io-tag" data-slot="18">X0B2</div>
  <div class="X0B3" data-role="io-data" data-slot="19">PH'Z Control Temp. AL-1</div>
  <div class="X0B3" data-role="io-tag" data-slot="19">X0B3</div>
  <div class="X0B4" data-role="io-data" data-slot="20">PH'Z Control Temp. AL-2</div>
  <div class="X0B4" data-role="io-tag" data-slot="20">X0B4</div>
  <div class="X0B5" data-role="io-data" data-slot="21">Carb.1-Zone Control Temp. AL-1</div>
  <div class="X0B5" data-role="io-tag" data-slot="21">X0B5</div>
  <div class="X0B6" data-role="io-data" data-slot="22">Carb.1-Zone Control Temp. AL-2</div>
  <div class="X0B6" data-role="io-tag" data-slot="22">X0B6</div>
  <div class="X0B7" data-role="io-data" data-slot="23">Carb.2-Zone Control Temp. AL-1</div>
  <div class="X0B7" data-role="io-tag" data-slot="23">X0B7</div>
  <div class="X0B8" data-role="io-data" data-slot="24">Carb.2-Zone Control Temp. AL-2</div>
  <div class="X0B8" data-role="io-tag" data-slot="24">X0B8</div>
  <div class="X0B9" data-role="io-data" data-slot="25">Diff.Zone Control Temp. AL-1</div>
  <div class="X0B9" data-role="io-tag" data-slot="25">X0B9</div>
  <div class="X0BA" data-role="io-data" data-slot="26">Diff.Zone Control Temp. AL-2</div>
  <div class="X0BA" data-role="io-tag" data-slot="26">X0BA</div>
  <div class="X0BB" data-role="io-data" data-slot="27">Cool.Zone Control Temp. AL-1</div>
  <div class="X0BB" data-role="io-tag" data-slot="27">X0BB</div>
  <div class="X0BC" data-role="io-data" data-slot="28">Cool.Zone Control Temp. AL-2</div>
  <div class="X0BC" data-role="io-tag" data-slot="28">X0BC</div>
  <div class="X0BD" data-role="io-data" data-slot="29">Hard.1-Zone Control Temp. AL-1</div>
  <div class="X0BD" data-role="io-tag" data-slot="29">X0BD</div>
  <div class="X0BE" data-role="io-data" data-slot="30">Hard.1-Zone Control Temp. AL-2</div>
  <div class="X0BE" data-role="io-tag" data-slot="30">X0BE</div>
  <div class="X0BF" data-role="io-data" data-slot="31">SPARE</div>
  <div class="X0BF" data-role="io-tag" data-slot="31">X0BF</div>

  <div class="io-box-num-3">03</div>
  <div class="io-box-3">X0C0 ~ X0CF</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X0C0" data-role="io-data" data-slot="32">Hard.2-Zone Control Temp. AL-1</div>
  <div class="X0C0" data-role="io-tag" data-slot="32">X0C0</div>
  <div class="X0C1" data-role="io-data" data-slot="33">Hard.2-Zone Control Temp. AL-2</div>
  <div class="X0C1" data-role="io-tag" data-slot="33">X0C1</div>
  <div class="X0C2" data-role="io-data" data-slot="34">Q'Tank Control Temp. AL-1</div>
  <div class="X0C2" data-role="io-tag" data-slot="34">X0C2</div>
  <div class="X0C3" data-role="io-data" data-slot="35">Q'Tank Control Temp. AL-2</div>
  <div class="X0C3" data-role="io-tag" data-slot="35">X0C3</div>
  <div class="X0C4" data-role="io-data" data-slot="36">Q'Tank Control Temp. AL-3</div>
  <div class="X0C4" data-role="io-tag" data-slot="36">X0C4</div>
  <div class="X0C5" data-role="io-data" data-slot="37">Q'Tank Heater Control ON</div>
  <div class="X0C5" data-role="io-tag" data-slot="37">X0C5</div>
  <div class="X0C6" data-role="io-data" data-slot="38">SPARE</div>
  <div class="X0C6" data-role="io-tag" data-slot="38">X0C6</div>
  <div class="X0C7" data-role="io-data" data-slot="39">SPARE</div>
  <div class="X0C7" data-role="io-tag" data-slot="39">X0C7</div>
  <div class="X0C8" data-role="io-data" data-slot="40">PH'Z GAS CUT AL-1</div>
  <div class="X0C8" data-role="io-tag" data-slot="40">X0C8</div>
  <div class="X0C9" data-role="io-data" data-slot="41">PH'Z Temp. Overheat(HEATER OFF)</div>
  <div class="X0C9" data-role="io-tag" data-slot="41">X0C9</div>
  <div class="X0CA" data-role="io-data" data-slot="42">Carb.1-Zone GAS CUT AL-1</div>
  <div class="X0CA" data-role="io-tag" data-slot="42">X0CA</div>
  <div class="X0CB" data-role="io-data" data-slot="43">Carb.1-Zone Temp. Overheat(HEATER OFF)</div>
  <div class="X0CB" data-role="io-tag" data-slot="43">X0CB</div>
  <div class="X0CC" data-role="io-data" data-slot="44">Carb.2-Zone Protector Temp. AL-1</div>
  <div class="X0CC" data-role="io-tag" data-slot="44">X0CC</div>
  <div class="X0CD" data-role="io-data" data-slot="45">Carb.2-Zone Temp. Overheat(HEATER OFF)</div>
  <div class="X0CD" data-role="io-tag" data-slot="45">X0CD</div>
  <div class="X0CE" data-role="io-data" data-slot="46">Diff.Zone GAS CUT AL-1</div>
  <div class="X0CE" data-role="io-tag" data-slot="46">X0CE</div>
  <div class="X0CF" data-role="io-data" data-slot="47">Diff.Zone Temp. Overheat(HEATER OFF)</div>
  <div class="X0CF" data-role="io-tag" data-slot="47">X0CF</div>

  <div class="io-box-num-4">04</div>
  <div class="io-box-4">X0D0 ~ X0DF</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X0D0" data-role="io-data" data-slot="48">Hard.1-Zone GAS CUT  AL-1</div>
  <div class="X0D0" data-role="io-tag" data-slot="48">X0D0</div>
  <div class="X0D1" data-role="io-data" data-slot="49">Hard.1-Zone Temp. Overheat(HEATER OFF)</div>
  <div class="X0D1" data-role="io-tag" data-slot="49">X0D1</div>
  <div class="X0D2" data-role="io-data" data-slot="50">Hard.2-Zone GAS CUT  AL-1</div>
  <div class="X0D2" data-role="io-tag" data-slot="50">X0D2</div>
  <div class="X0D3" data-role="io-data" data-slot="51">Hard.2-Zone Temp. Overheat(HEATER OFF)</div>
  <div class="X0D3" data-role="io-tag" data-slot="51">X0D3</div>
  <div class="X0D4" data-role="io-data" data-slot="52">SPARE</div>
  <div class="X0D4" data-role="io-tag" data-slot="52">X0D4</div>
  <div class="X0D5" data-role="io-data" data-slot="53">SPARE</div>
  <div class="X0D5" data-role="io-tag" data-slot="53">X0D5</div>
  <div class="X0D6" data-role="io-data" data-slot="54">SPARE</div>
  <div class="X0D6" data-role="io-tag" data-slot="54">X0D6</div>
  <div class="X0D7" data-role="io-data" data-slot="55">SPARE</div>
  <div class="X0D7" data-role="io-tag" data-slot="55">X0D7</div>
  <div class="X0D8" data-role="io-data" data-slot="56">MS&amp;SV Control Power MCCB ON</div>
  <div class="X0D8" data-role="io-tag" data-slot="56">X0D8</div>
  <div class="X0D9" data-role="io-data" data-slot="57">Motor Cooling Fan Power MCCB ON</div>
  <div class="X0D9" data-role="io-tag" data-slot="57">X0D9</div>
  <div class="X0DA" data-role="io-data" data-slot="58">Control PC UPS Power MCCB ON</div>
  <div class="X0DA" data-role="io-tag" data-slot="58">X0DA</div>
  <div class="X0DB" data-role="io-data" data-slot="59">Control Pannel A/C Power MCCB ON</div>
  <div class="X0DB" data-role="io-tag" data-slot="59">X0DB</div>
  <div class="X0DC" data-role="io-data" data-slot="60">SPARE</div>
  <div class="X0DC" data-role="io-tag" data-slot="60">X0DC</div>
  <div class="X0DD" data-role="io-data" data-slot="61">Carb.Zone O2 Sensor Burn-Out</div>
  <div class="X0DD" data-role="io-tag" data-slot="61">X0DD</div>
  <div class="X0DE" data-role="io-data" data-slot="62">Carb.Zone O2 Sensor Burn-Out</div>
  <div class="X0DE" data-role="io-tag" data-slot="62">X0DE</div>
  <div class="X0DF" data-role="io-data" data-slot="63">Carb.Zone O2 Sensor Burn-Out</div>
  <div class="X0DF" data-role="io-tag" data-slot="63">X0DF</div>


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
    	getAlarmText("ccf_x_in_1");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT01");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT01"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 17 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(17, 1000);
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
