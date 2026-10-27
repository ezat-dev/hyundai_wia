<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/product_cycle/vars.css">
  <link rel="stylesheet" href="/DHT/css/product_cycle/style.css">
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
     width: 100%; height: 100%; text-align: center; font: inherit; color: inherit;
     background: #fffbe6; border: 1px solid #f59e0b !important; border-radius: 2px;
     box-sizing: border-box; padding: 0;
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
    <div class="group-1">
      <div class="big-box"></div>
      <div class="process-data-text">시간제어 싸이클 데이터</div>

      <div class="pc-grid-wrap-1">
      <table class="pc-table">
        <colgroup>
          <col style="width:102px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" />
        </colgroup>
        <tr>
          <td class="data-text-box-1 data-text-1">시간제어<br />싸이클 데이터</td>
          <td class="no-1-cycle no-1">NO.1 싸이클</td>
          <td class="no-2-cycle no-2">NO.2 싸이클</td>
          <td class="no-3-cycle no-3">NO.3 싸이클</td>
          <td class="no-4-cycle no-4">NO.4 싸이클</td>
          <td class="no-5-cycle no-5">NO.5 싸이클</td>
          <td class="no-6-cycle no-6">NO.6 싸이클</td>
          <td class="no-7-cycle no-7">NO.7 싸이클</td>
        </tr>
        <tr>
          <td class="pre-box pre-text">예열로</td>
          <td class="pre-1">0</td><td class="pre-2">0</td><td class="pre-3">0</td><td class="pre-4">0</td><td class="pre-5">0</td><td class="pre-6">0</td><td class="pre-7">0</td>
        </tr>
        <tr>
          <td class="hit-box hit-text">가열1존</td>
          <td class="hit-1">0</td><td class="hit-2">0</td><td class="hit-3">0</td><td class="hit-4">0</td><td class="hit-5">0</td><td class="hit-6">0</td><td class="hit-7">0</td>
        </tr>
        <tr>
          <td class="hit2-box hit2-text">가열2존</td>
          <td class="hit2-1">0</td><td class="hit2-2">0</td><td class="hit2-3">0</td><td class="hit2-4">0</td><td class="hit2-5">0</td><td class="hit2-6">0</td><td class="hit2-7">0</td>
        </tr>
        <tr>
          <td class="crack-box-1 crack-1-text">균열1존</td>
          <td class="crack-1-1">0</td><td class="crack-1-2">0</td><td class="crack-1-3">0</td><td class="crack-1-4">0</td><td class="crack-1-5">0</td><td class="crack-1-6">0</td><td class="crack-1-7">0</td>
        </tr>
        <tr>
          <td class="crack-box-2 crack-2-text">균열2존</td>
          <td class="crack-2-1">0</td><td class="crack-2-2">0</td><td class="crack-2-3">0</td><td class="crack-2-4">0</td><td class="crack-2-5">0</td><td class="crack-2-6">0</td><td class="crack-2-7">0</td>
        </tr>
        <tr>
          <td class="oil-q-box oil-q-text">유조 퀜칭</td>
          <td class="oil-q-1">0</td><td class="oil-q-2">0</td><td class="oil-q-3">0</td><td class="oil-q-4">0</td><td class="oil-q-5">0</td><td class="oil-q-6">0</td><td class="oil-q-7">0</td>
        </tr>
        <tr>
          <td class="oil-drain-box oil-drain-text">유조 드레인</td>
          <td class="oil-drain-1">0</td><td class="oil-drain-2">0</td><td class="oil-drain-3">0</td><td class="oil-drain-4">0</td><td class="oil-drain-5">0</td><td class="oil-drain-6">0</td><td class="oil-drain-7">0</td>
        </tr>
      </table>
      </div>

      <div class="speed-cycle-data-text">속도제어 싸이클 데이터</div>

      <div class="pc-grid-wrap-2">
      <table class="pc-table">
        <colgroup>
          <col style="width:102px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" /><col style="width:134px" />
        </colgroup>
        <tr>
          <td class="data-text-box-12 data-text-2">속도제어<br />싸이클 데이터</td>
          <td class="no-1-cycle-2 no-12">NO.1 싸이클</td>
          <td class="no-2-cycle-2 no-22">NO.2 싸이클</td>
          <td class="no-3-cycle-2 no-32">NO.3 싸이클</td>
          <td class="no-4-cycle-2 no-42">NO.4 싸이클</td>
          <td class="no-5-cycle-2 no-52">NO.5 싸이클</td>
          <td class="no-6-cycle-2 no-62">NO.6 싸이클</td>
          <td class="no-7-cycle-2 no-72">NO.7 싸이클</td>
        </tr>
        <tr>
          <td class="chim-box chim-text">침탄존</td>
          <td class="chim-1">0</td><td class="chim-2">0</td><td class="chim-3">0</td><td class="chim-4">0</td><td class="chim-5">0</td><td class="chim-6">0</td><td class="chim-7">0</td>
        </tr>
        <tr>
          <td class="diff-box diff-text">확산존</td>
          <td class="diff-1">0</td><td class="diff-2">0</td><td class="diff-3">0</td><td class="diff-4">0</td><td class="diff-5">0</td><td class="diff-6">0</td><td class="diff-7">0</td>
        </tr>
        <tr>
          <td class="agi-box agi-text">아지테이터<br />(퀜칭)</td>
          <td class="agi-1">0</td><td class="agi-2">0</td><td class="agi-3">0</td><td class="agi-4">0</td><td class="agi-5">0</td><td class="agi-6">0</td><td class="agi-7">0</td>
        </tr>
      </table>
      </div>
  </div>
