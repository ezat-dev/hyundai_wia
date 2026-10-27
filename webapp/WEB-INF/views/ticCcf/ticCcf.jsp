<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/tic/vars.css">
  <link rel="stylesheet" href="/DHT/css/tic/style.css">
	<jsp:include page="../include/pluginpage.jsp"/>
  
  <style>
   a,
   button,
   input,
   select,
   h1,
   h2,
   h3,
   h4,
   h5,
   * {
       box-sizing: border-box;
       margin: 0;
       padding: 0;
       border: none;
       text-decoration: none;
       background: none;
   
       -webkit-font-smoothing: antialiased;
font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, 'Malgun Gothic', sans-serif;
letter-spacing: .2px;
   }
           .footer{
  	 margin-top:85px;
   }
   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
   .inline-editable { cursor: text; }
   .inline-edit-input {
       width: 100%;
       height: 100%;
       text-align: center;
       font: inherit;
       color: inherit;
       background: #fffbe6;
       border: 1px solid #f59e0b !important;
       border-radius: 2px;
       box-sizing: border-box;
       padding: 0;
   }
   </style>
  <title>Document</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="group-2">
    <div class="wrapper">
      <div class="main"></div>

    </div>
   <div class="tic-line"></div>
    <div class="cp-line"></div>
    <div class="tic-text-box"></div>
    <div class="tic-text">온도 조절계</div>
    <div class="cp-text-box"></div>
    <div class="cp-text">CP 조절계</div>
    <div class="pre-text-box"></div>
    <div class="pre-text">예열로</div>
    <img class="pre" src="/DHT/image/tic/pre0.png" />
    <div class="div">설정값</div>
    <div class="div2">현재값</div>
    <div class="pre-sp">0</div>
    <div class="pre-pv">0</div>
    <div class="hit-text-box"></div>
    <div class="hit-text">가열존</div>
    <img class="hit" src="/DHT/image/tic/hit0.png" />
    <div class="div3">설정값</div>
    <div class="div4">현재값</div>
    <div class="hit-sp">0</div>
    <div class="hit-pv">0</div>
    <div class="chim-1-text-box"></div>
    <div class="chim-1-text">침탄 1존</div>
    <img class="chim-1" src="/DHT/image/tic/chim-10.png" />
    <div class="div5">설정값</div>
    <div class="div6">현재값</div>
    <div class="chim-1-sp">0</div>
    <div class="chim-1-pv">0</div>
    <div class="chim-2-text-box"></div>
    <div class="chim-2-text">침탄 2존</div>
    <img class="chim-2" src="/DHT/image/tic/chim-20.png" />
    <div class="div7">설정값</div>
    <div class="div8">현재값</div>
    <div class="chim-2-sp">0</div>
    <div class="chim-2-pv">0</div>
    <div class="diff-text-box"></div>
    <div class="diff-text">확산존</div>
    <img class="diff" src="/DHT/image/tic/diff0.png" />
    <div class="div9">설정값</div>
    <div class="div10">현재값</div>
    <div class="diff-sp">0</div>
    <div class="diff-pv">0</div>
    <div class="crack-1-text-box"></div>
    <div class="crack-1-text">균열 1존</div>
    <img class="crack-1" src="/DHT/image/tic/crack-10.png" />
    <div class="div11">설정값</div>
    <div class="div12">현재값</div>
    <div class="crack-1-sp">0</div>
    <div class="crack-1-pv">0</div>
    <div class="crack-2-text-box"></div>
    <div class="crack-2-text">균열 2존</div>
    <img class="crack-2" src="/DHT/image/tic/crack-20.png" />
    <div class="div13">설정값</div>
    <div class="div14">현재값</div>
    <div class="crack-2-sp">0</div>
    <div class="crack-2-pv">0</div>
    <div class="oil-text-box"></div>
    <div class="oil-text">유조</div>
    <img class="oil" src="/DHT/image/tic/oil0.png" />
    <div class="div15">설정값</div>
    <div class="div16">현재값</div>
    <div class="oil-sp">0</div>
    <div class="oil-pv">0</div>
    <div class="alarm-line"></div>
    <div class="alarm-text-box"></div>
    <div class="alarm-text">온도 경보계</div>
    <div class="hit-text-box-a"></div>
    <div class="hit-text-a">가열존</div>
    <img class="hit-a" src="/DHT/image/tic/hit-a0.png" />
    <div class="div19">설정값</div>
    <div class="div20">현재값</div>
    <div class="hit-sp-a">0</div>
    <div class="hit-pv-a">0</div>
    <div class="chim-1-text-box-a"></div>
    <div class="chim-1-text-a">침탄 1존</div>
    <img class="chim-1-a" src="/DHT/image/tic/chim-1-a0.png" />
    <div class="div21">설정값</div>
    <div class="div22">현재값</div>
    <div class="chim-1-sp-a">0</div>
    <div class="chim-1-pv-a">0</div>
    <div class="chim-2-text-box-a"></div>
    <div class="chim-2-text-a">침탄 2존</div>
    <img class="chim-2-a" src="/DHT/image/tic/chim-2-a0.png" />
    <div class="div23">설정값</div>
    <div class="div24">현재값</div>
    <div class="chim-2-sp-a">0</div>
    <div class="chim-2-pv-a">0</div>
    <div class="diff-text-box-a"></div>
    <div class="diff-text-a">확산존</div>
    <img class="diff-a" src="/DHT/image/tic/diff-a0.png" />
    <div class="div25">설정값</div>
    <div class="div26">현재값</div>
    <div class="diff-sp-a">0</div>
    <div class="diff-pv-a">0</div>
    <div class="crack-1-text-box-a"></div>
    <div class="crack-1-text-a">균열 1존</div>
    <img class="crack-1-a" src="/DHT/image/tic/crack-1-a0.png" />
    <div class="div27">설정값</div>
    <div class="div28">현재값</div>
    <div class="crack-1-sp-a">0</div>
    <div class="crack-1-pv-a">0</div>
    <div class="crack-2-text-box-a"></div>
    <div class="crack-2-text-a">균열 2존</div>
    <img class="crack-2-a" src="/DHT/image/tic/crack-2-a0.png" />
    <div class="div29">설정값</div>
    <div class="div30">현재값</div>
    <div class="crack-2-sp-a">0</div>
    <div class="crack-2-pv-a">0</div>
    <img class="cp-chim-1" src="/DHT/image/tic/cp-chim-10.png" />
    <div class="cp-chim-1-text-box"></div>
    <div class="cp-chim-1-text">침탄 1존 CP</div>
    <div class="div31">설정값</div>
    <div class="div32">현재값</div>
    <div class="cp-chim-sp">0</div>
    <div class="cp-chim-pv">0</div>
    <img class="cp-diff" src="/DHT/image/tic/cp-diff0.png" />
    <div class="cp-diff-text-box"></div>
    <div class="cp-diff-text">확산존 CP</div>
    <div class="div33">설정값</div>
    <div class="div34">현재값</div>
    <div class="cp-diff-sp">0</div>
    <div class="cp-diff-pv">0</div>
    <img class="cp-crack-2" src="/DHT/image/tic/cp-crack-20.png" />
    <div class="cp-crack-2-text-box"></div>
    <div class="cp-crack-2-text">균열 2존 CP</div>
    <div class="div35">설정값</div>
    <div class="div36">현재값</div>
    <div class="cp-crack-2-sp">0</div>
    <div class="cp-crack-2-pv">0</div>
  </div>
