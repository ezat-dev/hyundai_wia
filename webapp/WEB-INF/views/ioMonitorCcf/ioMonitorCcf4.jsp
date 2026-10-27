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

  <div class="io-box-num-1">13</div>
  <div class="io-box-1">Y3D0 ~ Y3DF</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="Y3D0" data-role="io-data" data-slot="0">PH'F Inner Roller Brake</div>
  <div class="Y3D0" data-role="io-tag" data-slot="0">Y3D0</div>
  <div class="Y3D1" data-role="io-data" data-slot="1">PH'Z Inner Roller 1-1 Brake</div>
  <div class="Y3D1" data-role="io-tag" data-slot="1">Y3D1</div>
  <div class="Y3D2" data-role="io-data" data-slot="2">PH'Z Inner Roller 1-2 Brake</div>
  <div class="Y3D2" data-role="io-tag" data-slot="2">Y3D2</div>
  <div class="Y3D3" data-role="io-data" data-slot="3">Hard.1-Zone Inner Roller Brake</div>
  <div class="Y3D3" data-role="io-tag" data-slot="3">Y3D3</div>
  <div class="Y3D4" data-role="io-data" data-slot="4">Hard.2-Zone Inner Roller Brake</div>
  <div class="Y3D4" data-role="io-tag" data-slot="4">Y3D4</div>
  <div class="Y3D5" data-role="io-data" data-slot="5">Carb.Zone Carge Roller Brake</div>
  <div class="Y3D5" data-role="io-tag" data-slot="5">Y3D5</div>
  <div class="Y3D6" data-role="io-data" data-slot="6">Hard.1-Zone Carge Roller Brake</div>
  <div class="Y3D6" data-role="io-tag" data-slot="6">Y3D6</div>
  <div class="Y3D7" data-role="io-data" data-slot="7">SPARE</div>
  <div class="Y3D7" data-role="io-tag" data-slot="7">Y3D7</div>
  <div class="Y3D8" data-role="io-data" data-slot="8">PH'F Inner Roller Fan</div>
  <div class="Y3D8" data-role="io-tag" data-slot="8">Y3D8</div>
  <div class="Y3D9" data-role="io-data" data-slot="9">PH'Z Inner Roller 1-1 Fan</div>
  <div class="Y3D9" data-role="io-tag" data-slot="9">Y3D9</div>
  <div class="Y3DA" data-role="io-data" data-slot="10">PH'Z Inner Roller 1-2 Fan</div>
  <div class="Y3DA" data-role="io-tag" data-slot="10">Y3DA</div>
  <div class="Y3DB" data-role="io-data" data-slot="11">Hard.1-Zone Inner Roller Fan</div>
  <div class="Y3DB" data-role="io-tag" data-slot="11">Y3DB</div>
  <div class="Y3DC" data-role="io-data" data-slot="12">Hard.2-Zone Inner Roller Fan</div>
  <div class="Y3DC" data-role="io-tag" data-slot="12">Y3DC</div>
  <div class="Y3DD" data-role="io-data" data-slot="13">SPARE</div>
  <div class="Y3DD" data-role="io-tag" data-slot="13">Y3DD</div>
  <div class="Y3DE" data-role="io-data" data-slot="14">SPARE</div>
  <div class="Y3DE" data-role="io-tag" data-slot="14">Y3DE</div>
  <div class="Y3DF" data-role="io-data" data-slot="15">SPARE</div>
  <div class="Y3DF" data-role="io-tag" data-slot="15">Y3DF</div>

  <div class="io-box-num-2">14</div>
  <div class="io-box-2">Y3E0 ~ Y3EF</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="Y3E0" data-role="io-data" data-slot="16">Q'Tank Heat Exchanger Pump-1</div>
  <div class="Y3E0" data-role="io-tag" data-slot="16">Y3E0</div>
  <div class="Y3E1" data-role="io-data" data-slot="17">Q'Tank Heat Exchanger Pump-2</div>
  <div class="Y3E1" data-role="io-tag" data-slot="17">Y3E1</div>
  <div class="Y3E2" data-role="io-data" data-slot="18">Charge Stock Entr. Roller FWD</div>
  <div class="Y3E2" data-role="io-tag" data-slot="18">Y3E2</div>
  <div class="Y3E3" data-role="io-data" data-slot="19">Charge Stock Entr. Roller BWD</div>
  <div class="Y3E3" data-role="io-tag" data-slot="19">Y3E3</div>
  <div class="Y3E4" data-role="io-data" data-slot="20">Charge Stock Entr. Retriver FWD</div>
  <div class="Y3E4" data-role="io-tag" data-slot="20">Y3E4</div>
  <div class="Y3E5" data-role="io-data" data-slot="21">Charge Stock Entr. Retriver BWD</div>
  <div class="Y3E5" data-role="io-tag" data-slot="21">Y3E5</div>
  <div class="Y3E6" data-role="io-data" data-slot="22">Charge Stock Exit Roller FWD</div>
  <div class="Y3E6" data-role="io-tag" data-slot="22">Y3E6</div>
  <div class="Y3E7" data-role="io-data" data-slot="23">Charge Stock Exit Roller BWD</div>
  <div class="Y3E7" data-role="io-tag" data-slot="23">Y3E7</div>
  <div class="Y3E8" data-role="io-data" data-slot="24">Charge Stock Exit Retriver FWD</div>
  <div class="Y3E8" data-role="io-tag" data-slot="24">Y3E8</div>
  <div class="Y3E9" data-role="io-data" data-slot="25">Charge Stock Exit Retriver BWD</div>
  <div class="Y3E9" data-role="io-tag" data-slot="25">Y3E9</div>
  <div class="Y3EA" data-role="io-data" data-slot="26">PH'F Entr. Roller-1 FWD</div>
  <div class="Y3EA" data-role="io-tag" data-slot="26">Y3EA</div>
  <div class="Y3EB" data-role="io-data" data-slot="27">PH'F Entr. Roller-1 BWD</div>
  <div class="Y3EB" data-role="io-tag" data-slot="27">Y3EB</div>
  <div class="Y3EC" data-role="io-data" data-slot="28">PH'F Entr. Roller-2 FWD</div>
  <div class="Y3EC" data-role="io-tag" data-slot="28">Y3EC</div>
  <div class="Y3ED" data-role="io-data" data-slot="29">PH'F Entr. Roller-2 BWD</div>
  <div class="Y3ED" data-role="io-tag" data-slot="29">Y3ED</div>
  <div class="Y3EE" data-role="io-data" data-slot="30">SPARE</div>
  <div class="Y3EE" data-role="io-tag" data-slot="30">Y3EE</div>
  <div class="Y3EF" data-role="io-data" data-slot="31">SPARE</div>
  <div class="Y3EF" data-role="io-tag" data-slot="31">Y3EF</div>

  <div class="io-box-num-3">15</div>
  <div class="io-box-3">Y3F0 ~ Y3FF</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="Y3F0" data-role="io-data" data-slot="32">CCF Charge Lifter FWD</div>
  <div class="Y3F0" data-role="io-tag" data-slot="32">Y3F0</div>
  <div class="Y3F1" data-role="io-data" data-slot="33">CCF Charge Lifter BWD</div>
  <div class="Y3F1" data-role="io-tag" data-slot="33">Y3F1</div>
  <div class="Y3F2" data-role="io-data" data-slot="34">Carb.Zone Charge Roller FWD</div>
  <div class="Y3F2" data-role="io-tag" data-slot="34">Y3F2</div>
  <div class="Y3F3" data-role="io-data" data-slot="35">Carb.Zone Charge Roller BWD</div>
  <div class="Y3F3" data-role="io-tag" data-slot="35">Y3F3</div>
  <div class="Y3F4" data-role="io-data" data-slot="36">Hard.1-Zone Charge Roller FWD</div>
  <div class="Y3F4" data-role="io-tag" data-slot="36">Y3F4</div>
  <div class="Y3F5" data-role="io-data" data-slot="37">Hard.1-Zone Charge Roller BWD</div>
  <div class="Y3F5" data-role="io-tag" data-slot="37">Y3F5</div>
  <div class="Y3F6" data-role="io-data" data-slot="38">Hard.2-Zone Charge Roller FWD</div>
  <div class="Y3F6" data-role="io-tag" data-slot="38">Y3F6</div>
  <div class="Y3F7" data-role="io-data" data-slot="39">Hard.2-Zone Charge Roller BWD</div>
  <div class="Y3F7" data-role="io-tag" data-slot="39">Y3F7</div>
  <div class="Y3F8" data-role="io-data" data-slot="40">SPARE</div>
  <div class="Y3F8" data-role="io-tag" data-slot="40">Y3F8</div>
  <div class="Y3F9" data-role="io-data" data-slot="41">SPARE</div>
  <div class="Y3F9" data-role="io-tag" data-slot="41">Y3F9</div>
  <div class="Y3FA" data-role="io-data" data-slot="42">Q'Tank Chain Roller FWD</div>
  <div class="Y3FA" data-role="io-tag" data-slot="42">Y3FA</div>
  <div class="Y3FB" data-role="io-data" data-slot="43">Q'Tank Chain Roller BWD</div>
  <div class="Y3FB" data-role="io-tag" data-slot="43">Y3FB</div>
  <div class="Y3FC" data-role="io-data" data-slot="44">Q'Tank Exit Roller FWD</div>
  <div class="Y3FC" data-role="io-tag" data-slot="44">Y3FC</div>
  <div class="Y3FD" data-role="io-data" data-slot="45">Q'Tank Exit Roller BWD</div>
  <div class="Y3FD" data-role="io-tag" data-slot="45">Y3FD</div>
  <div class="Y3FE" data-role="io-data" data-slot="46">SPARE</div>
  <div class="Y3FE" data-role="io-tag" data-slot="46">Y3FE</div>
  <div class="Y3FF" data-role="io-data" data-slot="47">SPARE</div>
  <div class="Y3FF" data-role="io-tag" data-slot="47">Y3FF</div>

  <div class="io-box-num-4">16</div>
  <div class="io-box-4">Y420 ~ Y42F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="Y420" data-role="io-data" data-slot="48">Manual  NL</div>
  <div class="Y420" data-role="io-tag" data-slot="48">Y420</div>
  <div class="Y421" data-role="io-data" data-slot="49">Auto NL</div>
  <div class="Y421" data-role="io-tag" data-slot="49">Y421</div>
  <div class="Y422" data-role="io-data" data-slot="50">Automatic Operation Conditions NL</div>
  <div class="Y422" data-role="io-tag" data-slot="50">Y422</div>
  <div class="Y423" data-role="io-data" data-slot="51">Charge Stock Entr. Roller Position NL</div>
  <div class="Y423" data-role="io-tag" data-slot="51">Y423</div>
  <div class="Y424" data-role="io-data" data-slot="52">Charge Stock Entr. Retriver FWD NL</div>
  <div class="Y424" data-role="io-tag" data-slot="52">Y424</div>
  <div class="Y425" data-role="io-data" data-slot="53">Charge Stock Entr. Retriver BWD NL</div>
  <div class="Y425" data-role="io-tag" data-slot="53">Y425</div>
  <div class="Y426" data-role="io-data" data-slot="54">Charge Stock Exit Roller Position NL</div>
  <div class="Y426" data-role="io-tag" data-slot="54">Y426</div>
  <div class="Y427" data-role="io-data" data-slot="55">Charge Stock Exit Lifter Up NL</div>
  <div class="Y427" data-role="io-tag" data-slot="55">Y427</div>
  <div class="Y428" data-role="io-data" data-slot="56">Charge Stock Exit Lifter Down NL</div>
  <div class="Y428" data-role="io-tag" data-slot="56">Y428</div>
  <div class="Y429" data-role="io-data" data-slot="57">Charge Stock Exit Lifter Roller Position NL</div>
  <div class="Y429" data-role="io-tag" data-slot="57">Y429</div>
  <div class="Y42A" data-role="io-data" data-slot="58">PH'F Entr. Roller-1 Position NL</div>
  <div class="Y42A" data-role="io-tag" data-slot="58">Y42A</div>
  <div class="Y42B" data-role="io-data" data-slot="59">PH'F Entr. Roller-2 Position NL</div>
  <div class="Y42B" data-role="io-tag" data-slot="59">Y42B</div>
  <div class="Y42C" data-role="io-data" data-slot="60">PH'F Entr. Door Close &amp; Entr. Aux. Lifter NL</div>
  <div class="Y42C" data-role="io-tag" data-slot="60">Y42C</div>
  <div class="Y42D" data-role="io-data" data-slot="61">PH'F Entr. Door Open &amp; Entr. Aux. Lifter NL</div>
  <div class="Y42D" data-role="io-tag" data-slot="61">Y42D</div>
  <div class="Y42E" data-role="io-data" data-slot="62">PH'F Exit. Door Close &amp; Exit Aux. Lifter NL</div>
  <div class="Y42E" data-role="io-tag" data-slot="62">Y42E</div>
  <div class="Y42F" data-role="io-data" data-slot="63">PH'F Exit. Door Open &amp; Exit Aux. Lifter NL</div>
  <div class="Y42F" data-role="io-tag" data-slot="63">Y42F</div>


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
    	getAlarmText("ccf_in_4");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT04");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT04"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 14 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(14, 1000);
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
