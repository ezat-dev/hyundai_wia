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

  <div class="io-box-num-1">17</div>
  <div class="io-box-1">Y430 ~ Y43F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="Y430" data-role="io-data" data-slot="0">PH'F Inner Position NL</div>
  <div class="Y430" data-role="io-tag" data-slot="0">Y430</div>
  <div class="Y431" data-role="io-data" data-slot="1">SPARE</div>
  <div class="Y431" data-role="io-tag" data-slot="1">Y431</div>
  <div class="Y432" data-role="io-data" data-slot="2">SPARE</div>
  <div class="Y432" data-role="io-tag" data-slot="2">Y432</div>
  <div class="Y433" data-role="io-data" data-slot="3">SPARE</div>
  <div class="Y433" data-role="io-tag" data-slot="3">Y433</div>
  <div class="Y434" data-role="io-data" data-slot="4">SPARE</div>
  <div class="Y434" data-role="io-tag" data-slot="4">Y434</div>
  <div class="Y435" data-role="io-data" data-slot="5">SPARE</div>
  <div class="Y435" data-role="io-tag" data-slot="5">Y435</div>
  <div class="Y436" data-role="io-data" data-slot="6">SPARE</div>
  <div class="Y436" data-role="io-tag" data-slot="6">Y436</div>
  <div class="Y437" data-role="io-data" data-slot="7">SPARE</div>
  <div class="Y437" data-role="io-tag" data-slot="7">Y437</div>
  <div class="Y438" data-role="io-data" data-slot="8">SPARE</div>
  <div class="Y438" data-role="io-tag" data-slot="8">Y438</div>
  <div class="Y439" data-role="io-data" data-slot="9">SPARE</div>
  <div class="Y439" data-role="io-tag" data-slot="9">Y439</div>
  <div class="Y43A" data-role="io-data" data-slot="10">SPARE</div>
  <div class="Y43A" data-role="io-tag" data-slot="10">Y43A</div>
  <div class="Y43B" data-role="io-data" data-slot="11">SPARE</div>
  <div class="Y43B" data-role="io-tag" data-slot="11">Y43B</div>
  <div class="Y43C" data-role="io-data" data-slot="12">SPARE</div>
  <div class="Y43C" data-role="io-tag" data-slot="12">Y43C</div>
  <div class="Y43D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="Y43D" data-role="io-tag" data-slot="13">Y43D</div>
  <div class="Y43E" data-role="io-data" data-slot="14">SPARE</div>
  <div class="Y43E" data-role="io-tag" data-slot="14">Y43E</div>
  <div class="Y43F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="Y43F" data-role="io-tag" data-slot="15">Y43F</div>

  <div class="io-box-num-2">18</div>
  <div class="io-box-2">Y470 ~ Y47F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="Y470" data-role="io-data" data-slot="16">Manual Mode</div>
  <div class="Y470" data-role="io-tag" data-slot="16">Y470</div>
  <div class="Y471" data-role="io-data" data-slot="17">Auto Mode</div>
  <div class="Y471" data-role="io-tag" data-slot="17">Y471</div>
  <div class="Y472" data-role="io-data" data-slot="18">Auto Condition</div>
  <div class="Y472" data-role="io-tag" data-slot="18">Y472</div>
  <div class="Y473" data-role="io-data" data-slot="19">PH'F Exit Door Close</div>
  <div class="Y473" data-role="io-tag" data-slot="19">Y473</div>
  <div class="Y474" data-role="io-data" data-slot="20">PH'F Exit Door Open</div>
  <div class="Y474" data-role="io-tag" data-slot="20">Y474</div>
  <div class="Y475" data-role="io-data" data-slot="21">PH'Z Charge Lifter Down</div>
  <div class="Y475" data-role="io-tag" data-slot="21">Y475</div>
  <div class="Y476" data-role="io-data" data-slot="22">PH'Z Charge Lifter Up</div>
  <div class="Y476" data-role="io-tag" data-slot="22">Y476</div>
  <div class="Y477" data-role="io-data" data-slot="23">PH'Z Entr. Door Close</div>
  <div class="Y477" data-role="io-tag" data-slot="23">Y477</div>
  <div class="Y478" data-role="io-data" data-slot="24">PH'Z Entr. Door Open</div>
  <div class="Y478" data-role="io-tag" data-slot="24">Y478</div>
  <div class="Y479" data-role="io-data" data-slot="25">Carb.Zone Entr. Door Close</div>
  <div class="Y479" data-role="io-tag" data-slot="25">Y479</div>
  <div class="Y47A" data-role="io-data" data-slot="26">Carb.Zone Entr. Door Open</div>
  <div class="Y47A" data-role="io-tag" data-slot="26">Y47A</div>
  <div class="Y47B" data-role="io-data" data-slot="27">Carb.Zone Charge Roller Clutch Connect</div>
  <div class="Y47B" data-role="io-tag" data-slot="27">Y47B</div>
  <div class="Y47C" data-role="io-data" data-slot="28">PH'Z Entr. Door Curtain S/W ON</div>
  <div class="Y47C" data-role="io-tag" data-slot="28">Y47C</div>
  <div class="Y47D" data-role="io-data" data-slot="29">PH'Z Entr. Door Curtain Frame Dete.</div>
  <div class="Y47D" data-role="io-tag" data-slot="29">Y47D</div>
  <div class="Y47E" data-role="io-data" data-slot="30">PH'Z Exhaust Pipe P-Burner Frame Dete.</div>
  <div class="Y47E" data-role="io-tag" data-slot="30">Y47E</div>
  <div class="Y47F" data-role="io-data" data-slot="31">SPARE</div>
  <div class="Y47F" data-role="io-tag" data-slot="31">Y47F</div>

  <div class="io-box-num-3">19</div>
  <div class="io-box-3">Y480 ~ Y48F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="Y480" data-role="io-data" data-slot="32">PH'F Product Detection</div>
  <div class="Y480" data-role="io-tag" data-slot="32">Y480</div>
  <div class="Y481" data-role="io-data" data-slot="33">PH'Z Charge Roller Product Dete.</div>
  <div class="Y481" data-role="io-tag" data-slot="33">Y481</div>
  <div class="Y482" data-role="io-data" data-slot="34">PH'Z Product 1-1 Dete.</div>
  <div class="Y482" data-role="io-tag" data-slot="34">Y482</div>
  <div class="Y483" data-role="io-data" data-slot="35">PH'Z Product 1-2 Dete.</div>
  <div class="Y483" data-role="io-tag" data-slot="35">Y483</div>
  <div class="Y484" data-role="io-data" data-slot="36">Carb.Zone Charge Product Dete.</div>
  <div class="Y484" data-role="io-tag" data-slot="36">Y484</div>
  <div class="Y485" data-role="io-data" data-slot="37">Cool.Zone Product Dete.-2</div>
  <div class="Y485" data-role="io-tag" data-slot="37">Y485</div>
  <div class="Y486" data-role="io-data" data-slot="38">Hard.1-Zone Entr. Door Close</div>
  <div class="Y486" data-role="io-tag" data-slot="38">Y486</div>
  <div class="Y487" data-role="io-data" data-slot="39">PH'Z Entr. Door P-Burner Frame Dete.</div>
  <div class="Y487" data-role="io-tag" data-slot="39">Y487</div>
  <div class="Y488" data-role="io-data" data-slot="40">SPARE</div>
  <div class="Y488" data-role="io-tag" data-slot="40">Y488</div>
  <div class="Y489" data-role="io-data" data-slot="41">SPARE</div>
  <div class="Y489" data-role="io-tag" data-slot="41">Y489</div>
  <div class="Y48A" data-role="io-data" data-slot="42">SPARE</div>
  <div class="Y48A" data-role="io-tag" data-slot="42">Y48A</div>
  <div class="Y48B" data-role="io-data" data-slot="43">SPARE</div>
  <div class="Y48B" data-role="io-tag" data-slot="43">Y48B</div>
  <div class="Y48C" data-role="io-data" data-slot="44">SPARE</div>
  <div class="Y48C" data-role="io-tag" data-slot="44">Y48C</div>
  <div class="Y48D" data-role="io-data" data-slot="45">SPARE</div>
  <div class="Y48D" data-role="io-tag" data-slot="45">Y48D</div>
  <div class="Y48E" data-role="io-data" data-slot="46">SPARE</div>
  <div class="Y48E" data-role="io-tag" data-slot="46">Y48E</div>
  <div class="Y48F" data-role="io-data" data-slot="47">SPARE</div>
  <div class="Y48F" data-role="io-tag" data-slot="47">Y48F</div>

  <div class="io-box-num-4">20</div>
  <div class="io-box-4">Y4C0 ~ Y4CF</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="Y4C0" data-role="io-data" data-slot="48">CCF Exit (Manual)</div>
  <div class="Y4C0" data-role="io-tag" data-slot="48">Y4C0</div>
  <div class="Y4C1" data-role="io-data" data-slot="49">CCF Exit (Auto)</div>
  <div class="Y4C1" data-role="io-tag" data-slot="49">Y4C1</div>
  <div class="Y4C2" data-role="io-data" data-slot="50">CCF Exit Auto. Conditions</div>
  <div class="Y4C2" data-role="io-tag" data-slot="50">Y4C2</div>
  <div class="Y4C3" data-role="io-data" data-slot="51">Diff.&amp;Cool.Zone Roller Clutch Connect</div>
  <div class="Y4C3" data-role="io-tag" data-slot="51">Y4C3</div>
  <div class="Y4C4" data-role="io-data" data-slot="52">Hard.1-Zone Entr. Door Close</div>
  <div class="Y4C4" data-role="io-tag" data-slot="52">Y4C4</div>
  <div class="Y4C5" data-role="io-data" data-slot="53">Hard.1-Zone Entr. Door Open</div>
  <div class="Y4C5" data-role="io-tag" data-slot="53">Y4C5</div>
  <div class="Y4C6" data-role="io-data" data-slot="54">Hard.2-Zone Entr. Door Close</div>
  <div class="Y4C6" data-role="io-tag" data-slot="54">Y4C6</div>
  <div class="Y4C7" data-role="io-data" data-slot="55">Hard.2-Zone Entr. Door Open</div>
  <div class="Y4C7" data-role="io-tag" data-slot="55">Y4C7</div>
  <div class="Y4C8" data-role="io-data" data-slot="56">Cool.Zone Product Dete.-1</div>
  <div class="Y4C8" data-role="io-tag" data-slot="56">Y4C8</div>
  <div class="Y4C9" data-role="io-data" data-slot="57">Hard.1-Zone Charge Position Product Dete.</div>
  <div class="Y4C9" data-role="io-tag" data-slot="57">Y4C9</div>
  <div class="Y4CA" data-role="io-data" data-slot="58">Hard.1-Zone Product Dete.</div>
  <div class="Y4CA" data-role="io-tag" data-slot="58">Y4CA</div>
  <div class="Y4CB" data-role="io-data" data-slot="59">Hard.2-Zone Product Dete.</div>
  <div class="Y4CB" data-role="io-tag" data-slot="59">Y4CB</div>
  <div class="Y4CC" data-role="io-data" data-slot="60">Q'Tank Exit (Manual)</div>
  <div class="Y4CC" data-role="io-tag" data-slot="60">Y4CC</div>
  <div class="Y4CD" data-role="io-data" data-slot="61">Q'Tank Exit (Auto)</div>
  <div class="Y4CD" data-role="io-tag" data-slot="61">Y4CD</div>
  <div class="Y4CE" data-role="io-data" data-slot="62">Q'Tank Exit Auto. Conditions</div>
  <div class="Y4CE" data-role="io-tag" data-slot="62">Y4CE</div>
  <div class="Y4CF" data-role="io-data" data-slot="63">SPARE</div>
  <div class="Y4CF" data-role="io-tag" data-slot="63">Y4CF</div>


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
    	getAlarmText("ccf_in_5");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT05");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.PLCINPUT05"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 15 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(15, 1000);
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