<script>

//전역변수
var ticCcfInterval;

//로드
$(document).ready(function() {
	ticCcfView();
	ticCcfInterval = setInterval("ticCcfView()", 1000);

	pollFolderWordTags(7, 1000);

	var TIC_ADDR_MAP = {
		"pre-sp": "R6400",
		"hit-sp": "R6402",
		"chim-1-sp": "R6404",
		"chim-2-sp": "R6405",
		"diff-sp": "R6407",
		"crack-1-sp": "R6411",
		"crack-2-sp": "R6413",
		"oil-sp": "R6415",
		"hit-sp-a": "R6418",
		"chim-1-sp-a": "R6420",
		"chim-2-sp-a": "R6421",
		"diff-sp-a": "R6423",
		"crack-1-sp-a": "R6427",
		"crack-2-sp-a": "R6429",
		"cp-chim-sp": "R6466",
		"cp-diff-sp": "R6470",
		"cp-crack-2-sp": "R6474"
	};
	wireInlineEditable(Object.keys(TIC_ADDR_MAP), TIC_ADDR_MAP);
});

//쓰기 직후 일정 시간 동안은 폴링으로 받은 "쓰기 전" 캐시값을 무시(깜빡임 방지)
var recentWrites = {};
var WRITE_GRACE_MS = 3000;
function markRecentWrite(name, val){
	recentWrites[name] = { value: val, until: Date.now() + WRITE_GRACE_MS };
}
function isStaleAfterWrite(name, incomingVal){
	var rw = recentWrites[name];
	if (!rw) return false;
	if (Date.now() > rw.until) { delete recentWrites[name]; return false; }
	if (String(incomingVal) !== String(rw.value)) return true;
	delete recentWrites[name];
	return false;
}

