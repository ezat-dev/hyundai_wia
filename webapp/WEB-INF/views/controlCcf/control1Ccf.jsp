<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_1/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_1/style.css">
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

   /* 팬 인버터 설정 / 유조 아지테이터 설정 버튼 */
   .fan-inv-setting-box, .oil-agi-setting-box {
     background: #a5f2ff;
     border-style: solid;
     border-color: rgba(0,0,0,.15);
     border-width: 4px;
     border-radius: 2px;
     box-shadow: 0 1px 3px rgba(0,0,0,.08);
     display: flex;
     align-items: center;
     justify-content: center;
     width: 263px;
     height: 80px;
     position: absolute;
     cursor: pointer;
     font-size: 20px;
     font-weight: 800;
     color: #000000;
     text-align: center;
   }
   .fan-inv-setting-box { left: 646px; top: 652px; }
   .oil-agi-setting-box { left: 1371px; top: 127px; }

   /* 공통: 피처 모달(팬속도 제어 화면 / 유조 아지테이터 속도) 배경+틀 */
   .feature-modal-backdrop {
     display: none; position: fixed; inset: 0; background: rgba(0,0,0,.55); z-index: 99990;
   }
   .feature-modal {
     display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%);
     background: #0b1030 radial-gradient(rgba(255,255,255,.12) 1px, transparent 1px);
     background-size: 14px 14px;
     border: 2px solid #3a4a7a; border-radius: 10px; padding: 18px; z-index: 99991;
     box-shadow: 0 16px 50px rgba(0,0,0,.5);
   }
   .feature-modal-close {
     position: absolute; top: 8px; right: 10px; background: none; border: none;
     color: #cfd8f5; font-size: 20px; font-weight: 700; cursor: pointer; line-height: 1;
   }
   .feature-modal-close:hover { color: #fff; }

   /* 유조 아지테이터 속도 모달 */
   #agiSpeedModal { width: 300px; }
   .agi-speed-title {
     background: #000000; border: 2px solid #3ddc3d; border-radius: 4px; color: #ffffff;
     font-size: 13px; font-weight: 700; text-align: center; padding: 8px 6px; margin: 10px 0 8px;
   }
   .agi-speed-lcd-box {
     background: #000000; border: 3px solid #3ddc3d; border-radius: 4px;
     display: flex; align-items: center; justify-content: center; gap: 8px;
     padding: 10px; cursor: pointer;
   }
   .agi-speed-lcd {
     color: #39ff6a; font-family: 'Consolas', monospace; font-size: 34px; font-weight: 700;
   }
   .agi-speed-unit { color: #ffffff; font-size: 16px; font-weight: 700; }

   /* 팬속도 제어 화면 모달 */
   #fanInvModal { width: 860px; }
   .fan-inv-title-bar {
     background: linear-gradient(180deg, #d94b4b, #a51f1f); border: 2px solid #ff8a8a; border-radius: 4px;
     color: #ffffff; font-size: 22px; font-weight: 800; text-align: center; padding: 10px; margin-bottom: 12px;
   }
   .fan-grid {
     display: grid; grid-template-columns: 90px repeat(8, 1fr); gap: 4px;
   }
   .fan-grid-cell {
     display: flex; align-items: center; justify-content: center; text-align: center;
     border-radius: 3px; padding: 6px 2px; font-size: 12px; font-weight: 700; color: #fff;
   }
   .fan-grp-label { background: #7a8cc4; }
   .fan-grp-pre { background: #7a5cc4; }
   .fan-grp-chim { background: #2b3f7a; grid-column: span 5; }
   .fan-grp-oil { background: #1f6b6b; grid-column: span 2; }
   .fan-sub-label { background: #4a5a8a; color: #dfe6ff; font-size: 11px; }
   .fan-sub-head { background: #141a33; color: #dfe6ff; font-size: 11px; }
   .fan-row-label { background: #4a5a8a; color: #dfe6ff; font-size: 11px; font-weight: 700; }
   .fan-lcd {
     background: #000000; border: 2px solid #3ddc3d; border-radius: 3px;
     color: #39ff6a; font-family: 'Consolas', monospace; font-size: 16px; font-weight: 700;
     padding: 6px 2px;
   }
   .fan-lcd.sp { cursor: pointer; }
   .fan-lcd.pv { color: #39ff6a; opacity: .85; }
   </style>
  <title>Document</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="group-4">
    <div class="group-3">
      <div class="main"></div>

    </div>
    <div class="pre-box"></div>
    <div class="pre-text-box"></div>
    <div class="pre-text">예열로 버너</div>
    <div class="pre-off"></div>
    <div class="pre-off-text">꺼짐</div>
    <div class="pre-on"></div>
    <div class="pre-on-text">켜짐</div>
    <div class="hit-box"></div>
    <div class="hit-text-box"></div>
    <div class="hit-text">가열존 히터</div>
    <div class="hit-off"></div>
    <div class="hit-off-text">꺼짐</div>
    <div class="hit-on"></div>
    <div class="hit-on-text">켜짐</div>
    <div class="chim-box-1"></div>
    <div class="chim-text-box-1"></div>
    <div class="chim-text-1">침탄 1존 히터</div>
    <div class="chim-1-off"></div>
    <div class="chim-1-off-text">꺼짐</div>
    <div class="chim-1-on"></div>
    <div class="chim-1-on-text">켜짐</div>
    <div class="chim-box-2"></div>
    <div class="chim-text-box-2"></div>
    <div class="chim-text-2">침탄 2존 히터</div>
    <div class="chim-2-off"></div>
    <div class="chim-2-off-text">꺼짐</div>
    <div class="chim-2-on"></div>
    <div class="chim-2-on-text">켜짐</div>
    <div class="diff-box"></div>
    <div class="diff-text-box"></div>
    <div class="diff-text">확산존 히터</div>
    <div class="diff-off"></div>
    <div class="diff-off-text">꺼짐</div>
    <div class="diff-on"></div>
    <div class="diff-on-text">켜짐</div>
    <div class="crack-box-1"></div>
    <div class="crack-text-box-1"></div>
    <div class="crack-text-1">균열 1존 히터</div>
    <div class="crack-1-off"></div>
    <div class="crack-1-off-text">꺼짐</div>
    <div class="crack-1-on"></div>
    <div class="crack-1-on-text">켜짐</div>
    <div class="crack-box-2"></div>
    <div class="crack-text-box-2"></div>
    <div class="crack-text-2">균열 2존 히터</div>
    <div class="crack-2-off"></div>
    <div class="crack-2-off-text">꺼짐</div>
    <div class="crack-2-on"></div>
    <div class="crack-2-on-text">켜짐</div>
    <div class="oil-box"></div>
    <div class="oil-text-box"></div>
    <div class="oil-text">유조 히터</div>
    <div class="oil-off"></div>
    <div class="oil-off-text">꺼짐</div>
    <div class="oil-on"></div>
    <div class="oil-on-text">켜짐</div>
    <div class="cool-heat-box"></div>
    <div class="cool-heat-text-box"></div>
    <div class="cool-heat-text">냉각존 히터</div>
    <div class="cool-heat-off"></div>
    <div class="cool-heat-off-text">꺼짐</div>
    <div class="cool-heat-on"></div>
    <div class="cool-heat-on-text">켜짐</div>
    <div class="pre-pen-box"></div>
    <div class="pre-pen-text-box"></div>
    <div class="pre-pen-text">예열로 팬</div>
    <div class="fan-hz pre-pen-hz">0.00</div>
    <div class="fan-hz-unit pre-pen-hz-unit">HZ</div>
    <div class="pre-pen-off"></div>
    <div class="pre-pen-off-text">정지</div>
    <div class="pre-pen-on"></div>
    <div class="pre-pen-on-text">기동</div>
    <div class="hit-pen-box"></div>
    <div class="hit-pen-text-box"></div>
    <div class="hit-pen-text">가열존 팬</div>
    <div class="fan-hz hit-pen-hz">0.00</div>
    <div class="fan-hz-unit hit-pen-hz-unit">HZ</div>
    <div class="hit-pen-off"></div>
    <div class="hit-pen-on"></div>
    <div class="hit-pen-off-text">정지</div>
    <div class="hit-pen-on-text">기동</div>
    <div class="chim-pen-box-1"></div>
    <div class="chim-pen-text-box-1"></div>
    <div class="chim-pen-text-1">침탄1존 팬</div>
    <div class="fan-hz chim-pen-hz-1">0.00</div>
    <div class="fan-hz-unit chim-pen-hz-1-unit">HZ</div>
    <div class="chim-1-pen-off"></div>
    <div class="chim-1-pen-off-text">정지</div>
    <div class="chim-1-pen-on"></div>
    <div class="chim-1-pen-on-text">기동</div>
    <div class="diff-pen-box"></div>
    <div class="diff-pen-text-box"></div>
    <div class="diff-pen-text">확산존 팬</div>
    <div class="fan-hz diff-pen-hz">0.00</div>
    <div class="fan-hz-unit diff-pen-hz-unit">HZ</div>
    <div class="diff-pen-off"></div>
    <div class="diff-pen-off-text">정지</div>
    <div class="diff-pen-on"></div>
    <div class="diff-pen-on-text">기동</div>
    <div class="crack-pen-box-1"></div>
    <div class="crack-pen-text-box-1"></div>
    <div class="crack-pen-text-1">균열1존 팬</div>
    <div class="fan-hz crack-pen-hz-1">0.00</div>
    <div class="fan-hz-unit crack-pen-hz-1-unit">HZ</div>
    <div class="crack-1-pen-off"></div>
    <div class="crack-1-pen-off-text">정지</div>
    <div class="crack-1-pen-on"></div>
    <div class="crack-1-pen-on-text">기동</div>
    <div class="crack-pen-box-2"></div>
    <div class="crack-pen-text-box-2"></div>
    <div class="crack-pen-text-2">균열2존 팬</div>
    <div class="fan-hz crack-pen-hz-2">0.00</div>
    <div class="fan-hz-unit crack-pen-hz-2-unit">HZ</div>
    <div class="crack-2-pen-off"></div>
    <div class="crack-2-pen-off-text">정지</div>
    <div class="crack-2-pen-on"></div>
    <div class="crack-2-pen-on-text">기동</div>
    <div class="oil-agi-box"></div>
    <div class="oil-agi-text-box"></div>
    <div class="oil-agi-text">유조 아지테이터</div>
    <div class="oil-agi-rpm">0</div>
    <div class="oil-agi-rpm-unit">RPM</div>
    <div class="agi-manual"></div>
    <div class="agi-manual-text">수동</div>
    <div class="agi-auto"></div>
    <div class="agi-auto-text">자동</div>
    <div class="agi-off"></div>
    <div class="agi-off-text">꺼짐</div>
    <div class="oil-cool-box"></div>
    <div class="oil-cool-text-box"></div>
    <div class="oil-cool-text">유조 냉각 펌프</div>
    <div class="cool-pump-manual"></div>
    <div class="cool-pump-manual-text">수동</div>
    <div class="cool-pump-auto"></div>
    <div class="cool-pump-auto-text">자동</div>
    <div class="cool-pump-off"></div>
    <div class="cool-pump-off-text">꺼짐</div>
    <div class="oil-pump-box"></div>
    <div class="oil-pump-text-box"></div>
    <div class="oil-pump-text">유조 펌프 선택</div>
    <div class="oil-pump-1"></div>
    <div class="oil-pump-2"></div>
    <div class="oil-pump-1-text">1번</div>
    <div class="oil-pump-2-text">2번</div>
    <div class="cool-water-box"></div>
    <div class="cool-water-text-box"></div>
    <div class="cool-water-text">유조 냉각수</div>
    <div class="cool-water-manual"></div>
    <div class="cool-water-manual-text">수동</div>
    <div class="cool-water-auto"></div>
    <div class="cool-water-auto-text">자동</div>
    <div class="cool-water-off"></div>
    <div class="cool-water-off-text">꺼짐</div>
    <img class="page-button-left" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonPrev()"/>
  	<img class="page-button-right" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonNext()"/>

    <div class="fan-inv-setting-box" onclick="openFanInvModal()">팬 인버터 설정</div>
    <div class="oil-agi-setting-box" onclick="openAgiSpeedModal()">유조 아지테이터 설정</div>
  </div>

  <!-- 유조 아지테이터 속도 모달 -->
  <div class="feature-modal-backdrop" id="agiSpeedModalBackdrop" onclick="closeAgiSpeedModal()"></div>
  <div class="feature-modal" id="agiSpeedModal">
    <button type="button" class="feature-modal-close" onclick="closeAgiSpeedModal()">&times;</button>
    <div class="agi-speed-title">유조 아지테이터 속도설정</div>
    <div class="agi-speed-lcd-box" onclick="openPlcValModal('oil-agi-speed-sp','R6516', this)">
      <div class="agi-speed-lcd oil-agi-speed-sp">0</div>
      <span class="agi-speed-unit">Hz</span>
    </div>
    <div class="agi-speed-title">유조 아지테이터 속도변경(렌칭대기)</div>
    <div class="agi-speed-lcd-box" onclick="openPlcValModal('oil-agi-speed-wait','R6516', this)">
      <div class="agi-speed-lcd oil-agi-speed-wait">0</div>
      <span class="agi-speed-unit">RPM</span>
    </div>
  </div>

  <!-- 팬속도 제어 화면 모달 -->
  <div class="feature-modal-backdrop" id="fanInvModalBackdrop" onclick="closeFanInvModal()"></div>
  <div class="feature-modal" id="fanInvModal">
    <button type="button" class="feature-modal-close" onclick="closeFanInvModal()">&times;</button>
    <div class="fan-inv-title-bar">팬속도 제어 화면</div>
    <div class="fan-grid">
      <div class="fan-grid-cell fan-grp-label">&nbsp;</div>
      <div class="fan-grid-cell fan-grp-pre">예열로</div>
      <div class="fan-grid-cell fan-grp-chim">침탄로</div>
      <div class="fan-grid-cell fan-grp-oil">유조</div>

      <div class="fan-grid-cell fan-row-label">인버터<br/>(Hz)</div>
      <div class="fan-grid-cell fan-sub-head">예열로</div>
      <div class="fan-grid-cell fan-sub-head">가열존</div>
      <div class="fan-grid-cell fan-sub-head">침탄존</div>
      <div class="fan-grid-cell fan-sub-head">확산존</div>
      <div class="fan-grid-cell fan-sub-head">균열-1존</div>
      <div class="fan-grid-cell fan-sub-head">균열-2존</div>
      <div class="fan-grid-cell fan-sub-head">(RPM)</div>
      <div class="fan-grid-cell fan-sub-head">드레인</div>

      <div class="fan-grid-cell fan-row-label">설정값</div>
      <div class="fan-lcd sp pre-hz-sp" onclick="openPlcValModal('pre-hz-sp','R6500', this)">0</div>
      <div class="fan-lcd sp hit-hz-sp" onclick="openPlcValModal('hit-hz-sp','R6502', this)">0</div>
      <div class="fan-lcd sp chim-hz-sp" onclick="openPlcValModal('chim-hz-sp','R6505', this)">0</div>
      <div class="fan-lcd sp diff-hz-sp" onclick="openPlcValModal('diff-hz-sp','R6509', this)">0</div>
      <div class="fan-lcd sp crack1-hz-sp" onclick="openPlcValModal('crack1-hz-sp','R6513', this)">0</div>
      <div class="fan-lcd sp crack2-hz-sp" onclick="openPlcValModal('crack2-hz-sp','R6514', this)">0</div>
      <div class="fan-lcd sp oil-rpm-sp" onclick="openPlcValModal('oil-rpm-sp','R6516', this)">0</div>
      <div class="fan-lcd sp oil-drain-sp" onclick="openPlcValModal('oil-drain-sp','R6517', this)">0</div>

      <div class="fan-grid-cell fan-row-label">현재값</div>
      <div class="fan-lcd pv pre-hz-pv">0</div>
      <div class="fan-lcd pv hit-hz-pv">0</div>
      <div class="fan-lcd pv chim-hz-pv">0</div>
      <div class="fan-lcd pv diff-hz-pv">0</div>
      <div class="fan-lcd pv crack1-hz-pv">0</div>
      <div class="fan-lcd pv crack2-hz-pv">0</div>
      <div class="fan-lcd pv oil-rpm-pv">0</div>
      <div class="fan-lcd pv oil-drain-pv">0</div>
    </div>
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

//===== 팬 인버터 설정 / 유조 아지테이터 속도 피처 모달 =====
function openFanInvModal(){
	$("#fanInvModalBackdrop").css("display", "block");
	$("#fanInvModal").css("display", "block");
}
function closeFanInvModal(){
	$("#fanInvModalBackdrop").css("display", "none");
	$("#fanInvModal").css("display", "none");
}
function openAgiSpeedModal(){
	$("#agiSpeedModalBackdrop").css("display", "block");
	$("#agiSpeedModal").css("display", "block");
}
function closeAgiSpeedModal(){
	$("#agiSpeedModalBackdrop").css("display", "none");
	$("#agiSpeedModal").css("display", "none");
}

//===== PLC 실시간 쓰기(즉시 호출, 캐시 안씀) =====
//이 화면의 버튼(class명) -> 실제 코일(M) 주소. 읽기(v())는 램프(L) 주소를 쓰지만 쓰기는 반드시 코일(M) 주소로 해야함
var BTN_ADDR_MAP = {
	"pre-off":"M301", "pre-on":"M302",
	"hit-off":"M310", "hit-on":"M311",
	"chim-1-off":"M313", "chim-1-on":"M314",
	"chim-2-off":"M316", "chim-2-on":"M317",
	"diff-off":"M319", "diff-on":"M320",
	"crack-1-off":"M322", "crack-1-on":"M323",
	"crack-2-off":"M325", "crack-2-on":"M326",
	"oil-off":"M328", "oil-on":"M329",
	"cool-heat-off":"M397", "cool-heat-on":"M398",
	"pre-pen-off":"M361", "pre-pen-on":"M362",
	"hit-pen-off":"M364", "hit-pen-on":"M365",
	"chim-1-pen-off":"M367", "chim-1-pen-on":"M368",
	"diff-pen-off":"M373", "diff-pen-on":"M374",
	"crack-1-pen-off":"M376", "crack-1-pen-on":"M377",
	"crack-2-pen-off":"M379", "crack-2-pen-on":"M380",
	"agi-manual":"M382", "agi-auto":"M384", "agi-off":"M383",
	"cool-pump-manual":"M385", "cool-pump-auto":"M387", "cool-pump-off":"M386",
	"oil-pump-1":"M388", "oil-pump-2":"M389",
	"cool-water-manual":"M391", "cool-water-auto":"M393", "cool-water-off":"M392"
};

//이 화면의 아날로그 입력 박스(class명) -> 실제 레지스터 주소 (folders_tags folderId=5 WORD와 동일)
var WORD_ADDR_MAP = {
	"pre-pen-hz":"R6500", "hit-pen-hz":"R6502", "chim-pen-hz-1":"R6505",
	"diff-pen-hz":"R6509", "crack-pen-hz-1":"R6513", "crack-pen-hz-2":"R6514",
	"oil-agi-rpm":"R6517"
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
			void $bar[0].offsetWidth; // 리플로우 강제(트랜지션 재시작 보장)
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
		logPlcWrite("제어화면1", label, address, value);
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
	"pre-hz-sp","pre-hz-pv","hit-hz-sp","hit-hz-pv","chim-hz-sp","chim-hz-pv","diff-hz-sp","diff-hz-pv",
	"crack1-hz-sp","crack1-hz-pv","crack2-hz-sp","crack2-hz-pv","oil-rpm-sp","oil-rpm-pv",
	"oil-drain-sp","oil-drain-pv","oil-agi-speed-sp","oil-agi-speed-wait"];
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

//WORD값 표시 - hz(Hz 주파수)는 소수점 2자리, 나머지(RPM/LNG 등)는 그대로 표시
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
		window.location.href = '/DHT/controlCcf3';
	}

	function ButtonNext() {
		window.location.href = '/DHT/controlCcf2';
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
