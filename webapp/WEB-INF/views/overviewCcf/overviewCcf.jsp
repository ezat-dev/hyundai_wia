<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/overview_1/vars.css">
  <link rel="stylesheet" href="/DHT/css/overview_1/style.css">
<jsp:include page="../include/pluginpage.jsp"/>

  <style>
@keyframes blink-effect {
  50% {
    opacity: 0;
  }
}

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
   html, body { margin: 0; padding: 0; height: 100%; overflow: hidden; background: #f1f5f9; }
   .wia-fit-stage-outer { width: 100%; height: 100%; overflow: hidden; position: relative; }
   .wia-fit-stage { width: 1918px; height: 900px; position: absolute; left: 0; top: 0; transform-origin: 0 0; }
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
  <div class="wia-fit-stage-outer">
  <div class="wia-fit-stage" id="wiaFitStage">
  <div class="overview-1">
      <div class="main">

    <div class="wia-mirror-wrap" style="position:absolute;left:0;top:0;width:1918px;height:900px;">
    <div class="salt-box"></div>
    <img class="salt-1" src="/DHT/image/overview_1_gt2/salt-10.png" />
    <img class="short-1-3" src="/DHT/image/overview_1_gt2/short-1-20.png" />
    <img class="short-1-2" src="/DHT/image/overview_1_gt2/short-1-30.png" />
    <img class="short-1-1" src="/DHT/image/overview_1_gt2/short-1-40.png" />
    <img class="ccf-2" src="/DHT/image/overview_1_gt2/ccf-20.png" />
    <img class="ccf-1" src="/DHT/image/overview_1_gt2/ccf-10.png" />
    <img class="exit-daecha-1" src="/DHT/image/overview_1_gt2/exit-daecha-10.png" />
    <img class="short-11-1" src="/DHT/image/overview_1_gt2/short-11-10.png" />
    <img class="short-11-2" src="/DHT/image/overview_1_gt2/short-11-20.png" />
    <img class="short-11-3" src="/DHT/image/overview_1_gt2/short-11-30.png" />
    <img class="short-11-4" src="/DHT/image/overview_1_gt2/short-11-40.png" />
    <img class="tong-2 R222" src="/DHT/image/overview_1_gt2/tong-281.png" />
    <img class="tong-1 R212" src="/DHT/image/overview_1_gt2/tong-282.png" />
    <img class="tong-3 R232" src="/DHT/image/overview_1_gt2/tong-283.png" />
    <img class="tong-4 R242" src="/DHT/image/overview_1_gt2/tong-284.png" />
    <img class="tong-5 R252" src="/DHT/image/overview_1_gt2/tong-285.png" />
    <img class="tong-6 R262" src="/DHT/image/overview_1_gt2/tong-287.png" />
    <img class="tong-7 R272" src="/DHT/image/overview_1_gt2/tong-288.png" />
    <img class="tong-8 R282" src="/DHT/image/overview_1_gt2/tong-289.png" />
    <img class="tong-9 R292" src="/DHT/image/overview_1_gt2/tong-2810.png" />
    <img class="tong-10 R302" src="/DHT/image/overview_1_gt2/tong-2811.png" />
    <img class="tong-11 R312" src="/DHT/image/overview_1_gt2/tong-2812.png" />
    <img class="tong-12 R322" src="/DHT/image/overview_1_gt2/tong-2813.png" />
    <img class="tong-13 R332" src="/DHT/image/overview_1_gt2/tong-2814.png" />
    <img class="tong-14 R342" src="/DHT/image/overview_1_gt2/tong-2815.png" />
    <img class="tong-15 R352" src="/DHT/image/overview_1_gt2/tong-2816.png" />
    <img class="tong-16 R362" src="/DHT/image/overview_1_gt2/tong-2817.png" />
    <img class="tong-17 R372" src="/DHT/image/overview_1_gt2/tong-2818.png" />
    <img class="tong-18 R382" src="/DHT/image/overview_1_gt2/tong-2819.png" />
    <img class="tong-19 R392" src="/DHT/image/overview_1_gt2/tong-2820.png" />
    <img class="tong-20 R402" src="/DHT/image/overview_1_gt2/tong-2821.png" />
    <img class="tong-21 R412" src="/DHT/image/overview_1_gt2/tong-2822.png" />
    <img class="tong-22 R422" src="/DHT/image/overview_1_gt2/tong-2823.png" />
    <img class="tong-23 R432" src="/DHT/image/overview_1_gt2/tong-2824.png" />
    <img class="tong-24 R442" src="/DHT/image/overview_1_gt2/tong-2825.png" />
    <img class="tong-25 R452" src="/DHT/image/overview_1_gt2/tong-2826.png" />
    <img class="tong-26 R462" src="/DHT/image/overview_1_gt2/tong-2827.png" />
    <img class="tong-27 R472" src="/DHT/image/overview_1_gt2/tong-2828.png" />
    <img class="tong-28 R482" src="/DHT/image/overview_1_gt2/tong-286.png" />


    











    <div class="rectangle-1"></div>
    <div class="pre-port-box-2"></div>
    <div class="pre-port-cover-2"></div>
    <div class="door-green-4 X0262"></div>
    <div class="door-yellow-4 X0263"></div>
    <div class="door-green-5 X0290"></div>
    <div class="door-yellow-5 X0291"></div>
    <div class="door-green-6 X0292"></div>
    <div class="door-yellow-6 X0290"></div>
    <div class="door-green-7 X02C0"></div>
    <div class="door-yellow-7 X02C1"></div>
    <div class="door-green-8 X02C5"></div>
    <div class="door-yellow-8 X02C6"></div>
    <div class="door-green-3 X0260"></div>
    <div class="door-yellow-3 X0261"></div>
    <div class="door-green-2 X0222"></div>
    <div class="door-yellow-2 X0223"></div>
    <div class="door-green-1 X0220"></div>
    <div class="door-yellow-1 X0221"></div>
    <img class="pre-fire-2 X0273" src="/DHT/image/overview_1_gt2/pre-fire-30.png" />
    <img class="pre-blue-fire-2 X0233" src="/DHT/image/overview_1_gt2/pre-blue-fire-40.png" />
    <div class="pre-port-box-1"></div>
    <div class="pre-port-cover-1"></div>
    <img class="pre-fire-1 Y0284" src="/DHT/image/overview_1_gt2/pre-fire-31.png" />
    <img class="pre-blue-fire-1 X0232" src="/DHT/image/overview_1_gt2/pre-blue-fire-41.png" />
    <div class="pre-port-box-3"></div>
    <div class="pre-port-cover-3"></div>
    <img class="pre-fire-3 Y02E4" src="/DHT/image/overview_1_gt2/pre-fire-32.png" />
    <img class="pre-blue-fire-3 X0234" src="/DHT/image/overview_1_gt2/pre-blue-fire-42.png" />
    <img class="pre-fire-4 Y024C" src="/DHT/image/overview_1_gt2/pre-fire-30.png" />
    <img class="pre-blue-fire-4 X0230" src="/DHT/image/overview_1_gt2/pre-blue-fire-40.png" />
    <img class="long-fire-1 Y0282" src="/DHT/image/overview_1_1/long-fire-20.png" />
    <img class="pre-blue-fire-6 X0272" src="/DHT/image/overview_1_gt2/pre-blue-fire-40.png" />
    <img class="long-fire-2 Y02E2" src="/DHT/image/overview_1_1/long-fire-20.png" />
    <img class="pre-blue-fire-7 X0273" src="/DHT/image/overview_1_gt2/pre-blue-fire-40.png" />
    <img class="pre-fire-5 Y024D" src="/DHT/image/overview_1_gt2/pre-fire-30.png" />
    <img class="pre-blue-fire-8 X0273" src="/DHT/image/overview_1_gt2/pre-blue-fire-40.png" />
    <img class="lamp-red-1" src="/DHT/image/overview_1_gt2/lamp-red-10.png" />
    <img class="lamp-green-1 Y03A0" src="/DHT/image/overview_1_gt2/lamp-green-10.png" />
    <img class="pen-rol-1" src="/DHT/image/overview_1_gt2/pen-rol-10.png" />
    <img class="lamp-red-2" src="/DHT/image/overview_1_gt2/lamp-red-20.png" />
    <img class="lamp-green-2 Y03A1" src="/DHT/image/overview_1_gt2/lamp-green-20.png" />
    <img class="pen-rol-2" src="/DHT/image/overview_1_gt2/pen-rol-20.png" />
    <img class="green-up-1 Y03E3" src="/DHT/image/overview_1_gt2/green-up-90.png" />
    <img class="green-down-1 Y03E2" src="/DHT/image/overview_1_gt2/green-down-90.png" />
    <img class="green-up-2 Y03E5" src="/DHT/image/overview_1_gt2/green-up-91.png" />
    <img class="green-down-2 Y03E4" src="/DHT/image/overview_1_gt2/green-down-91.png" />
    <img class="green-up-3 Y03E7" src="/DHT/image/overview_1_gt2/green-up-92.png" />
    <img class="green-down-3 Y03E6" src="/DHT/image/overview_1_gt2/green-down-92.png" />
    <img class="green-up-4 Y03EB" src="/DHT/image/overview_1_gt2/green-up-93.png" />
    <img class="green-down-4 Y03EA" src="/DHT/image/overview_1_gt2/green-down-93.png" />
    <img class="green-up-5 Y03ED" src="/DHT/image/overview_1_gt2/green-up-94.png" />
    <img class="green-down-5 Y03EC" src="/DHT/image/overview_1_gt2/green-down-94.png" />
    <img class="green-up-7 Y03B1" src="/DHT/image/overview_1_gt2/green-up-95.png" />
    <img class="green-down-7 Y03B0" src="/DHT/image/overview_1_gt2/green-down-95.png" />
    <img class="green-up-9 Y03F1" src="/DHT/image/overview_1_gt2/green-up-96.png" />
    <img class="green-down-9 Y03F0" src="/DHT/image/overview_1_gt2/green-down-96.png" />
    <img class="green-up-11 Y03B5" src="/DHT/image/overview_1_gt2/green-up-97.png" />
    <img class="green-down-11 Y03B4" src="/DHT/image/overview_1_gt2/green-down-97.png" />
    <img class="green-up-12 Y03B8" src="/DHT/image/overview_1_gt2/green-up-98.png" />
    <img class="green-down-12 Y03B8" src="/DHT/image/overview_1_gt2/green-down-98.png" />
    <img class="green-up-13 Y03F3" src="/DHT/image/overview_1_gt2/green-up-99.png" />
    <img class="green-down-13 Y03F2" src="/DHT/image/overview_1_gt2/green-down-99.png" />
    <img class="green-up-15 Y03BD" src="/DHT/image/overview_1_gt2/green-up-910.png" />
    <img class="green-down-15 Y03BC" src="/DHT/image/overview_1_gt2/green-down-910.png" />
    <img class="green-up-16 Y03C1" src="/DHT/image/overview_1_gt2/green-up-911.png" />
    <img class="green-down-16 Y03C0" src="/DHT/image/overview_1_gt2/green-down-911.png" />
    <img class="green-up-17 Y03F5" src="/DHT/image/overview_1_gt2/green-up-912.png" />
    <img class="green-down-17 Y03F4" src="/DHT/image/overview_1_gt2/green-down-912.png" />
    <img class="green-up-19 Y03C5" src="/DHT/image/overview_1_gt2/green-up-913.png" />
    <img class="green-down-19 Y03C4" src="/DHT/image/overview_1_gt2/green-down-913.png" />
    <img class="green-up-20 Y03F7" src="/DHT/image/overview_1_gt2/green-up-914.png" />
    <img class="green-down-20 Y03F6" src="/DHT/image/overview_1_gt2/green-down-914.png" />
    <img class="green-up-22 Y03C9" src="/DHT/image/overview_1_gt2/green-up-915.png" />
    <img class="green-down-22 Y03C8" src="/DHT/image/overview_1_gt2/green-down-915.png" />
    <img class="green-up-23 Y0299" src="/DHT/image/overview_1_gt2/green-up-916.png" />
    <img class="green-down-23 Y03F8" src="/DHT/image/overview_1_gt2/green-down-916.png" />
    <img class="green-up-14 Y028B" src="/DHT/image/overview_1_gt2/green-up-60.png" />
    <img class="green-down-14 Y028A" src="/DHT/image/overview_1_gt2/green-down-60.png" />
    <img class="green-up-18 Y02B1" src="/DHT/image/overview_1_gt2/green-up-61.png" />
    <img class="green-down-18 Y02B0" src="/DHT/image/overview_1_gt2/green-down-61.png" />
    <img class="green-up-21 Y02B3" src="/DHT/image/overview_1_gt2/green-up-62.png" />
    <img class="green-down-21 Y02B2" src="/DHT/image/overview_1_gt2/green-down-62.png" />
    <img class="green-up-24 Y02E9" src="/DHT/image/overview_1_gt2/green-up-63.png" />
    <img class="green-down-24 Y02E8" src="/DHT/image/overview_1_gt2/green-down-63.png" />
    <img class="green-up-26 Y02EE" src="/DHT/image/overview_1_gt2/green-up-64.png" />
    <img class="green-down-26 Y02ED" src="/DHT/image/overview_1_gt2/green-down-64.png" />
    <img class="green-up-10 Y0289" src="/DHT/image/overview_1_gt2/green-up-70.png" />
    <img class="green-down-10 Y0288" src="/DHT/image/overview_1_gt2/green-down-70.png" />
    <img class="green-up-8 Y0247" src="/DHT/image/overview_1_gt2/green-up-80.png" />
    <img class="green-down-8 Y0246" src="/DHT/image/overview_1_gt2/green-down-80.png" />
    <img class="green-up-6 Y0245" src="/DHT/image/overview_1_gt2/green-up-917.png" />
    <img class="green-down-6 Y0244" src="/DHT/image/overview_1_gt2/green-down-917.png" />
    <div class="con-off-1"></div>
    <div class="con-on-1 X022C"></div>
    <div class="con-off-2"></div>
    <div class="con-on-2 X0266"></div>
    <img class="lamp-red-3" src="/DHT/image/overview_1_gt2/lamp-red-30.png" />
    <img class="lamp-green-3 Y03A2" src="/DHT/image/overview_1_gt2/lamp-green-30.png" />
    <img class="pen-rol-3" src="/DHT/image/overview_1_gt2/pen-rol-30.png" />
    <img class="lamp-red-4" src="/DHT/image/overview_1_gt2/lamp-red-40.png" />
    <img class="lamp-green-4 Y03A3" src="/DHT/image/overview_1_gt2/lamp-green-40.png" />
    <img class="pen-rol-4" src="/DHT/image/overview_1_gt2/pen-rol-40.png" />
    <div class="con-off-3"></div>
    <div class="con-on-3 X0269"></div>
    <div class="con-off-4"></div>
    <div class="con-on-4 X0298"></div>
    <img class="lamp-red-5" src="/DHT/image/overview_1_gt2/lamp-red-50.png" />
    <img class="lamp-green-5 Y03A4" src="/DHT/image/overview_1_gt2/lamp-green-50.png" />
    <img class="pen-rol-5" src="/DHT/image/overview_1_gt2/pen-rol-50.png" />
    <img class="lamp-red-6" src="/DHT/image/overview_1_gt2/lamp-red-60.png" />
    <img class="lamp-green-6 Y03A5" src="/DHT/image/overview_1_gt2/lamp-green-60.png" />
    <img class="pen-rol-6" src="/DHT/image/overview_1_gt2/pen-rol-60.png" />
    <div class="con-off-5"></div>
    <div class="con-on-5 X029A"></div>
    <div class="con-off-6"></div>
    <div class="con-on-6 X029C"></div>
    <img class="moter-red-1" src="/DHT/image/overview_1_gt2/moter-red-190.png" />
    <img class="moter-green-1" src="/DHT/image/overview_1_gt2/moter-green-190.png" />
    <img class="moter-red-2" src="/DHT/image/overview_1_gt2/moter-red-191.png" />
    <img class="moter-green-2" src="/DHT/image/overview_1_gt2/moter-green-191.png" />
    <img class="moter-red-3" src="/DHT/image/overview_1_gt2/moter-red-192.png" />
    <img class="moter-green-3" src="/DHT/image/overview_1_gt2/moter-green-192.png" />
    <img class="moter-red-4" src="/DHT/image/overview_1_gt2/moter-red-193.png" />
    <img class="moter-green-4" src="/DHT/image/overview_1_gt2/moter-green-193.png" />
    <img class="moter-red-5" src="/DHT/image/overview_1_gt2/moter-red-194.png" />
    <img class="moter-green-5" src="/DHT/image/overview_1_gt2/moter-green-194.png" />
    <img class="moter-red-6" src="/DHT/image/overview_1_gt2/moter-red-195.png" />
    <img class="moter-green-6" src="/DHT/image/overview_1_gt2/moter-green-195.png" />
    <img class="moter-red-7" src="/DHT/image/overview_1_gt2/moter-red-196.png" />
    <img class="moter-green-7" src="/DHT/image/overview_1_gt2/moter-green-196.png" />
    <img class="moter-red-8" src="/DHT/image/overview_1_gt2/moter-red-197.png" />
    <img class="moter-green-8" src="/DHT/image/overview_1_gt2/moter-green-197.png" />
    <img class="moter-red-9" src="/DHT/image/overview_1_gt2/moter-red-198.png" />
    <img class="moter-green-9" src="/DHT/image/overview_1_gt2/moter-green-198.png" />
    <img class="moter-red-10" src="/DHT/image/overview_1_gt2/moter-red-199.png" />
    <img class="moter-green-10" src="/DHT/image/overview_1_gt2/moter-green-199.png" />
    <img class="moter-red-11" src="/DHT/image/overview_1_gt2/moter-red-1910.png" />
    <img class="moter-green-11" src="/DHT/image/overview_1_gt2/moter-green-1910.png" />
    <img class="moter-red-12" src="/DHT/image/overview_1_gt2/moter-red-1911.png" />
    <img class="moter-green-12" src="/DHT/image/overview_1_gt2/moter-green-1911.png" />
    <img class="moter-red-13" src="/DHT/image/overview_1_gt2/moter-red-1912.png" />
    <img class="moter-green-13" src="/DHT/image/overview_1_gt2/moter-green-1912.png" />
    <img class="moter-red-14" src="/DHT/image/overview_1_gt2/moter-red-1913.png" />
    <img class="moter-green-14" src="/DHT/image/overview_1_gt2/moter-green-1913.png" />
    <img class="moter-red-15" src="/DHT/image/overview_1_gt2/moter-red-1914.png" />
    <img class="moter-green-15" src="/DHT/image/overview_1_gt2/moter-green-1914.png" />
    <img class="moter-red-16" src="/DHT/image/overview_1_gt2/moter-red-1915.png" />
    <img class="moter-green-16" src="/DHT/image/overview_1_gt2/moter-green-1915.png" />
    <img class="green-up-25 Y03FB" src="/DHT/image/overview_1_gt2/green-up-918.png" />
    <img class="green-down-25 Y03FA" src="/DHT/image/overview_1_gt2/green-down-918.png" />
    <img class="moter-red-17" src="/DHT/image/overview_1_gt2/moter-red-1916.png" />
    <img class="moter-green-17" src="/DHT/image/overview_1_gt2/moter-green-1916.png" />
    <img class="green-up-27 Y03FD" src="/DHT/image/overview_1_gt2/green-up-919.png" />
    <img class="green-down-27 Y03FC" src="/DHT/image/overview_1_gt2/green-down-919.png" />
    <img class="moter-red-18" src="/DHT/image/overview_1_gt2/moter-red-1917.png" />
    <img class="moter-green-18" src="/DHT/image/overview_1_gt2/moter-green-1917.png" />
    <img class="elevator-1 X02C2" src="/DHT/image/overview_1_gt2/elevator-10.png" />
    <img class="elevator-3 X02C3" src="/DHT/image/overview_1_gt2/elevator-30.png" />
    <img class="pen-trans-1 Y03A8" src="/DHT/image/overview_1_gt2/pen-trans-20.png" />
    <img class="pen-trans-2 Y03AB" src="/DHT/image/overview_1_gt2/pen-trans-40.png" />
    <div class="clutchon-box-1"></div>
    <div class="clutchon-box-2"></div>
    <div class="clutchon-box-5"></div>
    <div class="clutchon-box-3"></div>
    <div class="clutchon-box-4"></div>
    <div class="con-off-7"></div>
    <div class="con-on-7"></div>
    <div class="con-off-8"></div>
    <div class="con-on-8"></div>
    <div class="con-off-9"></div>
    <div class="con-on-9"></div>
    </div>
    <div class="cycle-box"></div>
    <div class="cycle-text-box"></div>
    <div class="cycle-text">싸이클 변경 대기시간</div>
    <div class="cycle-mini-box"></div>
    <div class="cycle-set-time-text">설정시간</div>
    <div class="cycle-pv-text">남은시간</div>
    <div class="cycle-set-value R100">0</div>
    <div class="cycle-pv-value R109">0</div>
    <div class="middle-value-1"></div>
    <div class="middle-value-2"></div>
    <div class="middle-value-text-1">설정값</div>
    <div class="middle-value-text-12">현재값</div>
    <div class="middle-value-1-sp R710">0</div>
    <div class="middle-value-1-pv D422">0</div>
    <div class="middle-value-text-2">설정값</div>
    <div class="middle-value-text-22">현재값</div>
    <div class="middle-value-2-sp R711">0</div>
    <div class="middle-value-2-pv D437">0</div>
    <div class="process-data-box"></div>
    <div class="process-data-text">공정 데이터</div>
    <div class="process-time-box"></div>
    <div class="process-time-text">공정 시간(분)</div>
    <div class="temperature-box"></div>
    <div class="temperature-text">온도(℃)</div>
    <div class="cp-box"></div>
    <div class="cp-text">CP (%)</div>
    <div class="process-time-sp-text">0</div>
    <div class="process-time-pv-text">0</div>
    <div class="temperature-sp-text">0</div>
    <div class="temperature-pv-text">0</div>
    <div class="cp-sp-text">0</div>
    <div class="cp-pv-text">0</div>
    <div class="time-pre-sp R7000">0</div>
    <div class="time-pre-pv R6350">0</div>
    <div class="tem-pre-sp R6400">0</div>
    <div class="tem-pre-pv D200">0</div>
    <div class="cp-block-1"></div>
    <div class="time-hit-1-sp R7001">0</div>
    <div class="time-hit-1-pv R6351">0</div>
    <div class="time-hit-2-sp R7002">0</div>
    <div class="time-hit-2-pv R6352">0</div>
    <div class="tem-hit-sp R6402">0</div>
    <div class="tem-hit-pv D206">0</div>
    <div class="time-chim-all R7003">0</div>
    <div class="tem-chim-sp-1 R6404">0</div>
    <div class="tem-chim-pv-1 D212">0</div>
    <div class="cp-chim-sp-1 R6466">0</div>
    <div class="cp-chim-pv-1 D334">0</div>
    <div class="tem-chim-sp-2 R6405">0</div>
    <div class="tem-chim-pv-2 D215">0</div>
    <div class="cp-block-2"></div>
    <div class="time-diff-all R7011">0</div>
    <div class="tem-diff-sp R6407">0</div>
    <div class="tem-diff-pv D221">0</div>
    <div class="cp-diff-sp R6470">0</div>
    <div class="cp-diff-pv D346">0</div>
    <div class="tem-cool-sp R6409">0</div>
    <div class="tem-cool-pv D227">0</div>
    <!-- <div class="cp-cool-sp">0</div> -->
    <div class="cp-cool-pv">0</div>
    <div class="time-crack-sp-1 R7019">0</div>
    <div class="time-crack-pv-1 R6369">0</div>
    <div class="tem-crack-sp-1 R6411">0</div>
    <div class="tem-crack-pv-1 D233">0</div>
    <div class="cp-block-3"></div>
    <div class="time-crack-sp-2 R7020">0</div>
    <div class="time-crack-pv-2 R6370">0</div>
    <div class="tem-crack-sp-2 R6413">0</div>
    <div class="tem-crack-pv-2 D239">0</div>
    <div class="cp-crack-sp-2 R6474">0</div>
    <div class="cp-crack-pv-2 D358">0</div>
    <div class="time-q-sp R7021">0</div>
    <div class="time-q-pv R6371">0</div>
    <div class="tem-oil-sp R6415">0</div>
    <div class="tem-oil-pv D245">0</div>
    <div class="time-drain-sp R7023">0</div>
    <div class="time-drain-pv R6373">0</div>
    <div class="agi-block"></div>
    <div class="agi-sp R6516">0</div>
    <div class="agi-pv D488">0</div>
    <div class="agi-speed-text">
      아지테이터
      <br />
      속도
    </div>
    <div class="pre-box"></div>
    <div class="pre-text">예열로</div>
    <div class="chim-box"></div>
    <div class="chim-text">연속식 침탄로</div>
    <div class="oil-block"></div>
    <div class="time-sp-text">설정값</div>
    <div class="time-pv-text">현재값</div>
    <div class="tem-sp-text">설정값</div>
    <div class="tem-pv-text">현재값</div>
    <div class="cp-sp-text2">설정값</div>
    <div class="cp-pv-text2">현재값</div>
    <div class="oil-text">유조</div>
    <div class="pre-mini-box"></div>
    <div class="pre-mini-text">예열로</div>
    <div class="hit-1-mini-box"></div>
    <div class="hit-1-mini-text">가열1존</div>
    <div class="hit-2-mini-box"></div>
    <div class="hit-2-mini-text">가열2존</div>
    <div class="chim-1-mini-box"></div>
    <div class="chim-1-mini-text">침탄1존</div>
    <div class="chim-2-mini-box"></div>
    <div class="chim-2-mini-text">침탄2존</div>
    <div class="diff-mini-box"></div>
    <div class="diff-mini-text">확산존</div>
    <div class="cool-mini-box"></div>
    <div class="cool-mini-text">냉각존</div>
    <div class="crack-1-mini-box"></div>
    <div class="crack-1-mini-text">균열1존</div>
    <div class="crack-2-mini-box"></div>
    <div class="crack-2-mini-text">균열2존</div>
    <div class="q-mini-box"></div>
    <div class="q-mini-text">퀜칭</div>
    <div class="drain-mini-box"></div>
    <div class="drain-mini-text">드레인</div>
    <!-- <div class="oil-cool-text-1">유조 냉각펌프 1번</div>
    <div class="oil-cool-text-2">유조 냉각펌프 2번</div> -->
<!--
    <div class="alarm-box"></div>
    <div class="alarm-text-box"></div>
    <div class="alarm-reset-button"></div>
    <div class="alarm-stop-button"></div>
    <div class="alarm-warring"></div>
    <div class="alarm-text">알람</div>
-->
    <!-- <div class="exit-loading-box"></div>
    <div class="exit-loading-text">출구 대기시간</div>
    <div class="exit-loading-value-box"></div>
    <div class="exit-loading-tray-1-box"></div>
    <div class="exit-loading-tray-1-text">트레이1</div>
    <div class="exit-loading-tray-2-box"></div>
    <div class="exit-loading-tray-2-text">트레이2</div>
    <div class="exit-loading-tray-1-value">0</div>
    <div class="exit-loading-tray-2-value">0</div> -->
    <div class="frame-1"></div>
  </div>
</div>
  </div>
  </div>
<script>

//전역변수(화면 맞춤)
function wiaFitStageResize(){
	var stage = document.getElementById('wiaFitStage');
	if(!stage) return;
	var scale = Math.min(window.innerWidth/1918, window.innerHeight/900);
	stage.style.transform = "scale(" + scale + ")";
}
window.addEventListener('resize', wiaFitStageResize);
wiaFitStageResize();
</script>
<script>

//전역변수
var overviewInterval;

//로드
$(document).ready(function() {
	overviewListView();
	overviewInterval = setInterval("overviewListView()", 1000);

	ccfAlarmFrameCheck();
	setInterval(ccfAlarmFrameCheck, 2000);

	$(".frame-1").css("cursor", "pointer").on("click", goToAlarmDetail);

	pollFolderWordTags(2, 1000);

	//공정데이터 - 공정시간(분) 행: 설정값+현재값 둘 다 쓰기 가능
	var TIME_BOTH_NAMES = [
		"time-pre-sp","time-pre-pv","time-hit-1-sp","time-hit-1-pv","time-hit-2-sp","time-hit-2-pv",
		"time-chim-all","time-diff-all",
		"time-crack-sp-1","time-crack-pv-1","time-crack-sp-2","time-crack-pv-2",
		"time-q-sp","time-q-pv","time-drain-sp","time-drain-pv"
	];
	//공정데이터 - 나머지(온도/CP/아지테이터) 행: 설정값(SP)만 쓰기 가능, 현재값(PV)은 읽기 전용
	var SP_ONLY_NAMES = [
		"tem-pre-sp","tem-hit-sp","tem-chim-sp-1","cp-chim-sp-1","tem-chim-sp-2",
		"tem-diff-sp","cp-diff-sp","tem-cool-sp",
		"tem-crack-sp-1","tem-crack-sp-2","cp-crack-sp-2",
		"tem-oil-sp","agi-sp"
	];
	wireInlineEditable(TIME_BOTH_NAMES.concat(SP_ONLY_NAMES).concat(
		["cycle-set-value","cycle-pv-value","middle-value-1-sp","middle-value-2-sp"]
	));

	//작화 이미지(통, 센서, 도어, 불꽃, 컨베이어 등) - folderId: 1
	$(".clutchon-box-2, .clutchon-box-5").html('<span class="unflip-text">상승</span>');
	$(".clutchon-box-3, .clutchon-box-4").html('<span class="unflip-text">CLUTCH OFF</span>').css("background-color", "red");
	$("[class^='sensor-'], [class^='con-on-']").css("background-color", "red");
	pollFolderImageTags(1, 1000);
});

//ez_scada foldertag API(BIT/WORD 혼합) 폴링 - folderId: 1 = 작화 이미지(통, 센서, 도어, 불꽃, 컨베이어 등)
function pollFolderImageTags(folderId, intervalMs){
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
				renderOverviewImageTag(tag.name, tag.value);
			});
		}).always(function(){
			setTimeout(tick, intervalMs);
		});
	}
	tick();
}

