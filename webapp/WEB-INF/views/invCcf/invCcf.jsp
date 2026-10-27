<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/inv/vars.css">
  <link rel="stylesheet" href="/DHT/css/inv/style.css">
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

   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
   #ft {
  background-color: #123478;
  height: 72.43px;
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 10; /* 필요시 조정, 다른 요소들보다 위에 표시되도록 */
}

   </style>
  <title>Document</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
      <div class="header">

      </div>
  <div class="group-2">
    <div class="wrapper">
      <div class="main"></div>
          </div>

      <div class="pen-inv-box"></div>
      <div class="pen-inv-text-box"></div>
    <div class="pen-inv-text">펜 인버터 설정</div>

      <div class="pre-pen">
        <img class="pre-pen-inv" data-role="card-img" src="/DHT/image/inv/pre-pen-inv0.png" />
        <div class="pre-pen-inv-text-box" data-role="title-box"></div>
        <div class="pre-pen-text" data-role="title-text">예열로 펜</div>
        <div class="pre-pen-pv-text" data-role="pv-text">현재값 :</div>
        <div class="pre-pen-pv" data-role="pv-value">0</div>
        <div class="hz2" data-role="pv-unit">Hz</div>
        <div class="pre-pen-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="pre-pen-out-a" data-role="outa-value">0</div>
        <div class="a" data-role="outa-unit">A</div>
        <div class="pre-pen-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="pre-pen-out-v" data-role="outv-value">0</div>
        <div class="v" data-role="outv-unit">V</div>
      </div>

      <div class="hit-pen">
        <img class="hit-pen-inv" data-role="card-img" src="/DHT/image/inv/hit-pen-inv0.png" />
        <div class="hit-pen-inv-text-box" data-role="title-box"></div>
        <div class="hit-pen-text" data-role="title-text">가열존 펜</div>
        <div class="hit-pen-pv-text" data-role="pv-text">현재값 :</div>
        <div class="hit-pen-pv" data-role="pv-value">0</div>
        <div class="hz4" data-role="pv-unit">Hz</div>
        <div class="hit-pen-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="hit-pen-out-a" data-role="outa-value">0</div>
        <div class="a2" data-role="outa-unit">A</div>
        <div class="hit-pen-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="hit-pen-out-v" data-role="outv-value">0</div>
        <div class="v2" data-role="outv-unit">V</div>
      </div>

      <div class="chim-pen">
        <img class="chim-pen-inv" data-role="card-img" src="/DHT/image/inv/chim-pen-inv-10.png" />
        <div class="chim-pen-inv-text-box" data-role="title-box"></div>
        <div class="chim-pen-inv-text" data-role="title-text">침탄존 펜</div>
        <div class="chim-pen-pv-text" data-role="pv-text">현재값 :</div>
        <div class="chim-pen-pv" data-role="pv-value">0</div>
        <div class="hz6" data-role="pv-unit">Hz</div>
        <div class="chim-pen-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="chim-pen-out-a" data-role="outa-value">0</div>
        <div class="a3" data-role="outa-unit">A</div>
        <div class="chim-pen-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="chim-pen-out-v" data-role="outv-value">0</div>
        <div class="v3" data-role="outv-unit">V</div>
      </div>

      <div class="diff-pen">
        <img class="diff-pen-inv" data-role="card-img" src="/DHT/image/inv/diff-pen-inv0.png" />
        <div class="diff-pen-inv-text-box" data-role="title-box"></div>
        <div class="diff-pen-inv-text" data-role="title-text">확산존 펜</div>
        <div class="diff-pen-pv-text" data-role="pv-text">현재값 :</div>
        <div class="diff-pen-pv" data-role="pv-value">0</div>
        <div class="hz10" data-role="pv-unit">Hz</div>
        <div class="diff-pen-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="diff-pen-out-a" data-role="outa-value">0</div>
        <div class="a5" data-role="outa-unit">A</div>
        <div class="diff-pen-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="diff-pen-out-v" data-role="outv-value">0</div>
        <div class="v5" data-role="outv-unit">V</div>
      </div>

      <div class="crack-pen-1">
        <img class="crack-pen-inv-1" data-role="card-img" src="/DHT/image/inv/crack-pen-inv-10.png" />
        <div class="crack-pen-inv-text-box-1" data-role="title-box"></div>
        <div class="crack-pen-inv-text-1" data-role="title-text">균열 1존 펜</div>
        <div class="crack-pen-pv-text-1" data-role="pv-text">현재값 :</div>
        <div class="crack-pen-pv-1" data-role="pv-value">0</div>
        <div class="hz12" data-role="pv-unit">Hz</div>
        <div class="crack-pen-out-a-text-1" data-role="outa-text">출력값 :</div>
        <div class="crack-pen-out-a-1" data-role="outa-value">0</div>
        <div class="a6" data-role="outa-unit">A</div>
        <div class="crack-pen-out-v-text-1" data-role="outv-text">출력값 :</div>
        <div class="crack-pen-out-v-1" data-role="outv-value">0</div>
        <div class="v6" data-role="outv-unit">V</div>
      </div>

      <div class="crack-pen-2">
        <img class="crack-pen-inv-2" data-role="card-img" src="/DHT/image/inv/crack-pen-inv-20.png" />
        <div class="crack-pen-inv-text-box-2" data-role="title-box"></div>
        <div class="crack-pen-inv-text-2" data-role="title-text">균열 2존 펜</div>
        <div class="crack-pen-pv-text-2" data-role="pv-text">현재값 :</div>
        <div class="crack-pen-pv-2" data-role="pv-value">0</div>
        <div class="hz14" data-role="pv-unit">Hz</div>
        <div class="crack-pen-out-a-text-2" data-role="outa-text">출력값 :</div>
        <div class="crack-pen-out-a-2" data-role="outa-value">0</div>
        <div class="a7" data-role="outa-unit">A</div>
        <div class="crack-pen-out-v-text-2" data-role="outv-text">출력값 :</div>
        <div class="crack-pen-out-v-2" data-role="outv-value">0</div>
        <div class="v7" data-role="outv-unit">V</div>
      </div>

      <div class="oil-agi-pen">
        <img class="oil-agi-inv" data-role="card-img" src="/DHT/image/inv/oil-agi-inv0.png" />
        <div class="oil-agi-inv-text-box" data-role="title-box"></div>
        <div class="oil-agi-inv-text" data-role="title-text">유조 아지테이터</div>
        <div class="oil-agi-pen-pv-text" data-role="pv-text">현재값 :</div>
        <div class="oil-agi-pen-pv" data-role="pv-value">0</div>
        <div class="hz16" data-role="pv-unit">Hz</div>
        <div class="oil-agi-pen-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="oil-agi-pen-out-a" data-role="outa-value">0</div>
        <div class="a8" data-role="outa-unit">A</div>
        <div class="oil-agi-pen-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="oil-agi-pen-out-v" data-role="outv-value">0</div>
        <div class="v8" data-role="outv-unit">V</div>
      </div>

      <div class="agi2-pen">
        <img class="agi2-inv" data-role="card-img" src="/DHT/image/inv/oil-agi-inv0.png" />
        <div class="agi2-inv-text-box" data-role="title-box"></div>
        <div class="agi2-inv-text" data-role="title-text">아지테이터</div>
        <div class="agi2-pen-pv-text" data-role="pv-text">현재값 :</div>
        <div class="agi2-pen-pv" data-role="pv-value">0</div>
        <div class="hz8" data-role="pv-unit">Hz</div>
        <div class="agi2-pen-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="agi2-pen-out-a" data-role="outa-value">0</div>
        <div class="a4" data-role="outa-unit">A</div>
        <div class="agi2-pen-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="agi2-pen-out-v" data-role="outv-value">0</div>
        <div class="v4" data-role="outv-unit">V</div>
      </div>

      <div class="roll-inv-box"></div>
      <div class="roll-inv-text-box"></div>
    <div class="roll-inv-text">롤러 인버터 설정</div>

      <div class="pre-roll">
        <img class="pre-roll-inv" data-role="card-img" src="/DHT/image/inv/pre-roll-inv0.png" />
        <div class="pre-roll-inv-text-box" data-role="title-box"></div>
        <div class="pre-roll-inv-text" data-role="title-text">예열로 롤러</div>
        <div class="pre-roll-inv-pv-text" data-role="pv-text">현재값 :</div>
        <div class="pre-roll-inv-pv" data-role="pv-value">0</div>
        <div class="hz18" data-role="pv-unit">Hz</div>
        <div class="pre-roll-inv-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="pre-roll-inv-out-a" data-role="outa-value">0</div>
        <div class="a9" data-role="outa-unit">A</div>
        <div class="pre-roll-inv-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="pre-roll-inv-out-v" data-role="outv-value">0</div>
        <div class="v9" data-role="outv-unit">V</div>
      </div>

      <div class="hit1-1-roll">
        <img class="hit1-1-roll-inv" data-role="card-img" src="/DHT/image/inv/hit-roll-inv0.png" />
        <div class="hit1-1-roll-inv-text-box" data-role="title-box" data-variant="wide"></div>
        <div class="hit1-1-roll-inv-text" data-role="title-text" data-variant="sm">가열1-1존 롤러</div>
        <div class="hit1-1-roll-inv-pv-text" data-role="pv-text">현재값 :</div>
        <div class="hit1-1-roll-inv-pv" data-role="pv-value">0</div>
        <div class="hz20" data-role="pv-unit">Hz</div>
        <div class="hit1-1-roll-inv-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="hit1-1-roll-inv-out-a" data-role="outa-value">0</div>
        <div class="a10" data-role="outa-unit">A</div>
        <div class="hit1-1-roll-inv-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="hit1-1-roll-inv-out-v" data-role="outv-value">0</div>
        <div class="v10" data-role="outv-unit">V</div>
      </div>

      <div class="hit1-2-roll">
        <img class="hit1-2-roll-inv" data-role="card-img" src="/DHT/image/inv/hit-roll-inv0.png" />
        <div class="hit1-2-roll-inv-text-box" data-role="title-box" data-variant="wide"></div>
        <div class="hit1-2-roll-inv-text" data-role="title-text" data-variant="sm">가열1-2존 롤러</div>
        <div class="hit1-2-roll-inv-pv-text" data-role="pv-text">현재값 :</div>
        <div class="hit1-2-roll-inv-pv" data-role="pv-value">0</div>
        <div class="hz30" data-role="pv-unit">Hz</div>
        <div class="hit1-2-roll-inv-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="hit1-2-roll-inv-out-a" data-role="outa-value">0</div>
        <div class="a15" data-role="outa-unit">A</div>
        <div class="hit1-2-roll-inv-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="hit1-2-roll-inv-out-v" data-role="outv-value">0</div>
        <div class="v15" data-role="outv-unit">V</div>
      </div>

      <div class="chim-roll">
        <img class="chim-roll-inv" data-role="card-img" src="/DHT/image/inv/chim-roll-inv0.png" />
        <div class="chin-roll-inv-text-box" data-role="title-box"></div>
        <div class="chin-roll-inv-text" data-role="title-text">침탄존 롤러</div>
        <div class="chim-roll-inv-pv-text" data-role="pv-text">현재값 :</div>
        <div class="chim-roll-inv-pv" data-role="pv-value">0</div>
        <div class="hz22" data-role="pv-unit">Hz</div>
        <div class="chim-roll-inv-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="chim-roll-inv-out-a" data-role="outa-value">0</div>
        <div class="a11" data-role="outa-unit">A</div>
        <div class="chim-roll-inv-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="chim-roll-inv-out-v" data-role="outv-value">0</div>
        <div class="v11" data-role="outv-unit">V</div>
      </div>

      <div class="diff-roll">
        <img class="diff-roll-inv" data-role="card-img" src="/DHT/image/inv/diff-roll-inv0.png" />
        <div class="diff-roll-inv-text-box" data-role="title-box"></div>
        <div class="diff-roll-inv-text" data-role="title-text">확산존 롤러</div>
        <div class="diff-roll-inv-pv-text" data-role="pv-text">현재값 :</div>
        <div class="diff-roll-inv-pv" data-role="pv-value">0</div>
        <div class="hz24" data-role="pv-unit">Hz</div>
        <div class="diff-roll-inv-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="diff-roll-inv-out-a" data-role="outa-value">0</div>
        <div class="a12" data-role="outa-unit">A</div>
        <div class="diff-roll-inv-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="diff-roll-inv-out-v" data-role="outv-value">0</div>
        <div class="v12" data-role="outv-unit">V</div>
      </div>

      <div class="crack-roll-1">
        <img class="crack-roll-inv-1" data-role="card-img" src="/DHT/image/inv/crack-roll-inv-10.png" />
        <div class="crack-roll-inv-text-box-1" data-role="title-box"></div>
        <div class="crack-roll-inv-text-1" data-role="title-text">균열 1존 롤러</div>
        <div class="crack-roll-inv-pv-text-1" data-role="pv-text">현재값 :</div>
        <div class="crack-roll-inv-pv-1" data-role="pv-value">0</div>
        <div class="hz26" data-role="pv-unit">Hz</div>
        <div class="crack-roll-inv-out-a-text-1" data-role="outa-text">출력값 :</div>
        <div class="crack-roll-inv-out-a-1" data-role="outa-value">0</div>
        <div class="a13" data-role="outa-unit">A</div>
        <div class="crack-roll-inv-out-v-text-1" data-role="outv-text">출력값 :</div>
        <div class="crack-roll-inv-out-v-1" data-role="outv-value">0</div>
        <div class="v13" data-role="outv-unit">V</div>
      </div>

      <div class="crack-roll-2">
        <img class="crack-roll-inv-2" data-role="card-img" src="/DHT/image/inv/crack-roll-inv-20.png" />
        <div class="crack-roll-inv-text-box-2" data-role="title-box"></div>
        <div class="crack-roll-inv-text-2" data-role="title-text">균열 2존 롤러</div>
        <div class="crack-roll-inv-pv-text-2" data-role="pv-text">현재값 :</div>
        <div class="crack-roll-inv-pv-2" data-role="pv-value">0</div>
        <div class="hz28" data-role="pv-unit">Hz</div>
        <div class="crack-roll-inv-out-a-text-2" data-role="outa-text">출력값 :</div>
        <div class="crack-roll-inv-out-a-2" data-role="outa-value">0</div>
        <div class="a14" data-role="outa-unit">A</div>
        <div class="crack-roll-inv-out-v-text-2" data-role="outv-text">출력값 :</div>
        <div class="crack-roll-inv-out-v-2" data-role="outv-value">0</div>
        <div class="v14" data-role="outv-unit">V</div>
      </div>

      <div class="spare-roll">
        <img class="spare-roll-inv" data-role="card-img" src="/DHT/image/inv/pre-roll-inv0.png" />
        <div class="spare-roll-inv-text-box" data-role="title-box" data-variant="wide"></div>
        <div class="spare-roll-inv-text" data-role="title-text" data-variant="sm">Spare 인버터</div>
        <div class="spare-roll-inv-pv-text" data-role="pv-text">현재값 :</div>
        <div class="spare-roll-inv-pv" data-role="pv-value">0</div>
        <div class="hz32" data-role="pv-unit">Hz</div>
        <div class="spare-roll-inv-out-a-text" data-role="outa-text">출력값 :</div>
        <div class="spare-roll-inv-out-a" data-role="outa-value">0</div>
        <div class="a16" data-role="outa-unit">A</div>
        <div class="spare-roll-inv-out-v-text" data-role="outv-text">출력값 :</div>
        <div class="spare-roll-inv-out-v" data-role="outv-value">0</div>
        <div class="v16" data-role="outv-unit">V</div>
      </div>

    </div>

<script>

//ez_scada foldertag API(WORD값) 폴링 - folderId: 9 = 인버터 전체값
//통신 끊김/실패 시 마지막 값에 멈추지 않고 0으로 표시
$(document).ready(function() {
	pollFolderWordTags(9, 1000);
});

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

function value(keys, value){
	$("."+keys).text(value);
}

</script>
</body>
</html>
