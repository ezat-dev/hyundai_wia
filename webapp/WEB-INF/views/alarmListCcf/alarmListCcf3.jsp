<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>html, body { height: 100%; overflow: hidden; margin: 0; padding: 0; }</style>
	<jsp:include page="../include/pluginpage.jsp"/>
	<title>알람</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>

  <div class="wia-page wia-alarmlist-page">
    <div class="wia-page-header">
      <div>
        <div class="wia-page-title">알람</div>
        <div class="wia-page-sub">연속로(CCF) 실시간 알람 현황 · 3 / 3 페이지</div>
      </div>
      <div class="wia-toolbar">
        <button class="wia-btn-outline" onclick="goToIndex(2)">← 이전 페이지</button>
      </div>
    </div>
    <div class="wia-card">
      <div class="wia-alarm-grid">
        <div class="B8D2 wia-alarm-chip">가열존-2 로내롤러 차단기 OFF</div>
        <div class="B8D3 wia-alarm-chip">침탄존 로내롤러 차단기 OFF</div>
        <div class="B8D4 wia-alarm-chip">확산존 로내롤러 차단기 OFF</div>
        <div class="B8D5 wia-alarm-chip">균열1존 로내롤러 차단기 OFF</div>
        <div class="B8D6 wia-alarm-chip">균열2존 로내롤러 차단기 OFF</div>
        <div class="B8D7 wia-alarm-chip">유조열교환기펌프-1 차단기 OFF</div>
        <div class="B8D8 wia-alarm-chip">유조열교환기펌프-2 차단기 OFF</div>
        <div class="B8D9 wia-alarm-chip">장입스톡 장입롤러 차단기 OFF</div>
        <div class="B8DA wia-alarm-chip">장입스톡 리트리버 차단기 OFF</div>
        <div class="B8DB wia-alarm-chip">장입스톡 추출롤러 차단기 OFF</div>
        <div class="B8DC wia-alarm-chip">장입스톡 리프트롤러 차단기 OFF</div>
        <div class="B8DD wia-alarm-chip">예열로 입구1 롤러 차단기 OFF</div>
        <div class="B8DE wia-alarm-chip">예열로 입구2 롤러 차단기 OFF</div>
        <div class="B8DF wia-alarm-chip">가열존 장입롤러 차단기 OFF</div>
        <div class="B8E0 wia-alarm-chip">침탄존 장입롤러 차단기 OFF</div>
        <div class="B8E1 wia-alarm-chip">균열존 장입롤러 차단기 OFF</div>
        <div class="B8E2 wia-alarm-chip">유조 입구문 모터 차단기 OFF</div>
        <div class="B8E3 wia-alarm-chip">유조 E/V 롤러 차단기 OFF</div>
        <div class="B8E4 wia-alarm-chip">유조 출구롤러 차단기 OFF</div>
        <div class="B8E5 wia-alarm-chip">제어반 판넬 에어컨 차단기 OFF</div>
        <div class="B8E6 wia-alarm-chip">배전반 판넬 에어컨 차단기 OFF</div>
        <div class="B8E7 wia-alarm-chip">O2 판넬 전원 차단기 OFF</div>
        <div class="B8E8 wia-alarm-chip">예열로 로내롤러 모터팬 차단기 OFF</div>
        <div class="B8E9 wia-alarm-chip">가열-1,2존 로내롤러 모터팬 차단기 OFF</div>
        <div class="B8EA wia-alarm-chip">균열1,2존 로내롤러 모터팬 차단기 OFF</div>
        <div class="B8EB wia-alarm-chip">예열로 로내롤러 브레이크 MS 이상</div>
        <div class="B8EC wia-alarm-chip">가열존-1 로내롤러 브레이크 MS 이상</div>
        <div class="B8ED wia-alarm-chip">가열존-2 로내롤러 브레이크 MS 이상</div>
        <div class="B8EE wia-alarm-chip">균열1존 로내롤러 브레이크 MS 이상</div>
        <div class="B8EF wia-alarm-chip">균열2존 로내롤러 브레이크 MS 이상</div>
        <div class="B8F0 wia-alarm-chip">침탄존 장입롤러 브레이크 MS 이상</div>
        <div class="B8F1 wia-alarm-chip">균열존 장입롤러 브레이크 MS 이상</div>
        <div class="B8F2 wia-alarm-chip">유조열교환기 펌프1 MS이상</div>
        <div class="B8F3 wia-alarm-chip">유조열교환기 펌프2 MS이상</div>
        <div class="B8F4 wia-alarm-chip">장입스톡 장입롤러 MS이상</div>
        <div class="B8F5 wia-alarm-chip">장입스톡 리트리버 MS이상</div>
        <div class="B8F6 wia-alarm-chip">장입스톡 추출롤러 MS이상</div>
        <div class="B8F7 wia-alarm-chip">장입스톡 리프트롤러 MS이상</div>
        <div class="B8F8 wia-alarm-chip">예열로 입구1 롤러 MS이상</div>
        <div class="B8F9 wia-alarm-chip">예열로 입구2 롤러 MS이상</div>
        <div class="B8FA wia-alarm-chip">가열존 장입롤러 MS이상</div>
        <div class="B8FB wia-alarm-chip">침탄존 장입롤러 MS이상</div>
        <div class="B8FC wia-alarm-chip">균열존 장입롤러 MS이상</div>
        <div class="B8FD wia-alarm-chip">유조 입구도어 MS이상</div>
        <div class="B8FE wia-alarm-chip">유조 로내롤러 MS이상</div>
        <div class="B8FF wia-alarm-chip">유조 출구롤러 MS이상</div>
      </div>
    </div>
  </div>

	<div class="wia-modal-backdrop" id="modal" style="display: none;">
        <div class="wia-modal">
			<form action="/DHT/alarmListCcf3/upload" method="post"
					enctype="multipart/form-data" id="alarmForm">
				<div class="wia-modal-header">
					<div class="wia-modal-header-title popup-beader"></div>
					<button type="button" class="wia-modal-close" onclick="modalClose();">&times;</button>
				</div>
				<div class="wia-modal-body">
					<div>
						<div class="wia-modal-col-title frame-1"></div>
						<textarea name="ac_comment" id="ac_comment" placeholder="코멘트를 입력하세요"></textarea>
					</div>
					<div>
					    <div class="wia-modal-col-title">첨부파일</div>
					    <div class="button-container">
					        <button id="photoButton" class="wia-toggle-btn" type="button">이미지</button>
					        <button id="pdfButton" class="wia-toggle-btn" type="button">PDF</button>
					    </div>

					    <div id="photoContent" class="content-section">
							    <label for="fileInput" class="wia-file-label file-label">사진파일 선택</label>
							    <input type="file" name="fileInput" accept="image/*" required id="fileInput" class="file-input" />
					        	<img id="imagePreview" name="imagePreview" style="display:none; max-width: 100%; margin-top: 10px; border-radius:8px;" />
					        	<div id="imagePreviewEmpty" class="wia-preview-empty">등록된 이미지가 없습니다</div>
					    </div>

					    <div id="pdfContent" class="content-section" style="display: none;">
					            <label for="pdfInput" class="wia-file-label file-label">PDF 파일 선택</label>
					            <input type="file" name="pdfInput" accept="application/pdf" required id="pdfInput" class="file-input" />
								<iframe id="pdfPreview" name="pdfPreview" src="" style="display:none; margin-top:10px; border:1px solid #e5e7eb; border-radius:8px;" width="100%" height="300"></iframe>
								<div id="pdfPreviewEmpty" class="wia-preview-empty">등록된 PDF가 없습니다</div>
					    </div>
					</div>
				</div>
			    <input type="text" name="ai_webdir" class="ai_webdir" style="display:none;"/>
			    <input type="text" name="ai_webclass" class="ai_webclass" style="display:none;" />
			    <input type="text" name="ai_plcaddr" class="ai_plcaddr" style="display:none;" />
			    <div class="wia-modal-footer">
			    	<button type="button" class="wia-btn-outline" onclick="modalClose();">닫기</button>
			    	<button type="button" class="wia-btn" onclick="updateComment()">수정</button>
			    	<button type="button" class="wia-btn" onclick="saveComment()">저장</button>
			    </div>
			</form>
        </div>
    </div>

