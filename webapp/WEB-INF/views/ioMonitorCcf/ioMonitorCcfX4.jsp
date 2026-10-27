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

  <div class="io-box-num-1">13</div>
  <div class="io-box-1">X2A0 ~ X2AF</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X2A0" data-role="io-data" data-slot="0">Diff.Zone Upper Photo Sensor</div>
  <div class="X2A0" data-role="io-tag" data-slot="0">X2A0</div>
  <div class="X2A1" data-role="io-data" data-slot="1">Diff.Zone Lower Photo Sensor</div>
  <div class="X2A1" data-role="io-tag" data-slot="1">X2A1</div>
  <div class="X2A2" data-role="io-data" data-slot="2">Hard.1-Zone Upper Photo Sensor</div>
  <div class="X2A2" data-role="io-tag" data-slot="2">X2A2</div>
  <div class="X2A3" data-role="io-data" data-slot="3">Hard.1-Zone Lower Photo Sensor</div>
  <div class="X2A3" data-role="io-tag" data-slot="3">X2A3</div>
  <div class="X2A4" data-role="io-data" data-slot="4">Hard.2-Zone Upper Photo Sensor</div>
  <div class="X2A4" data-role="io-tag" data-slot="4">X2A4</div>
  <div class="X2A5" data-role="io-data" data-slot="5">Hard.2-Zone Lower Photo Sensor</div>
  <div class="X2A5" data-role="io-tag" data-slot="5">X2A5</div>
  <div class="X2A6" data-role="io-data" data-slot="6">SPARE</div>
  <div class="X2A6" data-role="io-tag" data-slot="6">X2A6</div>
  <div class="X2A7" data-role="io-data" data-slot="7">SPARE</div>
  <div class="X2A7" data-role="io-tag" data-slot="7">X2A7</div>
  <div class="X2A8" data-role="io-data" data-slot="8">SPARE</div>
  <div class="X2A8" data-role="io-tag" data-slot="8">X2A8</div>
  <div class="X2A9" data-role="io-data" data-slot="9">SPARE</div>
  <div class="X2A9" data-role="io-tag" data-slot="9">X2A9</div>
  <div class="X2AA" data-role="io-data" data-slot="10">SPARE</div>
  <div class="X2AA" data-role="io-tag" data-slot="10">X2AA</div>
  <div class="X2AB" data-role="io-data" data-slot="11">SPARE</div>
  <div class="X2AB" data-role="io-tag" data-slot="11">X2AB</div>
  <div class="X2AC" data-role="io-data" data-slot="12">SPARE</div>
  <div class="X2AC" data-role="io-tag" data-slot="12">X2AC</div>
  <div class="X2AD" data-role="io-data" data-slot="13">SPARE</div>
  <div class="X2AD" data-role="io-tag" data-slot="13">X2AD</div>
  <div class="X2AE" data-role="io-data" data-slot="14">SPARE</div>
  <div class="X2AE" data-role="io-tag" data-slot="14">X2AE</div>
  <div class="X2AF" data-role="io-data" data-slot="15">SPARE</div>
  <div class="X2AF" data-role="io-tag" data-slot="15">X2AF</div>

  <div class="io-box-num-2">14</div>
  <div class="io-box-2">X2C0 ~ X2CF</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X2C0" data-role="io-data" data-slot="16">Q'Tank Entr. Door Close</div>
  <div class="X2C0" data-role="io-tag" data-slot="16">X2C0</div>
  <div class="X2C1" data-role="io-data" data-slot="17">Q'Tank Entr. Door Open</div>
  <div class="X2C1" data-role="io-tag" data-slot="17">X2C1</div>
  <div class="X2C2" data-role="io-data" data-slot="18">Q'Tank Entr. Elevator Down</div>
  <div class="X2C2" data-role="io-tag" data-slot="18">X2C2</div>
  <div class="X2C3" data-role="io-data" data-slot="19">Q'Tank Entr. Elevator Up</div>
  <div class="X2C3" data-role="io-tag" data-slot="19">X2C3</div>
  <div class="X2C4" data-role="io-data" data-slot="20">Q'Tank Entr. Elevator Position</div>
  <div class="X2C4" data-role="io-tag" data-slot="20">X2C4</div>
  <div class="X2C5" data-role="io-data" data-slot="21">Q'Tank Exit Door Close</div>
  <div class="X2C5" data-role="io-tag" data-slot="21">X2C5</div>
  <div class="X2C6" data-role="io-data" data-slot="22">Q'Tank Exit Door Open</div>
  <div class="X2C6" data-role="io-tag" data-slot="22">X2C6</div>
  <div class="X2C7" data-role="io-data" data-slot="23">Q'Tank Exit Roller Position</div>
  <div class="X2C7" data-role="io-tag" data-slot="23">X2C7</div>
  <div class="X2C8" data-role="io-data" data-slot="24">SPARE</div>
  <div class="X2C8" data-role="io-tag" data-slot="24">X2C8</div>
  <div class="X2C9" data-role="io-data" data-slot="25">Q'Tank Oil Level Low-Low</div>
  <div class="X2C9" data-role="io-tag" data-slot="25">X2C9</div>
  <div class="X2CA" data-role="io-data" data-slot="26">Q'Tank Oil Level Low</div>
  <div class="X2CA" data-role="io-tag" data-slot="26">X2CA</div>
  <div class="X2CB" data-role="io-data" data-slot="27">Q'Tank Oil Level High</div>
  <div class="X2CB" data-role="io-tag" data-slot="27">X2CB</div>
  <div class="X2CC" data-role="io-data" data-slot="28">Q'Tank Oil Level High-High</div>
  <div class="X2CC" data-role="io-tag" data-slot="28">X2CC</div>
  <div class="X2CD" data-role="io-data" data-slot="29">Q'Tank Agitator-1 Rota.Check NSW</div>
  <div class="X2CD" data-role="io-tag" data-slot="29">X2CD</div>
  <div class="X2CE" data-role="io-data" data-slot="30">Q'Tank Agitator-2 Rota.Check NSW</div>
  <div class="X2CE" data-role="io-tag" data-slot="30">X2CE</div>
  <div class="X2CF" data-role="io-data" data-slot="31">SPARE</div>
  <div class="X2CF" data-role="io-tag" data-slot="31">X2CF</div>

  <div class="io-box-num-3">15</div>
  <div class="io-box-3">X2D0 ~ X2DF</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X2D0" data-role="io-data" data-slot="32">Q'Tank Exhaust P-Burner Flame OK</div>
  <div class="X2D0" data-role="io-tag" data-slot="32">X2D0</div>
  <div class="X2D1" data-role="io-data" data-slot="33">Q'Tank Exit Door P-Burner Flame OK</div>
  <div class="X2D1" data-role="io-tag" data-slot="33">X2D1</div>
  <div class="X2D2" data-role="io-data" data-slot="34">Q'Tank Exit Door Curtain Flame OK</div>
  <div class="X2D2" data-role="io-tag" data-slot="34">X2D2</div>
  <div class="X2D3" data-role="io-data" data-slot="35">Q'Tank Exit Door Left-Stopper</div>
  <div class="X2D3" data-role="io-tag" data-slot="35">X2D3</div>
  <div class="X2D4" data-role="io-data" data-slot="36">Q'Tank Exit Door Right-Stopper</div>
  <div class="X2D4" data-role="io-tag" data-slot="36">X2D4</div>
  <div class="X2D5" data-role="io-data" data-slot="37">SPARE</div>
  <div class="X2D5" data-role="io-tag" data-slot="37">X2D5</div>
  <div class="X2D6" data-role="io-data" data-slot="38">SPARE</div>
  <div class="X2D6" data-role="io-tag" data-slot="38">X2D6</div>
  <div class="X2D7" data-role="io-data" data-slot="39">SPARE</div>
  <div class="X2D7" data-role="io-tag" data-slot="39">X2D7</div>
  <div class="X2D8" data-role="io-data" data-slot="40">SPARE</div>
  <div class="X2D8" data-role="io-tag" data-slot="40">X2D8</div>
  <div class="X2D9" data-role="io-data" data-slot="41">SPARE</div>
  <div class="X2D9" data-role="io-tag" data-slot="41">X2D9</div>
  <div class="X2DA" data-role="io-data" data-slot="42">SPARE</div>
  <div class="X2DA" data-role="io-tag" data-slot="42">X2DA</div>
  <div class="X2DB" data-role="io-data" data-slot="43">SPARE</div>
  <div class="X2DB" data-role="io-tag" data-slot="43">X2DB</div>
  <div class="X2DC" data-role="io-data" data-slot="44">SPARE</div>
  <div class="X2DC" data-role="io-tag" data-slot="44">X2DC</div>
  <div class="X2DD" data-role="io-data" data-slot="45">SPARE</div>
  <div class="X2DD" data-role="io-tag" data-slot="45">X2DD</div>
  <div class="X2DE" data-role="io-data" data-slot="46">SPARE</div>
  <div class="X2DE" data-role="io-tag" data-slot="46">X2DE</div>
  <div class="X2DF" data-role="io-data" data-slot="47">SPARE</div>
  <div class="X2DF" data-role="io-tag" data-slot="47">X2DF</div>

  <div class="io-box-num-4">16</div>
  <div class="io-box-4">X300 ~ X30F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X300" data-role="io-data" data-slot="48">PH'Z SCR Unit Abnormal</div>
  <div class="X300" data-role="io-tag" data-slot="48">X300</div>
  <div class="X301" data-role="io-data" data-slot="49">SPARE</div>
  <div class="X301" data-role="io-tag" data-slot="49">X301</div>
  <div class="X302" data-role="io-data" data-slot="50">Carb.1-Zone SCR Unit Abnormal</div>
  <div class="X302" data-role="io-tag" data-slot="50">X302</div>
  <div class="X303" data-role="io-data" data-slot="51">Carb.2-Zone SCR Unit Abnormal</div>
  <div class="X303" data-role="io-tag" data-slot="51">X303</div>
  <div class="X304" data-role="io-data" data-slot="52">Diff.Zone SCR Unit Abnormal</div>
  <div class="X304" data-role="io-tag" data-slot="52">X304</div>
  <div class="X305" data-role="io-data" data-slot="53">Cool.Zone SCR Unit Abnormal</div>
  <div class="X305" data-role="io-tag" data-slot="53">X305</div>
  <div class="X306" data-role="io-data" data-slot="54">Hard.1-Zone SCR Unit Abnormal</div>
  <div class="X306" data-role="io-tag" data-slot="54">X306</div>
  <div class="X307" data-role="io-data" data-slot="55">Hard.2-Zone SCR Unit Abnormal</div>
  <div class="X307" data-role="io-tag" data-slot="55">X307</div>
  <div class="X308" data-role="io-data" data-slot="56">Q'Tank Heater ON</div>
  <div class="X308" data-role="io-tag" data-slot="56">X308</div>
  <div class="X309" data-role="io-data" data-slot="57">SPARE</div>
  <div class="X309" data-role="io-tag" data-slot="57">X309</div>
  <div class="X30A" data-role="io-data" data-slot="58">SPARE</div>
  <div class="X30A" data-role="io-tag" data-slot="58">X30A</div>
  <div class="X30B" data-role="io-data" data-slot="59">SPARE</div>
  <div class="X30B" data-role="io-tag" data-slot="59">X30B</div>
  <div class="X30C" data-role="io-data" data-slot="60">SPARE</div>
  <div class="X30C" data-role="io-tag" data-slot="60">X30C</div>
  <div class="X30D" data-role="io-data" data-slot="61">SPARE</div>
  <div class="X30D" data-role="io-tag" data-slot="61">X30D</div>
  <div class="X30E" data-role="io-data" data-slot="62">SPARE</div>
  <div class="X30E" data-role="io-tag" data-slot="62">X30E</div>
  <div class="X30F" data-role="io-data" data-slot="63">SPARE</div>
  <div class="X30F" data-role="io-tag" data-slot="63">X30F</div>


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
    	getAlarmText("ccf_x_in_4");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT04");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT04"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 20 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(20, 1000);
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