function writeByAddress(address, val, label){
	$.ajax({
		url: "http://localhost:5050/api/foldertag/write/by-address",
		type: "get",
		data: { plcId: 1, address: address, value: val },
		dataType: "json",
		timeout: 4000
	}).done(function(){
		logPlcWrite("온도조절계", label, address, val);
	}).fail(function(){
		alert((label || address) + " 값 쓰기에 실패했습니다.");
	});
}

//PLC 값쓰기 발생 시 서버에 기록(로그 메뉴에서 조회용) - 실패해도 화면 동작에는 영향 없음
function logPlcWrite(pageName, tagName, address, value){
	$.ajax({
		url: "/DHT/plcWriteLogCcf/record",
		type: "post",
		data: { pageName: pageName, tagName: tagName, address: address, value: value },
		dataType: "json",
		timeout: 4000
	});
}

//클릭하면 인풋으로 바뀌어 값을 입력하고 엔터로 PLC에 쓰는 기능
function wireInlineEditable(names, addrMap){
	names.forEach(function(name){
		var $box = $("." + name);
		if (!$box.length) return;
		$box.addClass("inline-editable");
		$box.off("click.inlineEdit").on("click.inlineEdit", function(){
			var $el = $(this);
			if ($el.find("input.inline-edit-input").length) return;
			var addr = (addrMap && addrMap[name]) || null;
			if (!addr) return;
			var original = $el.text();
			var $input = $("<input>", {
				type: "text",
				"class": "inline-edit-input",
				val: original
			});
			$el.empty().append($input);
			$input.focus().select();

			var finished = false;
			function commit(){
				if (finished) return;
				finished = true;
				var newVal = $input.val();
				if (newVal === "" || isNaN(Number(newVal))) {
					$el.text(original);
					return;
				}
				$el.text(newVal);
				markRecentWrite(name, newVal);
				writeByAddress(addr, newVal, name);
			}
			function cancel(){
				if (finished) return;
				finished = true;
				$el.text(original);
			}
			$input.on("keydown", function(e){
				if (e.key === "Enter") { commit(); }
				else if (e.key === "Escape") { cancel(); }
			});
			$input.on("blur", function(){ cancel(); });
		});
	});
}

//ez_scada foldertag API(WORD값) 폴링 - folderId: 7 = 온도조절계 전체값
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

//OPC값 알람 조회
function ticCcfView(){
	$.ajax({
		url:"/DHT/ticCcf/view",
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
	var $el = $("."+keys);
	if ($el.find("input.inline-edit-input").length) return;
	if (isStaleAfterWrite(keys, value)) return;
	$el.text(value);
}

</script>
</body>
</html>