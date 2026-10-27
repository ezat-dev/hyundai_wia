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

  <div class="io-box-num-1">17</div>
  <div class="io-box-1">X310 ~ X31F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X310" data-role="io-data" data-slot="0">PH'F Fan Invertor Abnormal</div>
  <div class="X310" data-role="io-tag" data-slot="0">X310</div>
  <div class="X311" data-role="io-data" data-slot="1">PH'Z Fan Invertor Abnormal</div>
  <div class="X311" data-role="io-tag" data-slot="1">X311</div>
  <div class="X312" data-role="io-data" data-slot="2">Carb.Zone Fan Invertor Abnormal</div>
  <div class="X312" data-role="io-tag" data-slot="2">X312</div>
  <div class="X313" data-role="io-data" data-slot="3">Diff.Zone Fan Invertor Abnormal</div>
  <div class="X313" data-role="io-tag" data-slot="3">X313</div>
  <div class="X314" data-role="io-data" data-slot="4">Hard.1-Zone Fan Invertor Abnormal</div>
  <div class="X314" data-role="io-tag" data-slot="4">X314</div>
  <div class="X315" data-role="io-data" data-slot="5">Hard.2-Zone Fan Invertor Abnormal</div>
  <div class="X315" data-role="io-tag" data-slot="5">X315</div>
  <div class="X316" data-role="io-data" data-slot="6">Q'Tank Agitator-1 Invertor Abnormal</div>
  <div class="X316" data-role="io-tag" data-slot="6">X316</div>
  <div class="X317" data-role="io-data" data-slot="7">Q'Tank Agitator-2 Invertor Abnormal</div>
  <div class="X317" data-role="io-tag" data-slot="7">X317</div>
  <div class="X318" data-role="io-data" data-slot="8">PH'F Roller Invertor Abnormal</div>
  <div class="X318" data-role="io-tag" data-slot="8">X318</div>
  <div class="X319" data-role="io-data" data-slot="9">PH'Z Roller 1-1 Invertor Abnormal</div>
  <div class="X319" data-role="io-tag" data-slot="9">X319</div>
  <div class="X31A" data-role="io-data" data-slot="10">PH'Z Roller 1-2 Invertor Abnormal</div>
  <div class="X31A" data-role="io-tag" data-slot="10">X31A</div>
  <div class="X31B" data-role="io-data" data-slot="11">Carb.Zone Roller Invertor Abnormal</div>
  <div class="X31B" data-role="io-tag" data-slot="11">X31B</div>
  <div class="X31C" data-role="io-data" data-slot="12">Diff.Zone Roller Invertor Abnormal</div>
  <div class="X31C" data-role="io-tag" data-slot="12">X31C</div>
  <div class="X31D" data-role="io-data" data-slot="13">Hard.1-Zone Roller Invertor Abnormal</div>
  <div class="X31D" data-role="io-tag" data-slot="13">X31D</div>
  <div class="X31E" data-role="io-data" data-slot="14">Hard.2-Zone Roller Invertor Abnormal</div>
  <div class="X31E" data-role="io-tag" data-slot="14">X31E</div>
  <div class="X31F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="X31F" data-role="io-tag" data-slot="15">X31F</div>

  <div class="io-box-num-2">18</div>
  <div class="io-box-2">X320 ~ X32F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X320" data-role="io-data" data-slot="16">Q'Tank Cooling Pump-1 Trip</div>
  <div class="X320" data-role="io-tag" data-slot="16">X320</div>
  <div class="X321" data-role="io-data" data-slot="17">Q'Tank Cooling Pump-2 Trip</div>
  <div class="X321" data-role="io-tag" data-slot="17">X321</div>
  <div class="X322" data-role="io-data" data-slot="18">Charge Stock Entr. Conv.Roller Trip</div>
  <div class="X322" data-role="io-tag" data-slot="18">X322</div>
  <div class="X323" data-role="io-data" data-slot="19">Charge Stock Entr. Retriver Trip</div>
  <div class="X323" data-role="io-tag" data-slot="19">X323</div>
  <div class="X324" data-role="io-data" data-slot="20">Charge Stock Exit Conv.Roller Trip</div>
  <div class="X324" data-role="io-tag" data-slot="20">X324</div>
  <div class="X325" data-role="io-data" data-slot="21">Charge Stock Exit Lifter Roller Trip</div>
  <div class="X325" data-role="io-tag" data-slot="21">X325</div>
  <div class="X326" data-role="io-data" data-slot="22">PH'F Entr. Conv. Roller-1 Trip</div>
  <div class="X326" data-role="io-tag" data-slot="22">X326</div>
  <div class="X327" data-role="io-data" data-slot="23">PH'F Entr. Conv. Roller-2 Trip</div>
  <div class="X327" data-role="io-tag" data-slot="23">X327</div>
  <div class="X328" data-role="io-data" data-slot="24">PH'Z Entr. Lifter Roller Trip</div>
  <div class="X328" data-role="io-tag" data-slot="24">X328</div>
  <div class="X329" data-role="io-data" data-slot="25">Carb.Zone Entr. Roller Trip</div>
  <div class="X329" data-role="io-tag" data-slot="25">X329</div>
  <div class="X32A" data-role="io-data" data-slot="26">Hard.1-Zone Charge Roller Trip</div>
  <div class="X32A" data-role="io-tag" data-slot="26">X32A</div>
  <div class="X32B" data-role="io-data" data-slot="27">Hard.2-Zone Exit Door Motor Trip</div>
  <div class="X32B" data-role="io-tag" data-slot="27">X32B</div>
  <div class="X32C" data-role="io-data" data-slot="28">SPARE</div>
  <div class="X32C" data-role="io-tag" data-slot="28">X32C</div>
  <div class="X32D" data-role="io-data" data-slot="29">Q'Tank Chain Roller Trip</div>
  <div class="X32D" data-role="io-tag" data-slot="29">X32D</div>
  <div class="X32E" data-role="io-data" data-slot="30">Q'Tank Exit Roller Trip</div>
  <div class="X32E" data-role="io-tag" data-slot="30">X32E</div>
  <div class="X32F" data-role="io-data" data-slot="31">SPARE</div>
  <div class="X32F" data-role="io-tag" data-slot="31">X32F</div>

  <div class="io-box-num-3">19</div>
  <div class="io-box-3">X330 ~ X33F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X330" data-role="io-data" data-slot="32">PH'Zone Heater C/B ON</div>
  <div class="X330" data-role="io-tag" data-slot="32">X330</div>
  <div class="X331" data-role="io-data" data-slot="33">SPARE</div>
  <div class="X331" data-role="io-tag" data-slot="33">X331</div>
  <div class="X332" data-role="io-data" data-slot="34">Carb.1-Zone Heater C/B ON</div>
  <div class="X332" data-role="io-tag" data-slot="34">X332</div>
  <div class="X333" data-role="io-data" data-slot="35">Carb.2-Zone Heater C/B ON</div>
  <div class="X333" data-role="io-tag" data-slot="35">X333</div>
  <div class="X334" data-role="io-data" data-slot="36">Diff.Zone Heater C/B ON</div>
  <div class="X334" data-role="io-tag" data-slot="36">X334</div>
  <div class="X335" data-role="io-data" data-slot="37">Cool.Zone Heater C/B ON</div>
  <div class="X335" data-role="io-tag" data-slot="37">X335</div>
  <div class="X336" data-role="io-data" data-slot="38">Hard.1-Zone Heater C/B ON</div>
  <div class="X336" data-role="io-tag" data-slot="38">X336</div>
  <div class="X337" data-role="io-data" data-slot="39">Hard.2-Zone Heater C/B ON</div>
  <div class="X337" data-role="io-tag" data-slot="39">X337</div>
  <div class="X338" data-role="io-data" data-slot="40">Q'Tank Heater C/B ON</div>
  <div class="X338" data-role="io-tag" data-slot="40">X338</div>
  <div class="X339" data-role="io-data" data-slot="41">PH'F Fan C/B ON</div>
  <div class="X339" data-role="io-tag" data-slot="41">X339</div>
  <div class="X33A" data-role="io-data" data-slot="42">PH'Z Fan C/B ON</div>
  <div class="X33A" data-role="io-tag" data-slot="42">X33A</div>
  <div class="X33B" data-role="io-data" data-slot="43">Carb.Zone Fan C/B ON</div>
  <div class="X33B" data-role="io-tag" data-slot="43">X33B</div>
  <div class="X33C" data-role="io-data" data-slot="44">Diff.Zone Fan C/B ON</div>
  <div class="X33C" data-role="io-tag" data-slot="44">X33C</div>
  <div class="X33D" data-role="io-data" data-slot="45">Hard.1-Zone Fan C/B ON</div>
  <div class="X33D" data-role="io-tag" data-slot="45">X33D</div>
  <div class="X33E" data-role="io-data" data-slot="46">Hard.2-Zone Fan C/B ON</div>
  <div class="X33E" data-role="io-tag" data-slot="46">X33E</div>
  <div class="X33F" data-role="io-data" data-slot="47">SPARE</div>
  <div class="X33F" data-role="io-tag" data-slot="47">X33F</div>

  <div class="io-box-num-4">20</div>
  <div class="io-box-4">X340 ~ X34F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X340" data-role="io-data" data-slot="48">Q'Tank Agitator-1 C/B ON</div>
  <div class="X340" data-role="io-tag" data-slot="48">X340</div>
  <div class="X341" data-role="io-data" data-slot="49">Q'Tank Agitator-2 C/B ON</div>
  <div class="X341" data-role="io-tag" data-slot="49">X341</div>
  <div class="X342" data-role="io-data" data-slot="50">PH'F Roller C/B ON</div>
  <div class="X342" data-role="io-tag" data-slot="50">X342</div>
  <div class="X343" data-role="io-data" data-slot="51">PH'Z 1-1 Roller C/B ON</div>
  <div class="X343" data-role="io-tag" data-slot="51">X343</div>
  <div class="X344" data-role="io-data" data-slot="52">PH'Z 1-2 Roller C/B ON</div>
  <div class="X344" data-role="io-tag" data-slot="52">X344</div>
  <div class="X345" data-role="io-data" data-slot="53">Carb.Zone Roller C/B ON</div>
  <div class="X345" data-role="io-tag" data-slot="53">X345</div>
  <div class="X346" data-role="io-data" data-slot="54">Diff.Zone Roller C/B ON</div>
  <div class="X346" data-role="io-tag" data-slot="54">X346</div>
  <div class="X347" data-role="io-data" data-slot="55">Hard.1-Zone Roller C/B ON</div>
  <div class="X347" data-role="io-tag" data-slot="55">X347</div>
  <div class="X348" data-role="io-data" data-slot="56">Hard.2-Zone Roller C/B ON</div>
  <div class="X348" data-role="io-tag" data-slot="56">X348</div>
  <div class="X349" data-role="io-data" data-slot="57">Q'Tank Cooling Pump-1 C/B ON</div>
  <div class="X349" data-role="io-tag" data-slot="57">X349</div>
  <div class="X34A" data-role="io-data" data-slot="58">Q'Tank Cooling Pump-2 C/B ON</div>
  <div class="X34A" data-role="io-tag" data-slot="58">X34A</div>
  <div class="X34B" data-role="io-data" data-slot="59">Charge Stock Entr. Conv.Roller C/B ON</div>
  <div class="X34B" data-role="io-tag" data-slot="59">X34B</div>
  <div class="X34C" data-role="io-data" data-slot="60">Charge Stock Entr. Retriver C/B ON</div>
  <div class="X34C" data-role="io-tag" data-slot="60">X34C</div>
  <div class="X34D" data-role="io-data" data-slot="61">Charge Stock Exit Conv.Roller C/B ON</div>
  <div class="X34D" data-role="io-tag" data-slot="61">X34D</div>
  <div class="X34E" data-role="io-data" data-slot="62">Charge Stock Exit Lifter  C/B ON</div>
  <div class="X34E" data-role="io-tag" data-slot="62">X34E</div>
  <div class="X34F" data-role="io-data" data-slot="63">SPARE</div>
  <div class="X34F" data-role="io-tag" data-slot="63">X34F</div>


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
    	getAlarmText("ccf_x_in_5");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT05");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT05"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 21 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(21, 1000);
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
