<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_2/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_2/style.css">
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
   }

   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
        .footer{
  	 margin-top:85px;
   }
   .plc-progress-bar {
     position: absolute; left: 0; bottom: 0; width: 0%; height: 3px;
     background: #4ADE80; transition: none; pointer-events: none; z-index: 50;
   }
   .plc-write-cursor { cursor: pointer; }
   .plc-val-modal-backdrop {
     display: none; position: fixed; inset: 0; background: transparent; z-index: 99998;
   }
   .plc-val-modal {
     display: none; position: fixed; background: #1f2430; border-radius: 16px; padding: 16px;
     z-index: 99999; width: 270px;
     box-shadow: 0 14px 44px rgba(0,0,0,.45);
   }
   .plc-val-modal-title {
     font-size: 12px; font-weight: 700; color: #9aa4b8; margin-bottom: 8px; text-align: center;
     white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
   }
   .plc-calc-display {
     background: #11141c; border-radius: 10px; padding: 14px 12px; margin-bottom: 10px;
     text-align: right; font-size: 28px; font-weight: 700; color: #ffffff;
     font-family: 'Consolas', monospace; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
   }
   .plc-calc-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 8px; }
   .plc-calc-key {
     padding: 16px 0; border-radius: 10px; border: none; background: #333a4a; color: #fff;
     font-size: 18px; font-weight: 700; cursor: pointer; font-family: inherit; transition: background .1s;
   }
   .plc-calc-key:active { background: #454e63; }
   .plc-calc-key.fn { background: #4b5367; color: #ffd166; }
   .plc-calc-key.zero { grid-column: span 2; }
   .plc-calc-key.confirm { background: #16a34a; }
   .plc-calc-key.confirm:active { background: #15803d; }
   .plc-calc-cancel {
     margin-top: 8px; width: 100%; padding: 10px 0; border-radius: 10px; border: none;
     background: transparent; color: #8b93a7; font-size: 13px; font-weight: 700; cursor: pointer; font-family: inherit;
   }
   .plc-calc-cancel:hover { color: #fff; }
   </style>
  <title>Document</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="group-2">
    <div class="wrapper">



      <div class="main"></div>

    </div>
    <div class="main-con-box"></div>
    <div class="main-con-text-box"></div>
    <div class="main-con-text">분위기 제어</div>
    <div class="main-con-off"></div>
    <div class="main-con-off-text">꺼짐</div>
    <div class="main-con-on"></div>
    <div class="main-con-on-text">켜짐</div>

    <div class="lng-box-hit"></div>
    <div class="lng-title-box-hit"></div>
    <div class="lng-title-hit">가열존 LNG<br/>현재 유량</div>
    <div class="lng-label-hit">현재<br/>유량</div>
    <div class="lng-value-hit">0</div>
    <div class="lng-unit-hit">SLPM</div>

    <div class="lng-box-chim"></div>
    <div class="lng-title-box-chim"></div>
    <div class="lng-title-chim">침탄존 LNG<br/>현재 유량</div>
    <div class="lng-label-chim">현재<br/>유량</div>
    <div class="lng-value-chim">0</div>
    <div class="lng-unit-chim">SLPM</div>

    <div class="lng-box-diff"></div>
    <div class="lng-title-box-diff"></div>
    <div class="lng-title-diff">확산존 LNG<br/>현재 유량</div>
    <div class="lng-label-diff">현재<br/>유량</div>
    <div class="lng-value-diff">0</div>
    <div class="lng-unit-diff">SLPM</div>

    <div class="lng-box-crack-1"></div>
    <div class="lng-title-box-crack-1"></div>
    <div class="lng-title-crack-1">균열-1존 LNG<br/>현재 유량</div>
    <div class="lng-label-crack-1">현재<br/>유량</div>
    <div class="lng-value-crack-1">0</div>
    <div class="lng-unit-crack-1">SLPM</div>

    <div class="lng-box-crack-2"></div>
    <div class="lng-title-box-crack-2"></div>
    <div class="lng-title-crack-2">균열-2존 LNG<br/>현재 유량</div>
    <div class="lng-label-crack-2">현재<br/>유량</div>
    <div class="lng-value-crack-2">0</div>
    <div class="lng-unit-crack-2">SLPM</div>

    <div class="rx-gas-box"></div>
    <div class="rx-gas-text-box"></div>
    <div class="rx-gas-text">RX 가스 메인밸브</div>
    <div class="rx-gas-manual"></div>
    <div class="rx-gas-manual-text">수동</div>
    <div class="rx-gas-auto"></div>
    <div class="rx-gas-auto-text">자동</div>
    <div class="rx-gas-off"></div>
    <div class="rx-gas-off-text">꺼짐</div>
    <div class="n-gas-main-box"></div>
    <div class="n-gas-main-text-box"></div>
    <div class="n-gas-main-text">엔리치 가스 메인밸브</div>
    <div class="n-gas-main-manual"></div>
    <div class="n-gas-main-manual-text">수동</div>
    <div class="n-gas-main-auto"></div>
    <div class="n-gas-main-auto-text">자동</div>
    <div class="n-gas-main-off"></div>
    <div class="n-gas-main-off-text">꺼짐</div>
    <div class="n-main-box"></div>
    <div class="n-main-text-box"></div>
    <div class="n-main-text">질소 가스 메인밸브</div>
    <div class="n-main-manual"></div>
    <div class="n-main-manual-text">수동</div>
    <div class="n-main-auto"></div>
    <div class="n-main-auto-text">자동</div>
    <div class="n-main-off"></div>
    <div class="n-main-off-text">꺼짐</div>
    <div class="hit-n-gas-box"></div>
    <div class="hit-n-gas-text-box"></div>
    <div class="hit-n-gas-text">가열존 엔리치 가스</div>
    <div class="hit-n-gas-manual"></div>
    <div class="hit-n-gas-manual-text">수동</div>
    <div class="hit-n-gas-auto"></div>
    <div class="hit-n-gas-auto-text">자동</div>
    <div class="hit-n-gas-off"></div>
    <div class="hit-n-gas-off-text">꺼짐</div>
    <div class="chim-n-gas-box"></div>
    <div class="chim-n-gas-text-box"></div>
    <div class="chim-n-gas-text">침탄존 엔리치 가스</div>
    <div class="chim-n-gas-manual"></div>
    <div class="chim-n-gas-manual-text">수동</div>
    <div class="chim-n-gas-auto"></div>
    <div class="chim-n-gas-auto-text">자동</div>
    <div class="chim-n-gas-off"></div>
    <div class="chim-n-gas-off-text">꺼짐</div>
    <div class="diff-n-gas-box"></div>
    <div class="diff-n-gas-text-box"></div>
    <div class="diff-n-gas-text">확산존 엔리치 가스</div>
    <div class="diff-n-gas-manual"></div>
    <div class="diff-n-gas-manual-text">수동</div>
    <div class="diff-n-gas-auto"></div>
    <div class="diff-n-gas-auto-text">자동</div>
    <div class="diff-n-gas-off"></div>
    <div class="diff-n-gas-off-text">꺼짐</div>
    <div class="crack-1-n-gas-box"></div>
    <div class="crack-1-n-gas-text-box"></div>
    <div class="crack-1-n-gas-text">균열-1존 엔리치 가스</div>
    <div class="crack-1-n-gas-manual"></div>
    <div class="crack-1-n-gas-manual-text">수동</div>
    <div class="crack-1-n-gas-auto"></div>
    <div class="crack-1-n-gas-auto-text">자동</div>
    <div class="crack-1-n-gas-off"></div>
    <div class="crack-1-n-gas-off-text">꺼짐</div>
    <div class="crack-2-n-gas-box"></div>
    <div class="crack-2-n-gas-text-box"></div>
    <div class="crack-2-n-gas-text">균열-2존 엔리치 가스</div>
    <div class="crack-2-n-gas-manual"></div>
    <div class="crack-2-n-gas-manual-text">수동</div>
    <div class="crack-2-n-gas-auto"></div>
    <div class="crack-2-n-gas-auto-text">자동</div>
    <div class="crack-2-n-gas-off"></div>
    <div class="crack-2-n-gas-off-text">꺼짐</div>
    <div class="oil-n-gas-box"></div>
    <div class="oil-n-gas-text-box"></div>
    <div class="oil-n-gas-text">유조 질소 가스</div>
    <div class="oil-n-gas-manual"></div>
    <div class="oil-n-gas-manual-text">수동</div>
    <div class="oil-n-gas-auto"></div>
    <div class="oil-n-gas-auto-text">자동</div>
    <div class="oil-n-gas-off"></div>
    <div class="oil-n-gas-off-text">꺼짐</div>
    <img class="page-button-left" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonPrev()"/>
  	<img class="page-button-right" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonNext()"/>
  </div>

  <div class="plc-val-modal-backdrop" id="plcValModalBackdrop" onclick="closePlcValModal()"></div>
  <div class="plc-val-modal" id="plcValModal">
    <div class="plc-val-modal-title" id="plcValModalTitle"></div>
    <div class="plc-calc-display" id="plcCalcDisplay">0</div>
    <div class="plc-calc-grid">
      <button type="button" class="plc-calc-key fn" onclick="calcClear()">C</button>
      <button type="button" class="plc-calc-key fn" onclick="calcBackspace()">&#9003;</button>
      <button type="button" class="plc-calc-key fn" onclick="calcSign()">&plusmn;</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('7')">7</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('8')">8</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('9')">9</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('4')">4</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('5')">5</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('6')">6</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('1')">1</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('2')">2</button>
      <button type="button" class="plc-calc-key" onclick="calcDigit('3')">3</button>
      <button type="button" class="plc-calc-key zero" onclick="calcDigit('0')">0</button>
      <button type="button" class="plc-calc-key" onclick="calcDot()">.</button>
      <button type="button" class="plc-calc-key confirm" style="grid-column: span 3;" onclick="confirmPlcValModal()">확인 (Enter)</button>
    </div>
    <button type="button" class="plc-calc-cancel" onclick="closePlcValModal()">취소</button>
  </div>


<script>

 //로드
 $(document).ready(function() {
 	pollControlTags(5, 1000);

 	wirePlcHoldButtons(BTN_ADDR_MAP);
 	wirePlcValueBoxes(WORD_ADDR_MAP);
 });

//===== PLC 실시간 쓰기(즉시 호출, 캐시 안씀) =====
//이 화면의 버튼(class명) -> 실제 코일(M) 주소. 읽기(v())는 램프(L) 주소를 쓰지만 쓰기는 반드시 코일(M) 주소로 해야함
var BTN_ADDR_MAP = {
	"main-con-off":"M331", "main-con-on":"M332",
	"rx-gas-manual":"M334", "rx-gas-auto":"M336", "rx-gas-off":"M335",
	"n-gas-main-manual":"M337", "n-gas-main-auto":"M339", "n-gas-main-off":"M338",
	"n-main-manual":"M346", "n-main-auto":"M348", "n-main-off":"M347",
	"hit-n-gas-manual":"M340", "hit-n-gas-auto":"M342", "hit-n-gas-off":"M341",
	"chim-n-gas-manual":"M400", "chim-n-gas-auto":"M402", "chim-n-gas-off":"M401",
	"diff-n-gas-manual":"M403", "diff-n-gas-auto":"M405", "diff-n-gas-off":"M404",
	"crack-1-n-gas-manual":"M406", "crack-1-n-gas-auto":"M408", "crack-1-n-gas-off":"M407",
	"crack-2-n-gas-manual":"M343", "crack-2-n-gas-auto":"M345", "crack-2-n-gas-off":"M344",
	"oil-n-gas-manual":"M394", "oil-n-gas-auto":"M396", "oil-n-gas-off":"M395"
};

//이 화면의 아날로그 입력 박스(class명) -> 실제 레지스터 주소 (LNG 유량값은 folders_tags 미등록이라 제외)
var WORD_ADDR_MAP = {
};

//버튼을 2초간 꾹 눌러야 실제 PLC에 값(1)을 쓴다 (오작동 방지, 아래쪽에 연두색 진행바 표시)
function wirePlcHoldButtons(addrMap){
	Object.keys(addrMap).forEach(function(name){
		var $box = $("." + name);
		if (!$box.length) return;
		if ($box.css("position") === "static") $box.css("position", "relative");
		$box.addClass("plc-write-cursor");
		$box.append('<div class="plc-progress-bar"></div>');
		var $bar = $box.find(".plc-progress-bar");
		var $targets = $("." + name + ", ." + name + "-text");
		var holdTimer = null;

		function startHold(e){
			e.preventDefault();
			if (holdTimer) return;
			$bar.css("transition", "none");
			$bar.css("width", "0%");
			void $bar[0].offsetWidth;
			$bar.css("transition", "width 1s linear");
			$bar.css("width", "100%");
			holdTimer = setTimeout(function(){
				holdTimer = null;
				writeByAddress(addrMap[name], 1, name);
				resetBar();
			}, 1000);
		}
		function cancelHold(){
			if (holdTimer) { clearTimeout(holdTimer); holdTimer = null; }
			resetBar();
		}
		function resetBar(){
			$bar.css("transition", "none");
			$bar.css("width", "0%");
		}

		$targets.on("mousedown touchstart", startHold);
		$targets.on("mouseup mouseleave touchend touchcancel", cancelHold);
	});
}

//아날로그 박스를 클릭하면 계산기 스타일 입력 모달을 띄우고, 확인(또는 엔터) 시 PLC에 즉시 쓴다
var plcValModalCtx = null;
var calcBuf = "0";
function wirePlcValueBoxes(addrMap){
	Object.keys(addrMap).forEach(function(name){
		var addr = addrMap[name];
		if (!addr) return;
		$("." + name).css("cursor", "pointer").on("click", function(){
			openPlcValModal(name, addr, this);
		});
	});
}
//클릭한 박스 바로 위/아래 중 공간이 넉넉한 쪽에 모달을 띄운다
function positionValModalNear(el){
	var rect = el.getBoundingClientRect();
	var $modal = $("#plcValModal");
	$modal.css({ visibility: "hidden", display: "block", top: "0px", left: "0px" });
	var mw = $modal.outerWidth();
	var mh = $modal.outerHeight();

	var spaceBelow = window.innerHeight - rect.bottom;
	var spaceAbove = rect.top;
	var top;
	if (spaceBelow >= mh + 10) {
		top = rect.bottom + 8;
	} else if (spaceAbove >= mh + 10) {
		top = rect.top - mh - 8;
	} else {
		top = Math.max(8, Math.min(window.innerHeight - mh - 8, rect.bottom + 8));
	}
	var left = rect.left + rect.width / 2 - mw / 2;
	left = Math.max(8, Math.min(window.innerWidth - mw - 8, left));

	$modal.css({ top: top + "px", left: left + "px", visibility: "" });
}
function openPlcValModal(name, addr, targetEl){
	plcValModalCtx = { name: name, addr: addr };
	$("#plcValModalTitle").text(name + " (" + addr + ")");
	calcBuf = "0";
	updateCalcDisplay();
	if (targetEl) positionValModalNear(targetEl);
	$("#plcValModalBackdrop").css("display", "block");
	$("#plcValModal").css("display", "block");
}
function closePlcValModal(){
	$("#plcValModalBackdrop").css("display", "none");
	$("#plcValModal").css("display", "none");
	plcValModalCtx = null;
}
function updateCalcDisplay(){
	$("#plcCalcDisplay").text(calcBuf);
}
function calcDigit(d){
	if (calcBuf === "0") calcBuf = d;
	else calcBuf += d;
	updateCalcDisplay();
}
function calcDot(){
	if (calcBuf.indexOf(".") === -1) calcBuf += ".";
	updateCalcDisplay();
}
function calcClear(){
	calcBuf = "0";
	updateCalcDisplay();
}
function calcBackspace(){
	calcBuf = calcBuf.slice(0, -1);
	if (calcBuf === "" || calcBuf === "-") calcBuf = "0";
	updateCalcDisplay();
}
function calcSign(){
	if (calcBuf.charAt(0) === "-") calcBuf = calcBuf.slice(1);
	else if (calcBuf !== "0") calcBuf = "-" + calcBuf;
	updateCalcDisplay();
}
function confirmPlcValModal(){
	if (!plcValModalCtx) return;
	var v = Number(calcBuf);
	if (calcBuf === "" || calcBuf === "-" || isNaN(v)) { alert("숫자를 입력하세요"); return; }
	markRecentWrite(plcValModalCtx.name, v);
	writeByAddress(plcValModalCtx.addr, v, plcValModalCtx.name);
	renderValue(plcValModalCtx.name, v); //폴링 반영 전까지 화면에 즉시 보이도록
	closePlcValModal();
}
$(document).on("keydown", function(e){
	if ($("#plcValModal").css("display") !== "block") return;
	if (e.key >= "0" && e.key <= "9") { calcDigit(e.key); e.preventDefault(); }
	else if (e.key === ".") { calcDot(); e.preventDefault(); }
	else if (e.key === "-") { calcSign(); e.preventDefault(); }
	else if (e.key === "Backspace") { calcBackspace(); e.preventDefault(); }
	else if (e.key === "Enter") { confirmPlcValModal(); e.preventDefault(); }
	else if (e.key === "Escape") { closePlcValModal(); e.preventDefault(); }
});

//.NET foldertag API 즉시 쓰기 (캐시 안거치고 바로 PLC에 씀)
function writeByAddress(address, value, label){
	if (!address) { alert("주소가 등록되지 않았습니다: " + label); return; }
	$.ajax({
		url: "http://localhost:5050/api/foldertag/write/by-address",
		type: "get",
		data: { plcId: "MST_MITSUBISHI", address: address, value: value },
		dataType: "json",
		timeout: 4000
	}).done(function(){
		logPlcWrite("제어화면2", label, address, value);
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

//ez_scada foldertag API - folderId: 5 = 제어화면 (BIT는 기존 v(), WORD(아날로그)는 신규 value() 재사용)
//API가 타입을 안 내려주므로 WORD 태그명을 화이트리스트로 구분, 나머지는 전부 BIT로 처리
var CONTROL_WORD_TAG_NAMES = ["pre-pen-hz","hit-pen-hz","chim-pen-hz-1","diff-pen-hz","crack-pen-hz-1","crack-pen-hz-2","oil-agi-rpm",
	"cycle-row1-value-1","cycle-row2-value-1","cycle-row1-value-2","cycle-row2-value-2",
	"lng-value-hit","lng-value-chim","lng-value-diff","lng-value-crack-1","lng-value-crack-2"];
function pollControlTags(folderId, intervalMs){
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
				if(CONTROL_WORD_TAG_NAMES.indexOf(tag.name) !== -1){
					value(tag.name, tag.value);
				}else{
					v(tag.name, tag.value === 1 || tag.value === true);
				}
			});
		}).always(function(){
			setTimeout(tick, intervalMs);
		});
	}
	tick();
}

//WORD값 표시 - hz(Hz 주파수)는 소수점 2자리, 나머지(LNG 등)는 그대로 표시
//값이 없거나(null) 통신 끊김이면 기본값 0 유지
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
function value(keys, val){
	if (isStaleAfterWrite(keys, val)) return; //방금 쓴 값인데 서버 캐시가 아직 안 따라왔으면 건너뜀
	renderValue(keys, val);
}
//실제 화면 표시만 담당 (stale 체크 없이 즉시 반영용으로도 재사용)
function renderValue(keys, val){
	if(val == null){
		val = 0;
	}
	if(keys.indexOf("hz") !== -1){
		$("."+keys).text(Number(val).toFixed(2));
	}else{
		$("."+keys).text(val);
	}
}

 	function ButtonPrev() {
 		window.location.href = '/DHT/controlCcf1';
 	}

 	function ButtonNext() {
 		window.location.href = '/DHT/controlCcf3';
 	}

 function v(keys, value){

 	if(keys.indexOf("off") != -1 || keys.indexOf("oil-pump-1") != -1){
 		//꺼짐일때, 유조펌프 1번일때
 		if(value == true){
 			$("."+keys).css("background-color","#FF0000");
 			$("."+keys+"-text").css("color","#FFFFFF");
 		}else{
 			$("."+keys).css("background-color","#f9f4f4");
 			$("."+keys+"-text").css("color","#000000");
 		}
 	}else if(keys.indexOf("on") != -1 ||keys.indexOf("auto") != -1 || keys.indexOf("oil-pump-2") != -1){
 		//켜짐일때, 자동일때, 유조펌프 2번일때
 		if(value == true){
 			$("."+keys).css("background-color","#00FF00");
 			$("."+keys+"-text").css("color","#FF0000");
 		}else{
 			$("."+keys).css("background-color","#f9f4f4");
 			$("."+keys+"-text").css("color","#000000");
 		}
 	}else if(keys.indexOf("manual") != -1){
 		//수동일때
 		if(value == true){
 			$("."+keys).css("background-color","#FFFF24");
 			$("."+keys+"-text").css("color","#FF0000");
 		}else{
 			$("."+keys).css("background-color","#f9f4f4");
 			$("."+keys+"-text").css("color","#000000");
 		}
 	}

 }

</script>
</body>
</html>