<script>
	//전역변수
	var acTag = $(".frame-1").val();
	var alarmInterval;
	var className;
	var uploadImgFileName;
	var uploadPdfFileName;

	//로드
	$(document).ready(function() {
		$("#photoContent").css("display","block");
		$("#photoButton").addClass("active");

		getAlarmText();
		ccfAlarmListView();
		alarmInterval = setInterval("ccfAlarmListView()", 1000);

		pollAlarmBitTags(25, 1000);
	});

	//ez_scada foldertag API(BIT값) 폴링 - folderId: 25 = 알람(B800~B8FF)
	//신호=1일 때 is-active 클래스 토글(빨간 배경+노란 폰트는 common_style.jsp CSS에서 처리)
	function pollAlarmBitTags(folderId, intervalMs){
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
					c(tag.name, on);
				});
			}).always(function(){
				setTimeout(tick, intervalMs);
			});
		}
		tick();
	}

//이벤트

	$("#fileInput").change(function(event){
        const file = event.target.files[0];
        if(file){
            const reader = new FileReader();
            reader.onload = function(e) {

            	$("#imagePreview").attr("src",e.target.result);
            	$("#imagePreview").css("display","block");
            	$("#imagePreviewEmpty").css("display","none");
            	uploadImgFileName = e.target.result;
            };
            reader.readAsDataURL(file);
        }
	});

	$("#pdfInput").change(function(event){
        const file = event.target.files[0];
        if(file){
            const reader = new FileReader();
            reader.onload = function(e) {

            	$("#pdfPreview").attr("src",e.target.result);
            	$("#pdfPreview").css("display","block");
            	$("#pdfPreviewEmpty").css("display","none");
            	uploadImgFileName = e.target.result;
            };
            reader.readAsDataURL(file);
        }
	});

	$("#photoButton").on("click",function(){
		$("#photoContent").css("display","block");
		$("#pdfContent").css("display","none");
		$("#photoButton").addClass("active");
		$("#pdfButton").removeClass("active");
	});

	$("#pdfButton").on("click",function(){
		$("#photoContent").css("display","none");
		$("#pdfContent").css("display","block");
		$("#photoButton").removeClass("active");
		$("#pdfButton").addClass("active");
	});

	$('.wia-alarm-chip').on("click",function(ev){
		className = ev.currentTarget.className.replace("wia-alarm-chip","").trim();
		modalOpen();
		ccfALarmListPopup();
	});

