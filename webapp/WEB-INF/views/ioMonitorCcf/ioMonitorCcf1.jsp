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

  <div class="io-box-num-1">01</div>
  <div class="io-box-1">Y120 ~ Y12F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="Y120" data-role="io-data" data-slot="0">PLC Run</div>
  <div class="Y120" data-role="io-tag" data-slot="0">Y120</div>
  <div class="Y121" data-role="io-data" data-slot="1">Alarm Horn</div>
  <div class="Y121" data-role="io-tag" data-slot="1">Y121</div>
  <div class="Y122" data-role="io-data" data-slot="2">Alarm Buzzer</div>
  <div class="Y122" data-role="io-tag" data-slot="2">Y122</div>
  <div class="Y123" data-role="io-data" data-slot="3">Tower Lamp (Red)</div>
  <div class="Y123" data-role="io-tag" data-slot="3">Y123</div>
  <div class="Y124" data-role="io-data" data-slot="4">Tower Lamp (Yellow)</div>
  <div class="Y124" data-role="io-tag" data-slot="4">Y124</div>
  <div class="Y125" data-role="io-data" data-slot="5">Tower Lamp (Green)</div>
  <div class="Y125" data-role="io-tag" data-slot="5">Y125</div>
  <div class="Y126" data-role="io-data" data-slot="6">PH'Zone Heater ON</div>
  <div class="Y126" data-role="io-tag" data-slot="6">Y126</div>
  <div class="Y127" data-role="io-data" data-slot="7">Carb.1-Zone Heater ON</div>
  <div class="Y127" data-role="io-tag" data-slot="7">Y127</div>
  <div class="Y128" data-role="io-data" data-slot="8">Carb.2-Zone Heater ON</div>
  <div class="Y128" data-role="io-tag" data-slot="8">Y128</div>
  <div class="Y129" data-role="io-data" data-slot="9">Diff.Zone Heater ON</div>
  <div class="Y129" data-role="io-tag" data-slot="9">Y129</div>
  <div class="Y12A" data-role="io-data" data-slot="10">Cool.Zone Heater ON</div>
  <div class="Y12A" data-role="io-tag" data-slot="10">Y12A</div>
  <div class="Y12B" data-role="io-data" data-slot="11">Carb.1-Zone Heater ON</div>
  <div class="Y12B" data-role="io-tag" data-slot="11">Y12B</div>
  <div class="Y12C" data-role="io-data" data-slot="12">Carb.2-Zone Heater ON</div>
  <div class="Y12C" data-role="io-tag" data-slot="12">Y12C</div>
  <div class="Y12D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="Y12D" data-role="io-tag" data-slot="13">Y12D</div>
  <div class="Y12E" data-role="io-data" data-slot="14">SPARE</div>
  <div class="Y12E" data-role="io-tag" data-slot="14">Y12E</div>
  <div class="Y12F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="Y12F" data-role="io-tag" data-slot="15">Y12F</div>

  <div class="io-box-num-2">02</div>
  <div class="io-box-2">Y130 ~ Y13F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="Y130" data-role="io-data" data-slot="16">Main RX Gas</div>
  <div class="Y130" data-role="io-tag" data-slot="16">Y130</div>
  <div class="Y131" data-role="io-data" data-slot="17">N2 Purge Gas</div>
  <div class="Y131" data-role="io-tag" data-slot="17">Y131</div>
  <div class="Y132" data-role="io-data" data-slot="18">Main Enrich Gas</div>
  <div class="Y132" data-role="io-tag" data-slot="18">Y132</div>
  <div class="Y133" data-role="io-data" data-slot="19">PH'Zone Enrich Gas</div>
  <div class="Y133" data-role="io-tag" data-slot="19">Y133</div>
  <div class="Y134" data-role="io-data" data-slot="20">Carb.Zone Enrich Gas</div>
  <div class="Y134" data-role="io-tag" data-slot="20">Y134</div>
  <div class="Y135" data-role="io-data" data-slot="21">Diff.Zone Enrich Gas</div>
  <div class="Y135" data-role="io-tag" data-slot="21">Y135</div>
  <div class="Y136" data-role="io-data" data-slot="22">Hard.1-Zone Enrich Gas</div>
  <div class="Y136" data-role="io-tag" data-slot="22">Y136</div>
  <div class="Y137" data-role="io-data" data-slot="23">Hard.2-Zone Enrich Gas</div>
  <div class="Y137" data-role="io-tag" data-slot="23">Y137</div>
  <div class="Y138" data-role="io-data" data-slot="24">SPARE</div>
  <div class="Y138" data-role="io-tag" data-slot="24">Y138</div>
  <div class="Y139" data-role="io-data" data-slot="25">SPARE</div>
  <div class="Y139" data-role="io-tag" data-slot="25">Y139</div>
  <div class="Y13A" data-role="io-data" data-slot="26">SPARE</div>
  <div class="Y13A" data-role="io-tag" data-slot="26">Y13A</div>
  <div class="Y13B" data-role="io-data" data-slot="27">SPARE</div>
  <div class="Y13B" data-role="io-tag" data-slot="27">Y13B</div>
  <div class="Y13C" data-role="io-data" data-slot="28">Auto Start (Lamp)</div>
  <div class="Y13C" data-role="io-tag" data-slot="28">Y13C</div>
  <div class="Y13D" data-role="io-data" data-slot="29">Roller Auto Jogging (Lamp)</div>
  <div class="Y13D" data-role="io-tag" data-slot="29">Y13D</div>
  <div class="Y13E" data-role="io-data" data-slot="30">MS &amp; SV Power ON (Lamp)</div>
  <div class="Y13E" data-role="io-tag" data-slot="30">Y13E</div>
  <div class="Y13F" data-role="io-data" data-slot="31">SPARE</div>
  <div class="Y13F" data-role="io-tag" data-slot="31">Y13F</div>

  <div class="io-box-num-3">03</div>
  <div class="io-box-3">Y240 ~ Y24F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="Y240" data-role="io-data" data-slot="32">PH'F Entr. Conv. Lifter Down</div>
  <div class="Y240" data-role="io-tag" data-slot="32">Y240</div>
  <div class="Y241" data-role="io-data" data-slot="33">PH'F Entr. Conv. Lifter Up</div>
  <div class="Y241" data-role="io-tag" data-slot="33">Y241</div>
  <div class="Y242" data-role="io-data" data-slot="34">PH'F Entr. Aux. Lifter Down</div>
  <div class="Y242" data-role="io-tag" data-slot="34">Y242</div>
  <div class="Y243" data-role="io-data" data-slot="35">PH'F Entr. Aux. Lifter Up</div>
  <div class="Y243" data-role="io-tag" data-slot="35">Y243</div>
  <div class="Y244" data-role="io-data" data-slot="36">PH'F Entr.Door Close</div>
  <div class="Y244" data-role="io-tag" data-slot="36">Y244</div>
  <div class="Y245" data-role="io-data" data-slot="37">PH'F Entr.Door Open</div>
  <div class="Y245" data-role="io-tag" data-slot="37">Y245</div>
  <div class="Y246" data-role="io-data" data-slot="38">PH'F Exit Door Close</div>
  <div class="Y246" data-role="io-tag" data-slot="38">Y246</div>
  <div class="Y247" data-role="io-data" data-slot="39">PH'F Exit Door Open</div>
  <div class="Y247" data-role="io-tag" data-slot="39">Y247</div>
  <div class="Y248" data-role="io-data" data-slot="40">PH'F Exit Aux. Lifter Down</div>
  <div class="Y248" data-role="io-tag" data-slot="40">Y248</div>
  <div class="Y249" data-role="io-data" data-slot="41">PH'F Exit Aux. Lifter Up</div>
  <div class="Y249" data-role="io-tag" data-slot="41">Y249</div>
  <div class="Y24A" data-role="io-data" data-slot="42">PH'Z Entr. Conv. Lifter Down</div>
  <div class="Y24A" data-role="io-tag" data-slot="42">Y24A</div>
  <div class="Y24B" data-role="io-data" data-slot="43">PH'Z Entr. Conv. Lifter Up</div>
  <div class="Y24B" data-role="io-tag" data-slot="43">Y24B</div>
  <div class="Y24C" data-role="io-data" data-slot="44">PH'F No.1 Pilot Burner Gas</div>
  <div class="Y24C" data-role="io-tag" data-slot="44">Y24C</div>
  <div class="Y24D" data-role="io-data" data-slot="45">PH'F No.2 Pilot Burner Gas</div>
  <div class="Y24D" data-role="io-tag" data-slot="45">Y24D</div>
  <div class="Y24E" data-role="io-data" data-slot="46">PH'F Main Burner Gas</div>
  <div class="Y24E" data-role="io-tag" data-slot="46">Y24E</div>
  <div class="Y24F" data-role="io-data" data-slot="47">PH'F Main Burner Air</div>
  <div class="Y24F" data-role="io-tag" data-slot="47">Y24F</div>

  <div class="io-box-num-4">04</div>
  <div class="io-box-4">Y250 ~ Y25F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="Y250" data-role="io-data" data-slot="48">SPARE</div>
  <div class="Y250" data-role="io-tag" data-slot="48">Y250</div>
  <div class="Y251" data-role="io-data" data-slot="49">SPARE</div>
  <div class="Y251" data-role="io-tag" data-slot="49">Y251</div>
  <div class="Y252" data-role="io-data" data-slot="50">SPARE</div>
  <div class="Y252" data-role="io-tag" data-slot="50">Y252</div>
  <div class="Y253" data-role="io-data" data-slot="51">SPARE</div>
  <div class="Y253" data-role="io-tag" data-slot="51">Y253</div>
  <div class="Y254" data-role="io-data" data-slot="52">No.1 P-Burner IGT. Tr</div>
  <div class="Y254" data-role="io-tag" data-slot="52">Y254</div>
  <div class="Y255" data-role="io-data" data-slot="53">No.2 P-Burner IGT. Tr</div>
  <div class="Y255" data-role="io-tag" data-slot="53">Y255</div>
  <div class="Y256" data-role="io-data" data-slot="54">SPARE</div>
  <div class="Y256" data-role="io-tag" data-slot="54">Y256</div>
  <div class="Y257" data-role="io-data" data-slot="55">SPARE</div>
  <div class="Y257" data-role="io-tag" data-slot="55">Y257</div>
  <div class="Y258" data-role="io-data" data-slot="56">SPARE</div>
  <div class="Y258" data-role="io-tag" data-slot="56">Y258</div>
  <div class="Y259" data-role="io-data" data-slot="57">SPARE</div>
  <div class="Y259" data-role="io-tag" data-slot="57">Y259</div>
  <div class="Y25A" data-role="io-data" data-slot="58">SPARE</div>
  <div class="Y25A" data-role="io-tag" data-slot="58">Y25A</div>
  <div class="Y25B" data-role="io-data" data-slot="59">SPARE</div>
  <div class="Y25B" data-role="io-tag" data-slot="59">Y25B</div>
  <div class="Y25C" data-role="io-data" data-slot="60">SPARE</div>
  <div class="Y25C" data-role="io-tag" data-slot="60">Y25C</div>
  <div class="Y25D" data-role="io-data" data-slot="61">SPARE</div>
  <div class="Y25D" data-role="io-tag" data-slot="61">Y25D</div>
  <div class="Y25E" data-role="io-data" data-slot="62">SPARE</div>
  <div class="Y25E" data-role="io-tag" data-slot="62">Y25E</div>
  <div class="Y25F" data-role="io-data" data-slot="63">SPARE</div>
  <div class="Y25F" data-role="io-tag" data-slot="63">Y25F</div>


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
    	getAlarmText("ccf_in_1");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT01");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT01"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 11 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(11, 1000);
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