//작화 이미지 태그를 이름 패턴별로 분기 처리
var IMG_ON_COLOR = "#39ff23"; //현재 적용되어있는 연두색
function renderOverviewImageTag(name, val){
	var $el = $("." + name);
	if (!$el.length) return;
	var on = Number(val) != 0;

	if (/^tong-\d+$/.test(name)) {
		renderTongTag($el, Number(val));
		return;
	}
	if (name === "clutchon-box-3" || name === "clutchon-box-4") {
		if (on) {
			$el.html('<span class="unflip-text">CLUTCH ON</span>').css("background-color", "#1cbf0a");
		} else {
			$el.html('<span class="unflip-text">CLUTCH OFF</span>').css("background-color", "red");
		}
		return;
	}
	if (name === "clutchon-box-2" || name === "clutchon-box-5") {
		$el.css("display", on ? "flex" : "none");
		return;
	}
	if (/^(sensor-|con-on-)/.test(name)) {
		$el.css("background-color", on ? IMG_ON_COLOR : "red");
		return;
	}
	if (/^pen-trans-/.test(name)) {
		$el.toggleClass("pen-trans-spin", on);
		return;
	}
	//door-, pre-fire-, pre-blue-fire-, long-fire-, green-up-, green-down-, lamp-green-, elevator-
	$el.css("display", on ? "block" : "none");
}

