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

  <div class="io-box-num-1">09</div>
  <div class="io-box-1">Y390 ~ Y39F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="Y390" data-role="io-data" data-slot="0">PH'F SCR Run</div>
  <div class="Y390" data-role="io-tag" data-slot="0">Y390</div>
  <div class="Y391" data-role="io-data" data-slot="1">Carb.1-Zone SCR Run</div>
  <div class="Y391" data-role="io-tag" data-slot="1">Y391</div>
  <div class="Y392" data-role="io-data" data-slot="2">Carb.2-Zone SCR Run</div>
  <div class="Y392" data-role="io-tag" data-slot="2">Y392</div>
  <div class="Y393" data-role="io-data" data-slot="3">Diff.Zone SCR Run</div>
  <div class="Y393" data-role="io-tag" data-slot="3">Y393</div>
  <div class="Y394" data-role="io-data" data-slot="4">Cool.Zone SCR Run</div>
  <div class="Y394" data-role="io-tag" data-slot="4">Y394</div>
  <div class="Y395" data-role="io-data" data-slot="5">Hard.1-Zone SCR Run</div>
  <div class="Y395" data-role="io-tag" data-slot="5">Y395</div>
  <div class="Y396" data-role="io-data" data-slot="6">Hard.2-Zone SCR Run</div>
  <div class="Y396" data-role="io-tag" data-slot="6">Y396</div>
  <div class="Y397" data-role="io-data" data-slot="7">Q'Tank Heater ON</div>
  <div class="Y397" data-role="io-tag" data-slot="7">Y397</div>
  <div class="Y398" data-role="io-data" data-slot="8">SPARE</div>
  <div class="Y398" data-role="io-tag" data-slot="8">Y398</div>
  <div class="Y399" data-role="io-data" data-slot="9">SPARE</div>
  <div class="Y399" data-role="io-tag" data-slot="9">Y399</div>
  <div class="Y39A" data-role="io-data" data-slot="10">SPARE</div>
  <div class="Y39A" data-role="io-tag" data-slot="10">Y39A</div>
  <div class="Y39B" data-role="io-data" data-slot="11">SPARE</div>
  <div class="Y39B" data-role="io-tag" data-slot="11">Y39B</div>
  <div class="Y39C" data-role="io-data" data-slot="12">SPARE</div>
  <div class="Y39C" data-role="io-tag" data-slot="12">Y39C</div>
  <div class="Y39D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="Y39D" data-role="io-tag" data-slot="13">Y39D</div>
  <div class="Y39E" data-role="io-data" data-slot="14">SPARE</div>
  <div class="Y39E" data-role="io-tag" data-slot="14">Y39E</div>
  <div class="Y39F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="Y39F" data-role="io-tag" data-slot="15">Y39F</div>

  <div class="io-box-num-2">10</div>
  <div class="io-box-2">Y3A0 ~ Y3AF</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="Y3A0" data-role="io-data" data-slot="16">PH'F Fan Inve. Run</div>
  <div class="Y3A0" data-role="io-tag" data-slot="16">Y3A0</div>
  <div class="Y3A1" data-role="io-data" data-slot="17">PH'Z Fan Inve. Run</div>
  <div class="Y3A1" data-role="io-tag" data-slot="17">Y3A1</div>
  <div class="Y3A2" data-role="io-data" data-slot="18">Carb.Zone Fan Inve. Run</div>
  <div class="Y3A2" data-role="io-tag" data-slot="18">Y3A2</div>
  <div class="Y3A3" data-role="io-data" data-slot="19">Diff.Zone Fan Inve. Run</div>
  <div class="Y3A3" data-role="io-tag" data-slot="19">Y3A3</div>
  <div class="Y3A4" data-role="io-data" data-slot="20">Hard.1-Zone Fan Inve. Run</div>
  <div class="Y3A4" data-role="io-tag" data-slot="20">Y3A4</div>
  <div class="Y3A5" data-role="io-data" data-slot="21">Hard.2-Zone Fan Inve. Run</div>
  <div class="Y3A5" data-role="io-tag" data-slot="21">Y3A5</div>
  <div class="Y3A6" data-role="io-data" data-slot="22">Q'Tank Agitator-1 Run</div>
  <div class="Y3A6" data-role="io-tag" data-slot="22">Y3A6</div>
  <div class="Y3A7" data-role="io-data" data-slot="23">Q'Tank Agitator-1 Speed High</div>
  <div class="Y3A7" data-role="io-tag" data-slot="23">Y3A7</div>
  <div class="Y3A8" data-role="io-data" data-slot="24">Q'Tank Agitator-1 Speed Mid</div>
  <div class="Y3A8" data-role="io-tag" data-slot="24">Y3A8</div>
  <div class="Y3A9" data-role="io-data" data-slot="25">Q'Tank Agitator-1 Speed Low</div>
  <div class="Y3A9" data-role="io-tag" data-slot="25">Y3A9</div>
  <div class="Y3AA" data-role="io-data" data-slot="26">Q'Tank Agitator-2 Run</div>
  <div class="Y3AA" data-role="io-tag" data-slot="26">Y3AA</div>
  <div class="Y3AB" data-role="io-data" data-slot="27">Q'Tank Agitator-2 Speed High</div>
  <div class="Y3AB" data-role="io-tag" data-slot="27">Y3AB</div>
  <div class="Y3AC" data-role="io-data" data-slot="28">Q'Tank Agitator-2 Speed Mid</div>
  <div class="Y3AC" data-role="io-tag" data-slot="28">Y3AC</div>
  <div class="Y3AD" data-role="io-data" data-slot="29">Q'Tank Agitator-2 Speed Low</div>
  <div class="Y3AD" data-role="io-tag" data-slot="29">Y3AD</div>
  <div class="Y3AE" data-role="io-data" data-slot="30">SPARE</div>
  <div class="Y3AE" data-role="io-tag" data-slot="30">Y3AE</div>
  <div class="Y3AF" data-role="io-data" data-slot="31">SPARE</div>
  <div class="Y3AF" data-role="io-tag" data-slot="31">Y3AF</div>

  <div class="io-box-num-3">11</div>
  <div class="io-box-3">Y3B0 ~ Y3BF</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="Y3B0" data-role="io-data" data-slot="32">PH'F Inner Roller FWD</div>
  <div class="Y3B0" data-role="io-tag" data-slot="32">Y3B0</div>
  <div class="Y3B1" data-role="io-data" data-slot="33">PH'F Inner Roller BWD</div>
  <div class="Y3B1" data-role="io-tag" data-slot="33">Y3B1</div>
  <div class="Y3B2" data-role="io-data" data-slot="34">PH'F Inner Roller Speed High</div>
  <div class="Y3B2" data-role="io-tag" data-slot="34">Y3B2</div>
  <div class="Y3B3" data-role="io-data" data-slot="35">PH'F Inner Roller Speed Low</div>
  <div class="Y3B3" data-role="io-tag" data-slot="35">Y3B3</div>
  <div class="Y3B4" data-role="io-data" data-slot="36">PH'Z Inner Roller1-1 FWD</div>
  <div class="Y3B4" data-role="io-tag" data-slot="36">Y3B4</div>
  <div class="Y3B5" data-role="io-data" data-slot="37">PH'Z Inner Roller1-1 BWD</div>
  <div class="Y3B5" data-role="io-tag" data-slot="37">Y3B5</div>
  <div class="Y3B6" data-role="io-data" data-slot="38">PH'Z Inner Roller1-1 Speed High</div>
  <div class="Y3B6" data-role="io-tag" data-slot="38">Y3B6</div>
  <div class="Y3B7" data-role="io-data" data-slot="39">PH'Z Inner Roller1-1 Speed Low</div>
  <div class="Y3B7" data-role="io-tag" data-slot="39">Y3B7</div>
  <div class="Y3B8" data-role="io-data" data-slot="40">PH'Z Inner Roller1-2 FWD</div>
  <div class="Y3B8" data-role="io-tag" data-slot="40">Y3B8</div>
  <div class="Y3B9" data-role="io-data" data-slot="41">PH'Z Inner Roller1-2 BWD</div>
  <div class="Y3B9" data-role="io-tag" data-slot="41">Y3B9</div>
  <div class="Y3BA" data-role="io-data" data-slot="42">PH'Z Inner Roller1-2 Speed High</div>
  <div class="Y3BA" data-role="io-tag" data-slot="42">Y3BA</div>
  <div class="Y3BB" data-role="io-data" data-slot="43">PH'Z Inner Roller1-2 Speed Low</div>
  <div class="Y3BB" data-role="io-tag" data-slot="43">Y3BB</div>
  <div class="Y3BC" data-role="io-data" data-slot="44">Hard.1-Zoner Inner Roller FWD</div>
  <div class="Y3BC" data-role="io-tag" data-slot="44">Y3BC</div>
  <div class="Y3BD" data-role="io-data" data-slot="45">Hard.1-Zoner Inner Roller BWD</div>
  <div class="Y3BD" data-role="io-tag" data-slot="45">Y3BD</div>
  <div class="Y3BE" data-role="io-data" data-slot="46">Hard.1-Zoner Inner Roller Speed High</div>
  <div class="Y3BE" data-role="io-tag" data-slot="46">Y3BE</div>
  <div class="Y3BF" data-role="io-data" data-slot="47">Hard.1-Zoner Inner Roller Speed Low</div>
  <div class="Y3BF" data-role="io-tag" data-slot="47">Y3BF</div>

  <div class="io-box-num-4">12</div>
  <div class="io-box-4">Y3C0 ~ Y3CF</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="Y3C0" data-role="io-data" data-slot="48">Hard.2-Zoner Inner Roller FWD</div>
  <div class="Y3C0" data-role="io-tag" data-slot="48">Y3C0</div>
  <div class="Y3C1" data-role="io-data" data-slot="49">Hard.2-Zoner Inner Roller BWD</div>
  <div class="Y3C1" data-role="io-tag" data-slot="49">Y3C1</div>
  <div class="Y3C2" data-role="io-data" data-slot="50">Hard.2-Zoner Inner Roller Speed High</div>
  <div class="Y3C2" data-role="io-tag" data-slot="50">Y3C2</div>
  <div class="Y3C3" data-role="io-data" data-slot="51">Hard.2-Zoner Inner Roller Speed Low</div>
  <div class="Y3C3" data-role="io-tag" data-slot="51">Y3C3</div>
  <div class="Y3C4" data-role="io-data" data-slot="52">Carb.Zone Inner Roller FWD</div>
  <div class="Y3C4" data-role="io-tag" data-slot="52">Y3C4</div>
  <div class="Y3C5" data-role="io-data" data-slot="53">Carb.Zone Inner Roller BWD</div>
  <div class="Y3C5" data-role="io-tag" data-slot="53">Y3C5</div>
  <div class="Y3C6" data-role="io-data" data-slot="54">Carb.Zone Inner Roller Speed High</div>
  <div class="Y3C6" data-role="io-tag" data-slot="54">Y3C6</div>
  <div class="Y3C7" data-role="io-data" data-slot="55">Carb.Zone Inner Roller Speed Mid</div>
  <div class="Y3C7" data-role="io-tag" data-slot="55">Y3C7</div>
  <div class="Y3C8" data-role="io-data" data-slot="56">Carb.Zone Inner Roller Speed Low</div>
  <div class="Y3C8" data-role="io-tag" data-slot="56">Y3C8</div>
  <div class="Y3C9" data-role="io-data" data-slot="57">Diff.Zone Inner Roller FWD</div>
  <div class="Y3C9" data-role="io-tag" data-slot="57">Y3C9</div>
  <div class="Y3CA" data-role="io-data" data-slot="58">Diff.Zone Inner Roller BWD</div>
  <div class="Y3CA" data-role="io-tag" data-slot="58">Y3CA</div>
  <div class="Y3CB" data-role="io-data" data-slot="59">Diff.Zone Inner Roller Speed High</div>
  <div class="Y3CB" data-role="io-tag" data-slot="59">Y3CB</div>
  <div class="Y3CC" data-role="io-data" data-slot="60">Diff.Zone Inner Roller Speed Mid</div>
  <div class="Y3CC" data-role="io-tag" data-slot="60">Y3CC</div>
  <div class="Y3CD" data-role="io-data" data-slot="61">Diff.Zone Inner Roller Speed Low</div>
  <div class="Y3CD" data-role="io-tag" data-slot="61">Y3CD</div>
  <div class="Y3CE" data-role="io-data" data-slot="62">SPARE</div>
  <div class="Y3CE" data-role="io-tag" data-slot="62">Y3CE</div>
  <div class="Y3CF" data-role="io-data" data-slot="63">SPARE</div>
  <div class="Y3CF" data-role="io-tag" data-slot="63">Y3CF</div>


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
    	getAlarmText("ccf_in_3");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT03");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT03"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 13 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(13, 1000);
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