</div>
<script>

//전역변수
var productCycleCcfInterval;

//로드
$(document).ready(function() {
	productCycleCcfView();
	productCycleCcfInterval = setInterval("productCycleCcfView()", 1000);

	pollFolderWordTags(6, 1000);

	//처리품싸이클 표(전부 설정값) 전체 셀을 클릭->수정->엔터 시 PLC 쓰기 가능하게
	//각 열(NO.1~NO.7)은 기준 레지스터에서 50씩 증가하는 규칙 (folders_tags folderId=6 그대로)
	var PC_BASE_ADDR = {
		"pre":6000, "hit":6001, "hit2":6002, "crack-1":6019, "crack-2":6020,
		"oil-q":6021, "oil-drain":6023, "chim":6027, "diff":6035, "agi":6046
	};
	var PC_WRITABLE_NAMES = [];
	var PC_ADDR_MAP = {};
	Object.keys(PC_BASE_ADDR).forEach(function(prefix){
		for (var i = 1; i <= 7; i++) {
			var name = prefix + "-" + i;
			PC_WRITABLE_NAMES.push(name);
			PC_ADDR_MAP[name] = "R" + (PC_BASE_ADDR[prefix] + (i - 1) * 50);
		}
	});
	wireInlineEditable(PC_WRITABLE_NAMES, PC_ADDR_MAP);
});

//ez_scada foldertag API(WORD값) 폴링 - folderId: 6 = 처리품싸이클 전체값
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
function productCycleCcfView(){
	$.ajax({
		url:"/DHT/productCycleCcf/view",
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
	if ($el.find("input.inline-edit-input").length) return; //편집 중이면 폴링 갱신 건너뜀
	if (isStaleAfterWrite(keys, value)) return; //방금 쓴 값인데 서버 캐시가 아직 안 따라왔으면 건너뜀
	$el.text(value);
}

//쓰기 직후 서버(.NET) 읽기 캐시가 아직 옛값을 들고 있는 동안(최대 3초) 폴링이 덮어쓰지 않게 막는다
var recentWrites = {};
var WRITE_GRACE_MS = 3000;
function markRecentWrite(name, val){
	recentWrites[name] = { value: val, until: Date.now() + WRITE_GRACE_MS };
}
function isStaleAfterWrite(name, incomingVal){
	var rw = recentWrites[name];
	if (!rw) return false;
	if (Date.now() >= rw.until) { delete recentWrites[name]; return false; }
	if (Number(incomingVal) === rw.value) { delete recentWrites[name]; return false; }
	return true;
}

//클릭하면 그 자리에서 바로 수정(인라인) 가능하게 만들고, 엔터 시 PLC에 즉시 쓴다
//이 페이지는 class에 주소가 안 박혀있어서 addrMap(name->address)을 직접 넘겨받는다
function wireInlineEditable(names, addrMap){
	names.forEach(function(name){
		var $el = $("." + name);
		if (!$el.length) return;
		var addr = addrMap ? addrMap[name] : null;
		if (!addr) return;

		$el.addClass("inline-editable").on("click", function(){
			var $box = $(this);
			if ($box.find("input.inline-edit-input").length) return;
			var curVal = $box.text().trim();
			var finished = false;
			var $input = $("<input type='text' class='inline-edit-input' />").val(curVal);
			$box.empty().append($input);
			$input.trigger("focus");
			$input[0].select();

			function finishEdit(commit){
				if (finished) return;
				finished = true;
				var newVal = $input.val();
				if (commit) {
					if (newVal === "" || isNaN(Number(newVal))) {
						alert("숫자를 입력하세요");
						$box.text(curVal);
						return;
					}
					markRecentWrite(name, Number(newVal));
					writeByAddress(addr, Number(newVal), name);
					$box.text(newVal);
				} else {
					$box.text(curVal);
				}
			}
			$input.on("keydown", function(e){
				if (e.key === "Enter") { e.preventDefault(); finishEdit(true); }
				else if (e.key === "Escape") { e.preventDefault(); finishEdit(false); }
			});
			$input.on("blur", function(){ finishEdit(false); });
		});
	});
}

//.NET foldertag API 즉시 쓰기 (캐시 안거치고 바로 PLC에 씀)
function writeByAddress(address, val, label){
	if (!address) { alert("주소가 등록되지 않았습니다: " + label); return; }
	$.ajax({
		url: "http://localhost:5050/api/foldertag/write/by-address",
		type: "get",
		data: { plcId: "MST_MITSUBISHI", address: address, value: val },
		dataType: "json",
		timeout: 4000
	}).done(function(){
		logPlcWrite("처리품싸이클", label, address, val);
	}).fail(function(){
		alert("PLC 쓰기 실패: " + label + " (" + address + ")");
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

</script> 
</body>
</html>