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

  <div class="io-box-num-1">21</div>
  <div class="io-box-1">X350 ~ X35F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X350" data-role="io-data" data-slot="0">PH'F Entr. Conv. Roller-1</div>
  <div class="X350" data-role="io-tag" data-slot="0">X350</div>
  <div class="X351" data-role="io-data" data-slot="1">PH'F Entr. Conv. Roller-2</div>
  <div class="X351" data-role="io-tag" data-slot="1">X351</div>
  <div class="X352" data-role="io-data" data-slot="2">PH'Z Entr. Lifter C/B ON</div>
  <div class="X352" data-role="io-tag" data-slot="2">X352</div>
  <div class="X353" data-role="io-data" data-slot="3">Carb.Zone Entr. Roller C/B ON</div>
  <div class="X353" data-role="io-tag" data-slot="3">X353</div>
  <div class="X354" data-role="io-data" data-slot="4">Hard.1-Zone Entr. Roller C/B ON</div>
  <div class="X354" data-role="io-tag" data-slot="4">X354</div>
  <div class="X355" data-role="io-data" data-slot="5">Hard.2-Zone Exit Door Motor</div>
  <div class="X355" data-role="io-tag" data-slot="5">X355</div>
  <div class="X356" data-role="io-data" data-slot="6">SPARE</div>
  <div class="X356" data-role="io-tag" data-slot="6">X356</div>
  <div class="X357" data-role="io-data" data-slot="7">Q'Tank E/V Chain Roller C/B ON</div>
  <div class="X357" data-role="io-tag" data-slot="7">X357</div>
  <div class="X358" data-role="io-data" data-slot="8">Q'Tank Exit Position Roller C/B ON</div>
  <div class="X358" data-role="io-tag" data-slot="8">X358</div>
  <div class="X359" data-role="io-data" data-slot="9">Panel A/C C/B ON</div>
  <div class="X359" data-role="io-tag" data-slot="9">X359</div>
  <div class="X35A" data-role="io-data" data-slot="10">Dist.Panel A/C C/B ON</div>
  <div class="X35A" data-role="io-tag" data-slot="10">X35A</div>
  <div class="X35B" data-role="io-data" data-slot="11">O2 Panel Main C/B ON</div>
  <div class="X35B" data-role="io-tag" data-slot="11">X35B</div>
  <div class="X35C" data-role="io-data" data-slot="12">SPARE</div>
  <div class="X35C" data-role="io-tag" data-slot="12">X35C</div>
  <div class="X35D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="X35D" data-role="io-tag" data-slot="13">X35D</div>
  <div class="X35E" data-role="io-data" data-slot="14">SPARE</div>
  <div class="X35E" data-role="io-tag" data-slot="14">X35E</div>
  <div class="X35F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="X35F" data-role="io-tag" data-slot="15">X35F</div>

  <div class="io-box-num-2">22</div>
  <div class="io-box-2">X360 ~ X36F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X360" data-role="io-data" data-slot="16">Q'Tank Cooling Pump-1 ON</div>
  <div class="X360" data-role="io-tag" data-slot="16">X360</div>
  <div class="X361" data-role="io-data" data-slot="17">Q'Tank Cooling Pump-2 ON</div>
  <div class="X361" data-role="io-tag" data-slot="17">X361</div>
  <div class="X362" data-role="io-data" data-slot="18">Charge Stock Entr. Conv.Roller FWD</div>
  <div class="X362" data-role="io-tag" data-slot="18">X362</div>
  <div class="X363" data-role="io-data" data-slot="19">Charge Stock Entr. Conv.Roller BWD</div>
  <div class="X363" data-role="io-tag" data-slot="19">X363</div>
  <div class="X364" data-role="io-data" data-slot="20">Charge Stock Entr. Retriver FWD</div>
  <div class="X364" data-role="io-tag" data-slot="20">X364</div>
  <div class="X365" data-role="io-data" data-slot="21">Charge Stock Entr. Retriver BWD</div>
  <div class="X365" data-role="io-tag" data-slot="21">X365</div>
  <div class="X366" data-role="io-data" data-slot="22">Charge Stock Exit Conv.Roller FWD</div>
  <div class="X366" data-role="io-tag" data-slot="22">X366</div>
  <div class="X367" data-role="io-data" data-slot="23">Charge Stock Exit Conv.Roller BWD</div>
  <div class="X367" data-role="io-tag" data-slot="23">X367</div>
  <div class="X368" data-role="io-data" data-slot="24">Charge Stock Exit Lifter FWD</div>
  <div class="X368" data-role="io-tag" data-slot="24">X368</div>
  <div class="X369" data-role="io-data" data-slot="25">Charge Stock Exit Lifter BWD</div>
  <div class="X369" data-role="io-tag" data-slot="25">X369</div>
  <div class="X36A" data-role="io-data" data-slot="26">PH'F Entr. Conv.Roller-1 FWD</div>
  <div class="X36A" data-role="io-tag" data-slot="26">X36A</div>
  <div class="X36B" data-role="io-data" data-slot="27">PH'F Entr. Conv.Roller-1 BWD</div>
  <div class="X36B" data-role="io-tag" data-slot="27">X36B</div>
  <div class="X36C" data-role="io-data" data-slot="28">PH'F Entr. Conv.Roller-2 FWD</div>
  <div class="X36C" data-role="io-tag" data-slot="28">X36C</div>
  <div class="X36D" data-role="io-data" data-slot="29">PH'F Entr. Conv.Roller-2 BWD</div>
  <div class="X36D" data-role="io-tag" data-slot="29">X36D</div>
  <div class="X36E" data-role="io-data" data-slot="30">PH'Z Entr. Lifter FWD</div>
  <div class="X36E" data-role="io-tag" data-slot="30">X36E</div>
  <div class="X36F" data-role="io-data" data-slot="31">PH'Z Entr. Lifter BWD</div>
  <div class="X36F" data-role="io-tag" data-slot="31">X36F</div>

  <div class="io-box-num-3">23</div>
  <div class="io-box-3">X370 ~ X37F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X370" data-role="io-data" data-slot="32">Carb.Zone Entr. Roller FWD</div>
  <div class="X370" data-role="io-tag" data-slot="32">X370</div>
  <div class="X371" data-role="io-data" data-slot="33">Carb.Zone Entr. Roller BWD</div>
  <div class="X371" data-role="io-tag" data-slot="33">X371</div>
  <div class="X372" data-role="io-data" data-slot="34">Hard.1-Zone Charge Roller FWD</div>
  <div class="X372" data-role="io-tag" data-slot="34">X372</div>
  <div class="X373" data-role="io-data" data-slot="35">Hard.1-Zone Charge Roller BWD</div>
  <div class="X373" data-role="io-tag" data-slot="35">X373</div>
  <div class="X374" data-role="io-data" data-slot="36">Hard.2-Zone Exit Door Roller FWD</div>
  <div class="X374" data-role="io-tag" data-slot="36">X374</div>
  <div class="X375" data-role="io-data" data-slot="37">Hard.2-Zone Exit Door Roller BWD</div>
  <div class="X375" data-role="io-tag" data-slot="37">X375</div>
  <div class="X376" data-role="io-data" data-slot="38">SPARE</div>
  <div class="X376" data-role="io-tag" data-slot="38">X376</div>
  <div class="X377" data-role="io-data" data-slot="39">SPARE</div>
  <div class="X377" data-role="io-tag" data-slot="39">X377</div>
  <div class="X378" data-role="io-data" data-slot="40">Q'Tank E/V Chain Roller FWD</div>
  <div class="X378" data-role="io-tag" data-slot="40">X378</div>
  <div class="X379" data-role="io-data" data-slot="41">Q'Tank E/V Chain Roller BWD</div>
  <div class="X379" data-role="io-tag" data-slot="41">X379</div>
  <div class="X37A" data-role="io-data" data-slot="42">Q'Tank Exit Conv. Roller FWD</div>
  <div class="X37A" data-role="io-tag" data-slot="42">X37A</div>
  <div class="X37B" data-role="io-data" data-slot="43">Q'Tank Exit Conv. Roller BWD</div>
  <div class="X37B" data-role="io-tag" data-slot="43">X37B</div>
  <div class="X37C" data-role="io-data" data-slot="44">SPARE</div>
  <div class="X37C" data-role="io-tag" data-slot="44">X37C</div>
  <div class="X37D" data-role="io-data" data-slot="45">SPARE</div>
  <div class="X37D" data-role="io-tag" data-slot="45">X37D</div>
  <div class="X37E" data-role="io-data" data-slot="46">SPARE</div>
  <div class="X37E" data-role="io-tag" data-slot="46">X37E</div>
  <div class="X37F" data-role="io-data" data-slot="47">SPARE</div>
  <div class="X37F" data-role="io-tag" data-slot="47">X37F</div>

  <div class="io-box-num-4">24</div>
  <div class="io-box-4">X380 ~ X38F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X380" data-role="io-data" data-slot="48">PH'F Inner Roller Brake</div>
  <div class="X380" data-role="io-tag" data-slot="48">X380</div>
  <div class="X381" data-role="io-data" data-slot="49">PH'Z 1-1 Inner Roller Brake</div>
  <div class="X381" data-role="io-tag" data-slot="49">X381</div>
  <div class="X382" data-role="io-data" data-slot="50">PH'Z 1-2 Inner Roller Brake</div>
  <div class="X382" data-role="io-tag" data-slot="50">X382</div>
  <div class="X383" data-role="io-data" data-slot="51">Hard.1-Zone Inner Roller Brake</div>
  <div class="X383" data-role="io-tag" data-slot="51">X383</div>
  <div class="X384" data-role="io-data" data-slot="52">Hard.2-Zone Inner Roller Brake</div>
  <div class="X384" data-role="io-tag" data-slot="52">X384</div>
  <div class="X385" data-role="io-data" data-slot="53">Carb.Zone Carge Roller Brake</div>
  <div class="X385" data-role="io-tag" data-slot="53">X385</div>
  <div class="X386" data-role="io-data" data-slot="54">Hard.1-Zone Carge Roller Brake</div>
  <div class="X386" data-role="io-tag" data-slot="54">X386</div>
  <div class="X387" data-role="io-data" data-slot="55">PH'F Inner Roller Motor Cool.Fan Power Abnormal</div>
  <div class="X387" data-role="io-tag" data-slot="55">X387</div>
  <div class="X388" data-role="io-data" data-slot="56">PH'Z Inner Roller Motor1-1 Cool.Fan Power Abno</div>
  <div class="X388" data-role="io-tag" data-slot="56">X388</div>
  <div class="X389" data-role="io-data" data-slot="57">PH'Z Inner Roller Motor1-2 Cool.Fan Power Abno</div>
  <div class="X389" data-role="io-tag" data-slot="57">X389</div>
  <div class="X38A" data-role="io-data" data-slot="58">Hard.1-Zone Inner Roller Motor Cool.Fan Power Abno</div>
  <div class="X38A" data-role="io-tag" data-slot="58">X38A</div>
  <div class="X38B" data-role="io-data" data-slot="59">Hard.2-Zone Inner Roller Motor Cool.Fan Power Abno</div>
  <div class="X38B" data-role="io-tag" data-slot="59">X38B</div>
  <div class="X38C" data-role="io-data" data-slot="60">SPARE</div>
  <div class="X38C" data-role="io-tag" data-slot="60">X38C</div>
  <div class="X38D" data-role="io-data" data-slot="61">SPARE</div>
  <div class="X38D" data-role="io-tag" data-slot="61">X38D</div>
  <div class="X38E" data-role="io-data" data-slot="62">SPARE</div>
  <div class="X38E" data-role="io-tag" data-slot="62">X38E</div>
  <div class="X38F" data-role="io-data" data-slot="63">WHM Cumulative Pulse Signal</div>
  <div class="X38F" data-role="io-tag" data-slot="63">X38F</div>


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
    	getAlarmText("ccf_x_in_6");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT06");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT06"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 22 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(22, 1000);
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
