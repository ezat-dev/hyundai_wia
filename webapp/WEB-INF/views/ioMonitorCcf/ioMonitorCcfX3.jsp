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

  <div class="io-box-num-1">09</div>
  <div class="io-box-1">X230 ~ X23F</div>
  <div class="io-box-frac-1">(1/4)</div>
  <div class="X230" data-role="io-data" data-slot="0">PH'F Burner No.1 Pilot Flame OK</div>
  <div class="X230" data-role="io-tag" data-slot="0">X230</div>
  <div class="X231" data-role="io-data" data-slot="1">PH'F Burner No.2 Pilot Flame OK</div>
  <div class="X231" data-role="io-tag" data-slot="1">X231</div>
  <div class="X232" data-role="io-data" data-slot="2">PH'F Exhaust No.1 Pilot Flame OK</div>
  <div class="X232" data-role="io-tag" data-slot="2">X232</div>
  <div class="X233" data-role="io-data" data-slot="3">PH'F Exhaust No.2 Pilot Flame OK</div>
  <div class="X233" data-role="io-tag" data-slot="3">X233</div>
  <div class="X234" data-role="io-data" data-slot="4">PH'F Exhaust No.3 Pilot Flame OK</div>
  <div class="X234" data-role="io-tag" data-slot="4">X234</div>
  <div class="X235" data-role="io-data" data-slot="5">PH'F Burner Main Gas Pres. Low</div>
  <div class="X235" data-role="io-tag" data-slot="5">X235</div>
  <div class="X236" data-role="io-data" data-slot="6">PH'F Burner Main Gas Pres. High</div>
  <div class="X236" data-role="io-tag" data-slot="6">X236</div>
  <div class="X237" data-role="io-data" data-slot="7">PH'F Burner Pilot Gas Pres. Low</div>
  <div class="X237" data-role="io-tag" data-slot="7">X237</div>
  <div class="X238" data-role="io-data" data-slot="8">PH'F Burner Air Pres. Now</div>
  <div class="X238" data-role="io-tag" data-slot="8">X238</div>
  <div class="X239" data-role="io-data" data-slot="9">PH'F Entr.Door Left-Stopper</div>
  <div class="X239" data-role="io-tag" data-slot="9">X239</div>
  <div class="X23A" data-role="io-data" data-slot="10">PH'F Entr.Door Right-Stopper</div>
  <div class="X23A" data-role="io-tag" data-slot="10">X23A</div>
  <div class="X23B" data-role="io-data" data-slot="11">PH'F Exit Door Left-Stopper</div>
  <div class="X23B" data-role="io-tag" data-slot="11">X23B</div>
  <div class="X23C" data-role="io-data" data-slot="12">PH'F Exit Door Right-Stopper</div>
  <div class="X23C" data-role="io-tag" data-slot="12">X23C</div>
  <div class="X23D" data-role="io-data" data-slot="13">SPARE</div>
  <div class="X23D" data-role="io-tag" data-slot="13">X23D</div>
  <div class="X23E" data-role="io-data" data-slot="14">SPARE</div>
  <div class="X23E" data-role="io-tag" data-slot="14">X23E</div>
  <div class="X23F" data-role="io-data" data-slot="15">SPARE</div>
  <div class="X23F" data-role="io-tag" data-slot="15">X23F</div>

  <div class="io-box-num-2">10</div>
  <div class="io-box-2">X260 ~ X26F</div>
  <div class="io-box-frac-2">(2/4)</div>
  <div class="X260" data-role="io-data" data-slot="16">PH'Z Entr. Door Close LS</div>
  <div class="X260" data-role="io-tag" data-slot="16">X260</div>
  <div class="X261" data-role="io-data" data-slot="17">PH'Z Entr. Door Open LS</div>
  <div class="X261" data-role="io-tag" data-slot="17">X261</div>
  <div class="X262" data-role="io-data" data-slot="18">PH'Z Exit Door Close LS</div>
  <div class="X262" data-role="io-tag" data-slot="18">X262</div>
  <div class="X263" data-role="io-data" data-slot="19">PH'Z Exit. Door Open LS</div>
  <div class="X263" data-role="io-tag" data-slot="19">X263</div>
  <div class="X264" data-role="io-data" data-slot="20">SPARE</div>
  <div class="X264" data-role="io-tag" data-slot="20">X264</div>
  <div class="X265" data-role="io-data" data-slot="21">SPARE</div>
  <div class="X265" data-role="io-tag" data-slot="21">X265</div>
  <div class="X266" data-role="io-data" data-slot="22">PH'Z Fan Rotation Check NSW</div>
  <div class="X266" data-role="io-tag" data-slot="22">X266</div>
  <div class="X267" data-role="io-data" data-slot="23">PH'Z 1-1 Roller Rotation Check NSW</div>
  <div class="X267" data-role="io-tag" data-slot="23">X267</div>
  <div class="X268" data-role="io-data" data-slot="24">PH'Z 1-2 Roller Rotation Check NSW</div>
  <div class="X268" data-role="io-tag" data-slot="24">X268</div>
  <div class="X269" data-role="io-data" data-slot="25">Carb.Zone Fan Rotation Check NSW</div>
  <div class="X269" data-role="io-tag" data-slot="25">X269</div>
  <div class="X26A" data-role="io-data" data-slot="26">Carb.Zone Roller Rota.Check NSW</div>
  <div class="X26A" data-role="io-tag" data-slot="26">X26A</div>
  <div class="X26B" data-role="io-data" data-slot="27">SPARE</div>
  <div class="X26B" data-role="io-tag" data-slot="27">X26B</div>
  <div class="X26C" data-role="io-data" data-slot="28">PH'Z 1-1 Upper Photo Sensor</div>
  <div class="X26C" data-role="io-tag" data-slot="28">X26C</div>
  <div class="X26D" data-role="io-data" data-slot="29">PH'Z 1-1 Lower Photo Sensor</div>
  <div class="X26D" data-role="io-tag" data-slot="29">X26D</div>
  <div class="X26E" data-role="io-data" data-slot="30">PH'Z 1-2 Upper Photo Sensor</div>
  <div class="X26E" data-role="io-tag" data-slot="30">X26E</div>
  <div class="X26F" data-role="io-data" data-slot="31">PH'Z 1-2 Lower Photo Sensor</div>
  <div class="X26F" data-role="io-tag" data-slot="31">X26F</div>

  <div class="io-box-num-3">11</div>
  <div class="io-box-3">X270 ~ X27F</div>
  <div class="io-box-frac-3">(3/4)</div>
  <div class="X270" data-role="io-data" data-slot="32">Carb.Zone Upper Photo Sensor</div>
  <div class="X270" data-role="io-tag" data-slot="32">X270</div>
  <div class="X271" data-role="io-data" data-slot="33">Carb.Zone Lower Photo Sensor</div>
  <div class="X271" data-role="io-tag" data-slot="33">X271</div>
  <div class="X272" data-role="io-data" data-slot="34">PH'Z Entr. Door Pilot Burner Flame OK</div>
  <div class="X272" data-role="io-tag" data-slot="34">X272</div>
  <div class="X273" data-role="io-data" data-slot="35">PH'Z Exhaust Pipe Pilot Burner Flame OK</div>
  <div class="X273" data-role="io-tag" data-slot="35">X273</div>
  <div class="X274" data-role="io-data" data-slot="36">PH'Z Entr. Door Curtain Flame OK</div>
  <div class="X274" data-role="io-tag" data-slot="36">X274</div>
  <div class="X275" data-role="io-data" data-slot="37">PH'Z Entr. Door Left-Stopper</div>
  <div class="X275" data-role="io-tag" data-slot="37">X275</div>
  <div class="X276" data-role="io-data" data-slot="38">PH'Z Entr. Door Right-Stopper</div>
  <div class="X276" data-role="io-tag" data-slot="38">X276</div>
  <div class="X277" data-role="io-data" data-slot="39">Carb.Zone Entr. Door Left-Stopper</div>
  <div class="X277" data-role="io-tag" data-slot="39">X277</div>
  <div class="X278" data-role="io-data" data-slot="40">Carb.Zone Entr. Door Right-Stopper</div>
  <div class="X278" data-role="io-tag" data-slot="40">X278</div>
  <div class="X279" data-role="io-data" data-slot="41">SPARE</div>
  <div class="X279" data-role="io-tag" data-slot="41">X279</div>
  <div class="X27A" data-role="io-data" data-slot="42">SPARE</div>
  <div class="X27A" data-role="io-tag" data-slot="42">X27A</div>
  <div class="X27B" data-role="io-data" data-slot="43">SPARE</div>
  <div class="X27B" data-role="io-tag" data-slot="43">X27B</div>
  <div class="X27C" data-role="io-data" data-slot="44">SPARE</div>
  <div class="X27C" data-role="io-tag" data-slot="44">X27C</div>
  <div class="X27D" data-role="io-data" data-slot="45">SPARE</div>
  <div class="X27D" data-role="io-tag" data-slot="45">X27D</div>
  <div class="X27E" data-role="io-data" data-slot="46">Furnanse Cooling Water P/S</div>
  <div class="X27E" data-role="io-tag" data-slot="46">X27E</div>
  <div class="X27F" data-role="io-data" data-slot="47">SPARE</div>
  <div class="X27F" data-role="io-tag" data-slot="47">X27F</div>

  <div class="io-box-num-4">12</div>
  <div class="io-box-4">X290 ~ X29F</div>
  <div class="io-box-frac-4">(4/4)</div>
  <div class="X290" data-role="io-data" data-slot="48">Hard.1-Zone Entr. Door Close</div>
  <div class="X290" data-role="io-tag" data-slot="48">X290</div>
  <div class="X291" data-role="io-data" data-slot="49">Hard.1-Zone Entr. Door Open</div>
  <div class="X291" data-role="io-tag" data-slot="49">X291</div>
  <div class="X292" data-role="io-data" data-slot="50">Hard.2-Zone Entr. Door Close</div>
  <div class="X292" data-role="io-tag" data-slot="50">X292</div>
  <div class="X293" data-role="io-data" data-slot="51">Hard.2-Zone Entr. Door Open</div>
  <div class="X293" data-role="io-tag" data-slot="51">X293</div>
  <div class="X294" data-role="io-data" data-slot="52">Hard.1-Zone Entr. Door Left-Stopper</div>
  <div class="X294" data-role="io-tag" data-slot="52">X294</div>
  <div class="X295" data-role="io-data" data-slot="53">Hard.1-Zone Entr. Door Right-Stopper</div>
  <div class="X295" data-role="io-tag" data-slot="53">X295</div>
  <div class="X296" data-role="io-data" data-slot="54">Hard.2-Zone Entr. Door Left-Stopper</div>
  <div class="X296" data-role="io-tag" data-slot="54">X296</div>
  <div class="X297" data-role="io-data" data-slot="55">Hard.2-Zone Entr. Door Right-Stopper</div>
  <div class="X297" data-role="io-tag" data-slot="55">X297</div>
  <div class="X298" data-role="io-data" data-slot="56">Diff.Zone Fan Rota.Check NSW</div>
  <div class="X298" data-role="io-tag" data-slot="56">X298</div>
  <div class="X299" data-role="io-data" data-slot="57">Diff.Zone Roller Rota.Check NSW</div>
  <div class="X299" data-role="io-tag" data-slot="57">X299</div>
  <div class="X29A" data-role="io-data" data-slot="58">Hard.1-Zone Fan Rota.Check NSW</div>
  <div class="X29A" data-role="io-tag" data-slot="58">X29A</div>
  <div class="X29B" data-role="io-data" data-slot="59">Hard.1-Zone Roller Rota.Check NSW</div>
  <div class="X29B" data-role="io-tag" data-slot="59">X29B</div>
  <div class="X29C" data-role="io-data" data-slot="60">Hard.2-Zone Fan Rota.Check NSW</div>
  <div class="X29C" data-role="io-tag" data-slot="60">X29C</div>
  <div class="X29D" data-role="io-data" data-slot="61">Hard.2-Zone Roller Rota.Check NSW</div>
  <div class="X29D" data-role="io-tag" data-slot="61">X29D</div>
  <div class="X29E" data-role="io-data" data-slot="62">SPARE</div>
  <div class="X29E" data-role="io-tag" data-slot="62">X29E</div>
  <div class="X29F" data-role="io-data" data-slot="63">SPARE</div>
  <div class="X29F" data-role="io-tag" data-slot="63">X29F</div>


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
    	getAlarmText("ccf_x_in_3");
    	ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT03");
    	setInterval(function(){ ccfAlarmListView("WIA.CCF.IOMONITOR.XPLCINPUT03"); }, 2000);
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
//ez_scada foldertag API(BIT값) 폴링 - folderId: 19 = IO 모니터링
//신호=1일 때 io-tag 박스 배경 연분홍색 강조
$(document).ready(function() {
	pollFolderBitTags(19, 1000);
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