function renderTongTag($el, val){
	if ($el.is("img")) {
		//연속운용현황: 값이 0이 아니면 그냥 표시(색상 코딩 없음)
		$el.css("display", val !== 0 ? "block" : "none");
		return;
	}
	//처리품데이터: 값(1~6)에 따라 색상 코딩, 그 외(0 등)는 숨김
	switch (Math.trunc(val)) {
		case 1: $el.css({ display: "block", "background-color": "#ff8fc7", color: "#ffffff" }); break;
		case 2: $el.css({ display: "block", "background-color": "#ffff00", color: "#000000" }); break;
		case 3: $el.css({ display: "block", "background-color": "#90ee90", color: "#000000" }); break;
		case 4: $el.css({ display: "block", "background-color": "#0000ff", color: "#000000" }); break;
		case 5: $el.css({ display: "block", "background-color": "#ffffff", color: "#000000" }); break;
		case 6: $el.css({ display: "block", "background-color": "#800080", color: "#000000" }); break;
		default: $el.css("display", "none");
	}
}

//클릭하면 그 자리에서 바로 수정(인라인) 가능하게 만들고, 엔터 시 PLC에 즉시 쓴다
//주소는 각 요소의 두번째 class(태그 주소)에서 그대로 읽어온다 (예: class="time-pre-sp R7000")
function wireInlineEditable(names){
	names.forEach(function(name){
		var $el = $("." + name);
		if (!$el.length) return;
		var classes = ($el.attr("class") || "").split(/\s+/);
		var addr = classes.length > 1 ? classes[1] : null;
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
		logPlcWrite("연속운용현황", label, address, val);
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

//ez_scada foldertag API(WORD값) 폴링 - folderId: 2 = 연속운용현황 아날로그값(SP/PV 등)
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

//frame-1 알람현황: ez_scada 알람이력(vw_alarm_history)에서 아직 해제되지 않은(ACTIVE) 알람만 조회
function ccfAlarmFrameCheck() {
	$.ajax({
		url: "/DHT/alarmHistoryCcf/activeList",
		type: "post",
		dataType: "json",
		timeout: 4000
	}).done(function(result) {
		renderAlarmFrame((result && result.data) || []);
	}).fail(function() {
		renderAlarmFrame([]);
	});
}

function escAlarmText(s) {
	return String(s == null ? "" : s).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}

function renderAlarmFrame(actives) {
	var $f = $(".frame-1");
	if (!actives.length) {
		$f.html('<div style="color:#16a34a;font-weight:700;font-size:16px;">현재 발생한 알람이 없습니다</div>');
		return;
	}
	var html = '<div style="width:100%;height:100%;overflow-y:auto;padding:10px;box-sizing:border-box;display:flex;flex-direction:column;gap:6px;">';
	actives.forEach(function(a) {
		html += '<div style="flex-shrink:0;background:#dc2626;color:#fff;font-weight:700;font-size:14px;padding:8px 12px;border-radius:6px;">'
			+ escAlarmText(a.alarmdesc) + ' <span style="font-weight:400;font-size:12px;">(' + escAlarmText(a.time) + ')</span></div>';
	});
	html += '</div>';
	$f.html(html);
}

//알람 상세화면(알람 내역)으로 이동 - 이 화면은 상위 프레임의 iframe 안에서 로드되므로 부모의 go() 사용
function goToAlarmDetail() {
	try {
		if (window.parent && typeof window.parent.go === "function") {
			window.parent.go('/alarmHistoryCcf', '알람 내역', null);
		}
	} catch (e) {}
}

//OPC값 알람 조회
function overviewListView(){
	$.ajax({
		url:"/DHT/overviewCcf/view",
		type:"post",
		dataType:"json",
		success:function(result){
			var data = result.multiValues;

            for(let key in data){
            	for(let keys in data[key]){
            		var d = data[key];

					if(d[keys].action == "v"){
						v(keys, d[keys].value);
					}else if(d[keys].action == "c"){
						c(keys, d[keys].value);
					}else if(d[keys].action == "b"){
						b(keys, d[keys].value);
					}else if(d[keys].action == "value"){
						value(keys, d[keys].value);
					}

            	}
            }
		}
	});
}

function v(keys, value){
//	$("."+keys).text(value);

	if(value == true){
		$("."+keys).css("display","block");
	}else{
		$("."+keys).css("display","none");
	}

}


function c(keys, value){
//	$("."+keys).text(value);

	if(value == true){
		$("."+keys).css("background-color","red");
		$("."+keys).css("color","white");
	}else{
		$("."+keys).css("background-color","green");
		$("."+keys).css("color","black");
	}

}

function b(keys, value){
	if(value == true){
		$("."+keys).css("display","block");
		$("."+keys).css("animation","blink-effect 1s step-end infinite");
	}else{
		$("."+keys).css("display","none");
		$("."+keys).css("animation","");
	}

}

function value(keys, value){
	var $el = $("."+keys);
	if ($el.find("input.inline-edit-input").length) return; //편집 중이면 폴링 갱신 건너뜀
	if (isStaleAfterWrite(keys, value)) return; //방금 쓴 값인데 서버 캐시가 아직 안 따라왔으면 건너뜀
	$el.text(value);
	$el.css("display","");
	$el.css("text-align","center");

	if(keys.indexOf("pv") == -1){
		$el.css("color","#FF0000");
	}
}
</script>
</body>
</html>