//함수
    function goToIndex(page) {
        window.location.href = '/DHT/alarmListCcf' + page;
    }

    //OPC값 알람 조회
    function ccfAlarmListView(){
		$.ajax({
			url:"/DHT/alarmListCcf3/view",
			type:"post",
			dataType:"json",
			success:function(result){
				var data = result.multiValues;

	            for(let key in data){
	            	for(let keys in data[key]){
	            		var d = data[key];

						if(d[keys].action == "c"){
							c(keys, d[keys].value)
						}
	            	}
	            }
			}
		});
	}

	function c(keys, value){
		if(value == true){
			$("."+keys).addClass("is-active");
		}else{
			$("."+keys).removeClass("is-active");
		}
	}

	function getAlarmText(){
		$.ajax({
			url:"/DHT/alarmListCcf3/alarmData",
			type:"post",
			dataType:"json",
			data:{},
			success:function(result){
				var data = result.data;

	            for(let key in data){
	            	var inText = 0;

	            	$("."+data[key].ai_webclass).text(data[key].ai_plcname);

	            	var div = "<div class='check-icon check-icon--apply-origin'></div>";
	            	if(data[key].ac_count > 0){
	            		$("."+data[key].ai_webclass).append(div);
	            	}
	            }
			}
		});
	}


	//알람팝업 데이터 조회
	function ccfALarmListPopup(){
		var alarmGroup = "alarm13";
		var alarmClass = className;

		$.ajax({
			url:"/DHT/alarmListCcf3/alarmPopup",
			type:"post",
			dataType:"json",
			data:{
				"alarmGroup":alarmGroup,
				"alarmClass":alarmClass
			},
			success:function(result){

				var data = result.data;

				$(".popup-beader").text("PLC ADDRESS : "+data.ai_plcaddr);
				$(".ai_webdir").val(data.ai_webdir);
				$(".ai_webclass").val(data.ai_webclass);
				$(".ai_plcaddr").val(data.ai_plcaddr);
				$(".frame-1").text(data.ai_plcname);
				$("#ac_comment").val(data.ac_comment);

				if(data.ac_filename != null && data.ac_filename != ''){
					$("#imagePreview").attr("src","/DHT/fileUploads/img/"+data.ac_filename).css("display","block");
					$("#imagePreviewEmpty").css("display","none");
				}else{
					$("#imagePreview").attr("src","").css("display","none");
					$("#imagePreviewEmpty").css("display","flex");
				}
				if(data.ac_pdf_filename != null && data.ac_pdf_filename != ''){
					$("#pdfPreview").attr("src","/DHT/fileUploads/pdf/"+data.ac_pdf_filename).css("display","block");
					$("#pdfPreviewEmpty").css("display","none");
				}else{
					$("#pdfPreview").attr("src","").css("display","none");
					$("#pdfPreviewEmpty").css("display","flex");
				}
			}
		});
	}


	//코멘트 저장
	function saveComment(){
		var alarmData = new FormData($("#alarmForm")[0]);
		$.ajax({
			url:"/DHT/alarmListCcf3/saveComment",
			enctype:"multipart/form-data",
			type:"post",
			contentType: false,
			processData: false,
			dataType: "json",
			data:alarmData,
			success:function(result){
				$("#alarmForm")[0].reset();

				alert("등록되었습니다.");
				modalClose();

			}
		});
	}

	//코멘트 수정
	function updateComment(){
		var alarmData = new FormData($("#alarmForm")[0]);
		$.ajax({
			url:"/DHT/alarmListCcf3/updateComment",
			enctype:"multipart/form-data",
			type:"post",
			contentType: false,
			processData: false,
			dataType: "json",
			data:alarmData,
			success:function(result){
				var data = result.data;

				if(data == "updateComment"){
					$("#alarmForm")[0].reset();

					alert("수정되었습니다.");
					modalClose();
				}else if(data == "noSaveComment"){
					alert("코멘트 등록 후 수정바랍니다.");

					return;
				}
			}
		});
	}
	//모달 열림
	function modalOpen(){
		$("#modal").css("display","flex");
	}


	//모달 닫힘
	function modalClose(){
		$("#modal").css("display","none");

		$("#alarmForm")[0].reset();
	}
</script>

</body>
</html>