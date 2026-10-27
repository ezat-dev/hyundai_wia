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

  <div class="io-box-num-1">29</div>
  <div class="io-box-1">X460 ~ X46F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X460" data-role="io-data" data-slot="0">PH'F Inner Roller Auto Jogging</div>
  <div class="X460" data-role="io-tag" data-slot="0">X460</div>
  <div class="X461" data-role="io-data" data-slot="1">PH'Z Inner Roller 1-1 Auto Jogging</div>
  <div class="X461" data-role="io-tag" data-slot="1">X461</div>
  <div class="X462" data-role="io-data" data-slot="2">PH'Z Inner Roller 1-2 Auto Jogging</div>
  <div class="X462" data-role="io-tag" data-slot="2">X462</div>
  <div class="X463" data-role="io-data" data-slot="3">Carb.&amp;Diff.Zone Inner Roller Auto Jogging</div>
  <div class="X463" data-role="io-tag" data-slot="3">X463</div>
  <div class="X464" data-role="io-data" data-slot="4">SPARE</div>
  <div class="X464" data-role="io-tag" data-slot="4">X464</div>
  <div class="X465" data-role="io-data" data-slot="5">SPARE</div>
  <div class="X465" data-role="io-tag" data-slot="5">X465</div>
  <div class="X466" data-role="io-data" data-slot="6">SPARE</div>
  <div class="X466" data-role="io-tag" data-slot="6">X466</div>
  <div class="X467" data-role="io-data" data-slot="7">SPARE</div>
  <div class="X467" data-role="io-tag" data-slot="7">X467</div>
  <div class="X468" data-role="io-data" data-slot="8">SPARE</div>
  <div class="X468" data-role="io-tag" data-slot="8">X468</div>
  <div class="X469" data-role="io-data" data-slot="9">SPARE</div>
  <div class="X469" data-role="io-tag" data-slot="9">X469</div>
  <div class="X46A" data-role="io-data" data-slot="10">SPARE</div>
  <div class="X46A" data-role="io-tag" data-slot="10">X46A</div>
  <div class="X46B" data-role="io-data" data-slot="11">SPARE</div>
  <div class="X46B" data-role="io-tag" data-slot="11">X46B</div>
  <div class="X46C" data-role="io-data" data-slot="12">SPARE</div>
  <div class="X46C" data-role="io-tag" data-slot="12">X46C</div>
  <div class="X46D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="X46D" data-role="io-tag" data-slot="13">X46D</div>
  <div class="X46E" data-role="io-data" data-slot="14">SPARE</div>
  <div class="X46E" data-role="io-tag" data-slot="14">X46E</div>
  <div class="X46F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="X46F" data-role="io-tag" data-slot="15">X46F</div>

  <div class="io-box-num-2">30</div>
  <div class="io-box-2">X490 ~ X49F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X490" data-role="io-data" data-slot="16">Emergency Stop</div>
  <div class="X490" data-role="io-tag" data-slot="16">X490</div>
  <div class="X491" data-role="io-data" data-slot="17">Lamp Test</div>
  <div class="X491" data-role="io-tag" data-slot="17">X491</div>
  <div class="X492" data-role="io-data" data-slot="18">Auto Run Select</div>
  <div class="X492" data-role="io-tag" data-slot="18">X492</div>
  <div class="X493" data-role="io-data" data-slot="19">Manual Run Select</div>
  <div class="X493" data-role="io-tag" data-slot="19">X493</div>
  <div class="X494" data-role="io-data" data-slot="20">Diff.&amp;Cool.Zone Roller Clutch Disconnect</div>
  <div class="X494" data-role="io-tag" data-slot="20">X494</div>
  <div class="X495" data-role="io-data" data-slot="21">Diff.&amp;Cool.Zone Roller Clutch connect</div>
  <div class="X495" data-role="io-tag" data-slot="21">X495</div>
  <div class="X496" data-role="io-data" data-slot="22">Hard.1-Zone Entr. Door Close</div>
  <div class="X496" data-role="io-tag" data-slot="22">X496</div>
  <div class="X497" data-role="io-data" data-slot="23">Hard.1-Zone Entr. Door Open</div>
  <div class="X497" data-role="io-tag" data-slot="23">X497</div>
  <div class="X498" data-role="io-data" data-slot="24">Hard.2-Zone Entr. Door Close</div>
  <div class="X498" data-role="io-tag" data-slot="24">X498</div>
  <div class="X499" data-role="io-data" data-slot="25">Hard.2-Zone Entr. Door Open</div>
  <div class="X499" data-role="io-tag" data-slot="25">X499</div>
  <div class="X49A" data-role="io-data" data-slot="26">Hard.1-Zone Charge Roller FWD</div>
  <div class="X49A" data-role="io-tag" data-slot="26">X49A</div>
  <div class="X49B" data-role="io-data" data-slot="27">Hard.1-Zone Charge Roller BWD</div>
  <div class="X49B" data-role="io-tag" data-slot="27">X49B</div>
  <div class="X49C" data-role="io-data" data-slot="28">Carb.&amp;Diff.Zone Charge Roller FWD</div>
  <div class="X49C" data-role="io-tag" data-slot="28">X49C</div>
  <div class="X49D" data-role="io-data" data-slot="29">Carb.&amp;Diff.Zone Charge Roller BWD</div>
  <div class="X49D" data-role="io-tag" data-slot="29">X49D</div>
  <div class="X49E" data-role="io-data" data-slot="30">Hard.1-Zone Inner Roller FWD</div>
  <div class="X49E" data-role="io-tag" data-slot="30">X49E</div>
  <div class="X49F" data-role="io-data" data-slot="31">Hard.1-Zone Inner Roller BWD</div>
  <div class="X49F" data-role="io-tag" data-slot="31">X49F</div>

  <div class="io-box-num-3">31</div>
  <div class="io-box-3">X4A0 ~ X4AF</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X4A0" data-role="io-data" data-slot="32">Hard.2-Zone Inner Roller FWD</div>
  <div class="X4A0" data-role="io-tag" data-slot="32">X4A0</div>
  <div class="X4A1" data-role="io-data" data-slot="33">Hard.2-Zone Inner Roller BWD</div>
  <div class="X4A1" data-role="io-tag" data-slot="33">X4A1</div>
  <div class="X4A2" data-role="io-data" data-slot="34">SPARE</div>
  <div class="X4A2" data-role="io-tag" data-slot="34">X4A2</div>
  <div class="X4A3" data-role="io-data" data-slot="35">Q'Tank Exit Door Frame S/W ON</div>
  <div class="X4A3" data-role="io-tag" data-slot="35">X4A3</div>
  <div class="X4A4" data-role="io-data" data-slot="36">Q'Tank Exit Door Frame S/W Auto Select</div>
  <div class="X4A4" data-role="io-tag" data-slot="36">X4A4</div>
  <div class="X4A5" data-role="io-data" data-slot="37">Q'Tank Exit Door Frame S/W Manual Select</div>
  <div class="X4A5" data-role="io-tag" data-slot="37">X4A5</div>
  <div class="X4A6" data-role="io-data" data-slot="38">Q'Tank Entr. Door Close</div>
  <div class="X4A6" data-role="io-tag" data-slot="38">X4A6</div>
  <div class="X4A7" data-role="io-data" data-slot="39">Q'Tank Entr. Door Open</div>
  <div class="X4A7" data-role="io-tag" data-slot="39">X4A7</div>
  <div class="X4A8" data-role="io-data" data-slot="40">Q'Tank E/V Down</div>
  <div class="X4A8" data-role="io-tag" data-slot="40">X4A8</div>
  <div class="X4A9" data-role="io-data" data-slot="41">Q'Tank E/V Up</div>
  <div class="X4A9" data-role="io-tag" data-slot="41">X4A9</div>
  <div class="X4AA" data-role="io-data" data-slot="42">Q'Tank Exit Door Close</div>
  <div class="X4AA" data-role="io-tag" data-slot="42">X4AA</div>
  <div class="X4AB" data-role="io-data" data-slot="43">Q'Tank Exit Door Open</div>
  <div class="X4AB" data-role="io-tag" data-slot="43">X4AB</div>
  <div class="X4AC" data-role="io-data" data-slot="44">Q'Tank E/V Chain FWD</div>
  <div class="X4AC" data-role="io-tag" data-slot="44">X4AC</div>
  <div class="X4AD" data-role="io-data" data-slot="45">Q'Tank E/V Chain BWD</div>
  <div class="X4AD" data-role="io-tag" data-slot="45">X4AD</div>
  <div class="X4AE" data-role="io-data" data-slot="46">Q'Tank Exit Conv. Roller FWD</div>
  <div class="X4AE" data-role="io-tag" data-slot="46">X4AE</div>
  <div class="X4AF" data-role="io-data" data-slot="47">Q'Tank Exit Conv. Roller BWD</div>
  <div class="X4AF" data-role="io-tag" data-slot="47">X4AF</div>

  <div class="io-box-num-4">32</div>
  <div class="io-box-4">X4B0 ~ X4BF</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X4B0" data-role="io-data" data-slot="48">Carb.&amp;Diff.Zone Inner Roller Auto Jogging</div>
  <div class="X4B0" data-role="io-tag" data-slot="48">X4B0</div>
  <div class="X4B1" data-role="io-data" data-slot="49">Hard.1-Zone Inner Roller Auto Jogging</div>
  <div class="X4B1" data-role="io-tag" data-slot="49">X4B1</div>
  <div class="X4B2" data-role="io-data" data-slot="50">Hard.2-Zone Inner Roller Auto Jogging</div>
  <div class="X4B2" data-role="io-tag" data-slot="50">X4B2</div>
  <div class="X4B3" data-role="io-data" data-slot="51">Q'Tank Exit P-Burner Frame (Auto)</div>
  <div class="X4B3" data-role="io-tag" data-slot="51">X4B3</div>
  <div class="X4B4" data-role="io-data" data-slot="52">Q'Tank Exit P-Burner Frame (Manual)</div>
  <div class="X4B4" data-role="io-tag" data-slot="52">X4B4</div>
  <div class="X4B5" data-role="io-data" data-slot="53">Q'Tank Exhaust Pipe P-Burner Frame (Auto)</div>
  <div class="X4B5" data-role="io-tag" data-slot="53">X4B5</div>
  <div class="X4B6" data-role="io-data" data-slot="54">Q'Tank Exhaust Pipe P-Burner Frame (Manual)</div>
  <div class="X4B6" data-role="io-tag" data-slot="54">X4B6</div>
  <div class="X4B7" data-role="io-data" data-slot="55">SPARE</div>
  <div class="X4B7" data-role="io-tag" data-slot="55">X4B7</div>
  <div class="X4B8" data-role="io-data" data-slot="56">SPARE</div>
  <div class="X4B8" data-role="io-tag" data-slot="56">X4B8</div>
  <div class="X4B9" data-role="io-data" data-slot="57">SPARE</div>
  <div class="X4B9" data-role="io-tag" data-slot="57">X4B9</div>
  <div class="X4BA" data-role="io-data" data-slot="58">SPARE</div>
  <div class="X4BA" data-role="io-tag" data-slot="58">X4BA</div>
  <div class="X4BB" data-role="io-data" data-slot="59">SPARE</div>
  <div class="X4BB" data-role="io-tag" data-slot="59">X4BB</div>
  <div class="X4BC" data-role="io-data" data-slot="60">SPARE</div>
  <div class="X4BC" data-role="io-tag" data-slot="60">X4BC</div>
  <div class="X4BD" data-role="io-data" data-slot="61">SPARE</div>
  <div class="X4BD" data-role="io-tag" data-slot="61">X4BD</div>
  <div class="X4BE" data-role="io-data" data-slot="62">SPARE</div>
  <div class="X4BE" data-role="io-tag" data-slot="62">X4BE</div>
  <div class="X4BF" data-role="io-data" data-slot="63">SPARE</div>
  <div class="X4BF" data-role="io-tag" data-slot="63">X4BF</div>


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
    	getAlarmText("ccf_x_in_8");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT08");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT08"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 24 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(24, 1000);
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
