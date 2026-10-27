<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/whm/vars.css">
  <link rel="stylesheet" href="/DHT/css/whm/style.css">
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

  <!-- WHM DATA -->
  <div class="whm-card whm-col-1 whm-row-top-1">
    <div class="whm-title">WHM<br/>DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">R</div><input type="text" class="whm-r" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">S</div><input type="text" class="whm-s" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">T</div><input type="text" class="whm-t" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">LOAD</div><input type="text" class="whm-load" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Spare -->
  <div class="whm-card whm-col-2 whm-row-top-1">
    <div class="whm-title">Spare</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">R</div><input type="text" class="spare-r" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">S</div><input type="text" class="spare-s" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">T</div><input type="text" class="spare-t" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">LOAD</div><input type="text" class="spare-load" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Pre-Heat Zone -->
  <div class="whm-card whm-col-1 whm-row-top-2">
    <div class="whm-title">Pre-Heat Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="preheat-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="preheat-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="preheat-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="preheat-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Carburizing 1-Zone -->
  <div class="whm-card whm-col-2 whm-row-top-2">
    <div class="whm-title">Carburizing 1-Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="carb1-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="carb1-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="carb1-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="carb1-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Carburizing 2-Zone -->
  <div class="whm-card whm-col-3 whm-row-top-2">
    <div class="whm-title">Carburizing 2-Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="carb2-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="carb2-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="carb2-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="carb2-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Diffusion Zone -->
  <div class="whm-card whm-col-4 whm-row-top-2">
    <div class="whm-title">Diffusion Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="diff-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="diff-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="diff-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="diff-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Cooling Zone (강조 테두리) -->
  <div class="whm-card whm-col-1 whm-row-top-3">
    <div class="whm-title">Cooling Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="cool-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="cool-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="cool-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="cool-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Hardening 1-Zone -->
  <div class="whm-card whm-col-2 whm-row-top-3">
    <div class="whm-title">Hardening 1-Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="hard1-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="hard1-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="hard1-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="hard1-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Hardening 2-Zone -->
  <div class="whm-card whm-col-3 whm-row-top-3">
    <div class="whm-title">Hardening 2-Zone<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="hard2-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="hard2-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="hard2-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="hard2-pf" data-role="row-value" value="0" readonly /></div>
  </div>

  <!-- Quenching Tank -->
  <div class="whm-card whm-col-4 whm-row-top-3">
    <div class="whm-title">Quenching Tank<br/>Ampere DATA</div>
    <div class="whm-row whm-row-1"><div class="whm-row-label">KwH</div><input type="text" class="quench-kwh" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-2"><div class="whm-row-label">A.VOLT</div><input type="text" class="quench-volt" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-3"><div class="whm-row-label">A.Amp</div><input type="text" class="quench-amp" data-role="row-value" value="0" readonly /></div>
    <div class="whm-row whm-row-4"><div class="whm-row-label">PF</div><input type="text" class="quench-pf" data-role="row-value" value="0" readonly /></div>
  </div>

</div>

<script>

var whmCcfInterval;

$(document).ready(function() {
	whmCcfView();
	whmCcfInterval = setInterval("whmCcfView()", 1000);

	pollFolderWordTags(10, 1000);
});

//ez_scada foldertag API(WORD값) 폴링 - folderId: 10 = 적산전력계&전류계 전체값
//통신 끊김/실패 시 마지막 값에 멈추지 않고 0으로 표시
function pollFolderWordTags(folderId, intervalMs){
	var lastTagNames = [];
	function tick(){
		$.ajax({
			url: "http://localhost:5050/api/foldertag/values?folderId=" + folderId,
			type: "get",
			dataType: "json",
			timeout: 4000
		}).done(function(result){
			if(!result || !result.tags) return;
			lastTagNames = [];
			result.tags.forEach(function(tag){
				if(!tag.name) return;
				value(tag.name, tag.value);
				lastTagNames.push(tag.name);
			});
		}).fail(function(){
			lastTagNames.forEach(function(name){
				value(name, 0);
			});
		}).always(function(){
			setTimeout(tick, intervalMs);
		});
	}
	tick();
}

function whmCcfView(){
	$.ajax({
		url:"/DHT/whmCcf/view",
		type:"post",
		dataType:"json",
		success:function(result){
			var data = result.multiValues;

            for(let key in data){
            	for(let keys in data[key]){
            		var d = data[key];
					if(d[keys].action == "value"){
						value(keys, d[keys].value);
					}
            	}
            }
		}
	});
}

function value(keys, value){
	$("."+keys).val(value);
}

</script>

</body>
</html>
