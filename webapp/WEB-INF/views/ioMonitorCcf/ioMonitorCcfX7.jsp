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

  <div class="io-box-num-1">25</div>
  <div class="io-box-1">X400 ~ X40F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X400" data-role="io-data" data-slot="0">Emergency Stop</div>
  <div class="X400" data-role="io-tag" data-slot="0">X400</div>
  <div class="X401" data-role="io-data" data-slot="1">Lamp Test</div>
  <div class="X401" data-role="io-tag" data-slot="1">X401</div>
  <div class="X402" data-role="io-data" data-slot="2">Auto Select</div>
  <div class="X402" data-role="io-tag" data-slot="2">X402</div>
  <div class="X403" data-role="io-data" data-slot="3">Manual Select</div>
  <div class="X403" data-role="io-tag" data-slot="3">X403</div>
  <div class="X404" data-role="io-data" data-slot="4">Chage Stock Entr. Conv. Roller FWD</div>
  <div class="X404" data-role="io-tag" data-slot="4">X404</div>
  <div class="X405" data-role="io-data" data-slot="5">Chage Stock Entr. Conv. Roller BWD</div>
  <div class="X405" data-role="io-tag" data-slot="5">X405</div>
  <div class="X406" data-role="io-data" data-slot="6">Chage Stock Entr. Retriver FWD</div>
  <div class="X406" data-role="io-tag" data-slot="6">X406</div>
  <div class="X407" data-role="io-data" data-slot="7">Chage Stock Entr. Retriver BWD</div>
  <div class="X407" data-role="io-tag" data-slot="7">X407</div>
  <div class="X408" data-role="io-data" data-slot="8">Chage Stock Exit Conv. Roller FWD</div>
  <div class="X408" data-role="io-tag" data-slot="8">X408</div>
  <div class="X409" data-role="io-data" data-slot="9">Chage Stock Exit Conv. Roller BWD</div>
  <div class="X409" data-role="io-tag" data-slot="9">X409</div>
  <div class="X40A" data-role="io-data" data-slot="10">Chage Stock Exit Lifter Roller Dwon</div>
  <div class="X40A" data-role="io-tag" data-slot="10">X40A</div>
  <div class="X40B" data-role="io-data" data-slot="11">Chage Stock Exit Lifter Roller Up</div>
  <div class="X40B" data-role="io-tag" data-slot="11">X40B</div>
  <div class="X40C" data-role="io-data" data-slot="12">Chage Stock Exit Lifter Roller FWD</div>
  <div class="X40C" data-role="io-tag" data-slot="12">X40C</div>
  <div class="X40D" data-role="io-data" data-slot="13">Chage Stock Exit Lifter Roller BWD</div>
  <div class="X40D" data-role="io-tag" data-slot="13">X40D</div>
  <div class="X40E" data-role="io-data" data-slot="14">PH'F Entr. Conv. Roller-1 FWD</div>
  <div class="X40E" data-role="io-tag" data-slot="14">X40E</div>
  <div class="X40F" data-role="io-data" data-slot="15">PH'F Entr. Conv. Roller-1 BWD</div>
  <div class="X40F" data-role="io-tag" data-slot="15">X40F</div>

  <div class="io-box-num-2">26</div>
  <div class="io-box-2">X410 ~ X41F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X410" data-role="io-data" data-slot="16">PH'F Entr. Conv. Roller-2 FWD</div>
  <div class="X410" data-role="io-tag" data-slot="16">X410</div>
  <div class="X411" data-role="io-data" data-slot="17">PH'F Entr. Conv. Roller-2 BWD</div>
  <div class="X411" data-role="io-tag" data-slot="17">X411</div>
  <div class="X412" data-role="io-data" data-slot="18">PH'F Entr. Door Close</div>
  <div class="X412" data-role="io-tag" data-slot="18">X412</div>
  <div class="X413" data-role="io-data" data-slot="19">PH'F Entr. Door Open</div>
  <div class="X413" data-role="io-tag" data-slot="19">X413</div>
  <div class="X414" data-role="io-data" data-slot="20">PH'F Exit Door Close</div>
  <div class="X414" data-role="io-tag" data-slot="20">X414</div>
  <div class="X415" data-role="io-data" data-slot="21">PH'F Exit Door Open</div>
  <div class="X415" data-role="io-tag" data-slot="21">X415</div>
  <div class="X416" data-role="io-data" data-slot="22">SPARE</div>
  <div class="X416" data-role="io-tag" data-slot="22">X416</div>
  <div class="X417" data-role="io-data" data-slot="23">SPARE</div>
  <div class="X417" data-role="io-tag" data-slot="23">X417</div>
  <div class="X418" data-role="io-data" data-slot="24">PH'F Inner Roller Auto Jogging</div>
  <div class="X418" data-role="io-tag" data-slot="24">X418</div>
  <div class="X419" data-role="io-data" data-slot="25">PH'F Inner Roller FWD</div>
  <div class="X419" data-role="io-tag" data-slot="25">X419</div>
  <div class="X41A" data-role="io-data" data-slot="26">PH'F Inner Roller BWD</div>
  <div class="X41A" data-role="io-tag" data-slot="26">X41A</div>
  <div class="X41B" data-role="io-data" data-slot="27">SPARE</div>
  <div class="X41B" data-role="io-tag" data-slot="27">X41B</div>
  <div class="X41C" data-role="io-data" data-slot="28">SPARE</div>
  <div class="X41C" data-role="io-tag" data-slot="28">X41C</div>
  <div class="X41D" data-role="io-data" data-slot="29">SPARE</div>
  <div class="X41D" data-role="io-tag" data-slot="29">X41D</div>
  <div class="X41E" data-role="io-data" data-slot="30">SPARE</div>
  <div class="X41E" data-role="io-tag" data-slot="30">X41E</div>
  <div class="X41F" data-role="io-data" data-slot="31">SPARE</div>
  <div class="X41F" data-role="io-tag" data-slot="31">X41F</div>

  <div class="io-box-num-3">27</div>
  <div class="io-box-3">X440 ~ X44F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X440" data-role="io-data" data-slot="32">Emergency Stop</div>
  <div class="X440" data-role="io-tag" data-slot="32">X440</div>
  <div class="X441" data-role="io-data" data-slot="33">Lamp Test</div>
  <div class="X441" data-role="io-tag" data-slot="33">X441</div>
  <div class="X442" data-role="io-data" data-slot="34">Auto Select</div>
  <div class="X442" data-role="io-tag" data-slot="34">X442</div>
  <div class="X443" data-role="io-data" data-slot="35">Manual Select</div>
  <div class="X443" data-role="io-tag" data-slot="35">X443</div>
  <div class="X444" data-role="io-data" data-slot="36">PH'F Exit Door Close</div>
  <div class="X444" data-role="io-tag" data-slot="36">X444</div>
  <div class="X445" data-role="io-data" data-slot="37">PH'F Exit Door Open</div>
  <div class="X445" data-role="io-tag" data-slot="37">X445</div>
  <div class="X446" data-role="io-data" data-slot="38">PH'Z Charge Lifter Down</div>
  <div class="X446" data-role="io-tag" data-slot="38">X446</div>
  <div class="X447" data-role="io-data" data-slot="39">PH'Z Charge Lifter Up</div>
  <div class="X447" data-role="io-tag" data-slot="39">X447</div>
  <div class="X448" data-role="io-data" data-slot="40">PH'Z Entr. Door Close</div>
  <div class="X448" data-role="io-tag" data-slot="40">X448</div>
  <div class="X449" data-role="io-data" data-slot="41">PH'Z Entr. Door Open</div>
  <div class="X449" data-role="io-tag" data-slot="41">X449</div>
  <div class="X44A" data-role="io-data" data-slot="42">Carb.Zone Entr. Door Close</div>
  <div class="X44A" data-role="io-tag" data-slot="42">X44A</div>
  <div class="X44B" data-role="io-data" data-slot="43">Carb.Zone Entr. Door Open</div>
  <div class="X44B" data-role="io-tag" data-slot="43">X44B</div>
  <div class="X44C" data-role="io-data" data-slot="44">PH'Z Charge Lifter Roller FWD</div>
  <div class="X44C" data-role="io-tag" data-slot="44">X44C</div>
  <div class="X44D" data-role="io-data" data-slot="45">PH'Z Charge Lifter Roller BWD</div>
  <div class="X44D" data-role="io-tag" data-slot="45">X44D</div>
  <div class="X44E" data-role="io-data" data-slot="46">Carb.Zone Charge Roller FWD</div>
  <div class="X44E" data-role="io-tag" data-slot="46">X44E</div>
  <div class="X44F" data-role="io-data" data-slot="47">Carb.Zone Charge Roller BWD</div>
  <div class="X44F" data-role="io-tag" data-slot="47">X44F</div>

  <div class="io-box-num-4">28</div>
  <div class="io-box-4">X450 ~ X45F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X450" data-role="io-data" data-slot="48">Carb.Zone Roller Clutch Disconnect</div>
  <div class="X450" data-role="io-tag" data-slot="48">X450</div>
  <div class="X451" data-role="io-data" data-slot="49">Carb.Zone Roller Clutch connect</div>
  <div class="X451" data-role="io-tag" data-slot="49">X451</div>
  <div class="X452" data-role="io-data" data-slot="50">SPARE</div>
  <div class="X452" data-role="io-tag" data-slot="50">X452</div>
  <div class="X453" data-role="io-data" data-slot="51">SPARE</div>
  <div class="X453" data-role="io-tag" data-slot="51">X453</div>
  <div class="X454" data-role="io-data" data-slot="52">SPARE</div>
  <div class="X454" data-role="io-tag" data-slot="52">X454</div>
  <div class="X455" data-role="io-data" data-slot="53">PH'Z Entr.Door Frame S/W ON</div>
  <div class="X455" data-role="io-tag" data-slot="53">X455</div>
  <div class="X456" data-role="io-data" data-slot="54">PH'Z Entr.Door PBurner Ignition (Manual)</div>
  <div class="X456" data-role="io-tag" data-slot="54">X456</div>
  <div class="X457" data-role="io-data" data-slot="55">PH'Z Entr.Door PBurner Ignition (Auto)</div>
  <div class="X457" data-role="io-tag" data-slot="55">X457</div>
  <div class="X458" data-role="io-data" data-slot="56">PH'F Entr. Roller FWD</div>
  <div class="X458" data-role="io-tag" data-slot="56">X458</div>
  <div class="X459" data-role="io-data" data-slot="57">PH'F Entr. Roller BWD</div>
  <div class="X459" data-role="io-tag" data-slot="57">X459</div>
  <div class="X45A" data-role="io-data" data-slot="58">PH'Z Inner Roller 1-1 FWD</div>
  <div class="X45A" data-role="io-tag" data-slot="58">X45A</div>
  <div class="X45B" data-role="io-data" data-slot="59">PH'Z Inner Roller 1-1 BWD</div>
  <div class="X45B" data-role="io-tag" data-slot="59">X45B</div>
  <div class="X45C" data-role="io-data" data-slot="60">PH'Z Inner Roller 1-2 FWD</div>
  <div class="X45C" data-role="io-tag" data-slot="60">X45C</div>
  <div class="X45D" data-role="io-data" data-slot="61">PH'Z Inner Roller 1-2 BWD</div>
  <div class="X45D" data-role="io-tag" data-slot="61">X45D</div>
  <div class="X45E" data-role="io-data" data-slot="62">Carb.&amp;Diff.Zone Inner Roller FWD</div>
  <div class="X45E" data-role="io-tag" data-slot="62">X45E</div>
  <div class="X45F" data-role="io-data" data-slot="63">Carb.&amp;Diff.Zone Inner Roller BWD</div>
  <div class="X45F" data-role="io-tag" data-slot="63">X45F</div>


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
    	getAlarmText("ccf_x_in_7");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT07");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT07"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 23 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(23, 1000);
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
