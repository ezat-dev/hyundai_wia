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
        <div class="wia-page-sub">공통로(CM) 실시간 알람 현황 · 1 / 2 페이지</div>
      </div>
      <div class="wia-toolbar">
        <button class="wia-btn-outline" onclick="goToIndex2();">2 페이지 →</button>
      </div>
    </div>
    <div class="wia-card">
      <div class="wia-alarm-grid">
        <div class="alarm-1 wia-alarm-chip">PLC 배터리 이상</div>
        <div class="alarm-2 wia-alarm-chip">비상정지</div>
        <div class="alarm-3 wia-alarm-chip">세정기 싸이클 이상</div>
        <div class="alarm-4 wia-alarm-chip">소려로 자동운전 이상</div>
        <div class="alarm-5 wia-alarm-chip">출구 스톡콘베어 자동운전 이상</div>
        <div class="alarm-6 wia-alarm-chip">자동대차 싸이클 자동운전 이상</div>
        <div class="alarm-7 wia-alarm-chip">제품 데이터 이상</div>
        <div class="alarm-8 wia-alarm-chip"></div>
        <div class="alarm-9 wia-alarm-chip"></div>
        <div class="alarm-10 wia-alarm-chip"></div>
        <div class="alarm-11 wia-alarm-chip"></div>
        <div class="alarm-12 wia-alarm-chip"></div>
        <div class="alarm-13 wia-alarm-chip">세정기 디핑존 과열 이상</div>
        <div class="alarm-14 wia-alarm-chip">세정기 디핑존 온도 저하 이상</div>
        <div class="alarm-15 wia-alarm-chip">세정기 린스존 과열 이상</div>
        <div class="alarm-16 wia-alarm-chip">세정기 린스존 온도 저하 이상</div>
        <div class="alarm-17 wia-alarm-chip">소려로 1존 과열 이상</div>
        <div class="alarm-18 wia-alarm-chip">소려로 1존 온도 저하 이상</div>
        <div class="alarm-19 wia-alarm-chip">소려로 2존 과열 이상</div>
        <div class="alarm-20 wia-alarm-chip">소려로 2존 온도 저하 이상</div>
        <div class="alarm-21 wia-alarm-chip">소려로 3존 과열 이상</div>
        <div class="alarm-22 wia-alarm-chip">소려로 3존 온도 저하 이상</div>
        <div class="alarm-23 wia-alarm-chip">세정기 디핑존 액면 이상</div>
        <div class="alarm-24 wia-alarm-chip">세정기 린스존 액면 이상</div>
        <div class="alarm-25 wia-alarm-chip">세정기 입구 장입 요청 이상</div>
        <div class="alarm-26 wia-alarm-chip">출구 스톡콘베어 추출 요청 이상</div>
        <div class="alarm-27 wia-alarm-chip">세정기 스프레이 회전기 회전 감지 이상</div>
        <div class="alarm-28 wia-alarm-chip">소려로 1존 팬 회전 감지 이상</div>
        <div class="alarm-29 wia-alarm-chip">소려로 2존 팬 회전 감지 이상</div>
        <div class="alarm-30 wia-alarm-chip">소려로 3존 팬 회전 감지 이상</div>
        <div class="alarm-31 wia-alarm-chip">소려로 장입 롤러 회전 감지 이상</div>
        <div class="alarm-32 wia-alarm-chip">소려로 내부 롤러(1) 회전 감지 이상</div>
        <div class="alarm-33 wia-alarm-chip">소려로 내부 롤러(2) 회전 감지 이상</div>
        <div class="alarm-34 wia-alarm-chip">소려로 추출 롤러 회전 감지 이상</div>
        <div class="alarm-35 wia-alarm-chip">소려로 장입 롤러 광전센서 이상</div>
        <div class="alarm-36 wia-alarm-chip">소려로 로내 롤러(1) 광전센서 이상</div>
        <div class="alarm-37 wia-alarm-chip">소려로 로내 롤러(2) 광전센서 이상</div>
        <div class="alarm-38 wia-alarm-chip">소려로 추출 롤러 광전센서 이상</div>
        <div class="alarm-39 wia-alarm-chip"></div>
        <div class="alarm-40 wia-alarm-chip"></div>
        <div class="alarm-41 wia-alarm-chip">세정기 디핑존 스위핑 펌프 트립</div>
        <div class="alarm-42 wia-alarm-chip">세정기 디핑존 오일스키머 트립</div>
        <div class="alarm-43 wia-alarm-chip">세정기 린스존 스프레이 펌프 트립</div>
        <div class="alarm-44 wia-alarm-chip">세정기 린스존 스윕핑 펌프 트립</div>
        <div class="alarm-45 wia-alarm-chip">세정기 린스존 오일스키머 트립</div>
        <div class="alarm-46 wia-alarm-chip">세정기 린스존 스프레이 노즐 트립</div>
        <div class="alarm-47 wia-alarm-chip">세정기 출구 블로워 트립</div>
        <div class="alarm-48 wia-alarm-chip">소려로 1존 팬 트립</div>
        <div class="alarm-49 wia-alarm-chip">소려로 2존 팬 트립</div>
        <div class="alarm-50 wia-alarm-chip">소려로 3존 팬 트립</div>
        <div class="alarm-51 wia-alarm-chip">세정기 입구 롤러(1) 트립</div>
        <div class="alarm-52 wia-alarm-chip">세정기 입구 롤러(2) 트립</div>
        <div class="alarm-53 wia-alarm-chip">세정기 장입 리트리버 트립</div>
        <div class="alarm-54 wia-alarm-chip">세정기 추출 리트리버 트립</div>
        <div class="alarm-55 wia-alarm-chip">세정기 출구 롤러(1) 트립</div>
        <div class="alarm-56 wia-alarm-chip">세정기 출구 롤러(2) 트립</div>
        <div class="alarm-57 wia-alarm-chip">소려로 입구 롤러(1) 트립</div>
        <div class="alarm-58 wia-alarm-chip">소려로 입구 롤러(2) 트립</div>
        <div class="alarm-59 wia-alarm-chip">소려로 장입 롤러 트립</div>
        <div class="alarm-60 wia-alarm-chip">소려로 로내 롤러(1) 트립</div>
        <div class="alarm-61 wia-alarm-chip">소려로 로내 롤러(2) 트립</div>
        <div class="alarm-62 wia-alarm-chip">소려로 추출 롤러 트립</div>
        <div class="alarm-63 wia-alarm-chip">소려로 출구 롤러 트립</div>
        <div class="alarm-64 wia-alarm-chip">소려로 출구 리프터 롤러 트립</div>
        <div class="alarm-65 wia-alarm-chip">출구 스톡콘베어 입구 롤러 트립</div>
        <div class="alarm-66 wia-alarm-chip">출구 스톡콘베어 리트리버 트립</div>
        <div class="alarm-67 wia-alarm-chip">출구 스톡콘베어 출구 롤러 트립</div>
        <div class="alarm-68 wia-alarm-chip">세정기 상부후드 팬 트립</div>
        <div class="alarm-69 wia-alarm-chip">히터부하 MCCB 트립</div>
        <div class="alarm-70 wia-alarm-chip">세정기 기기 MCCB 트립</div>
        <div class="alarm-71 wia-alarm-chip">소려로 기기 MCCB 트립</div>
        <div class="alarm-72 wia-alarm-chip">출구 스톡콘베어 기기 MCCB 트립</div>
        <div class="alarm-73 wia-alarm-chip">자동대차 메인전원 MCCB 트립</div>
        <div class="alarm-74 wia-alarm-chip">회로 보호기 트립</div>
        <div class="alarm-75 wia-alarm-chip"></div>
        <div class="alarm-76 wia-alarm-chip"></div>
        <div class="alarm-77 wia-alarm-chip">세정기 입구문 & 중간문 동작이상</div>
        <div class="alarm-78 wia-alarm-chip">세정기 디핑존 엘리베이터 동작이상</div>
        <div class="alarm-79 wia-alarm-chip">세정기 출구문 동작이상</div>
        <div class="alarm-80 wia-alarm-chip">세정기 출구챔버 출구문 동작이상</div>
        <div class="alarm-81 wia-alarm-chip">소려로 입구문 동작이상</div>
        <div class="alarm-82 wia-alarm-chip">소려로 출구문 동작이상</div>
        <div class="alarm-83 wia-alarm-chip">세정기 출구챔버 출구문 동작이상</div>
        <div class="alarm-84 wia-alarm-chip">소려로 출구 리프터 동작이상</div>
        <div class="alarm-85 wia-alarm-chip"></div>
        <div class="alarm-86 wia-alarm-chip"></div>
        <div class="alarm-87 wia-alarm-chip"></div>
        <div class="alarm-88 wia-alarm-chip"></div>
        <div class="alarm-89 wia-alarm-chip">세정기 롤러(1) 구동시간 초과 이상</div>
        <div class="alarm-90 wia-alarm-chip">세정기 롤러(2) 구동시간 초과 이상</div>
        <div class="alarm-91 wia-alarm-chip">세정기 장입 리트리버 구동시간 초과 이상</div>
        <div class="alarm-92 wia-alarm-chip">세정기 추출 리트리버 구동시간 초과 이상</div>
        <div class="alarm-93 wia-alarm-chip">세정기 출구 롤러(1) 구동시간 초과 이상</div>
        <div class="alarm-94 wia-alarm-chip">세정기 출구 롤러(2) 구동시간 초과 이상</div>
        <div class="alarm-95 wia-alarm-chip">소려로 롤러(1) 구동시간 초과 이상</div>
        <div class="alarm-96 wia-alarm-chip">소려로 롤러(2) 구동시간 초과 이상</div>
        <div class="alarm-97 wia-alarm-chip">소려로 장입 롤러 구동시간 초과 이상</div>
        <div class="alarm-98 wia-alarm-chip">소려로 로내 롤러(1) 구동시간 초과 이상</div>
        <div class="alarm-99 wia-alarm-chip">소려로 로내 롤러(2) 구동시간 초과 이상</div>
        <div class="alarm-100 wia-alarm-chip">소려로 추출 롤러 구동시간 초과 이상</div>
        <div class="alarm-101 wia-alarm-chip">소려로 출구 롤러 구동시간 초과 이상</div>
        <div class="alarm-102 wia-alarm-chip">소려로 출구 리프터 롤러 구동시간 초과 이상</div>
        <div class="alarm-103 wia-alarm-chip">출구 스톡콘베어 입구 롤러 구동시간 초과 이상</div>
        <div class="alarm-104 wia-alarm-chip">출구 스톡콘베어 리트리버 구동시간 초과 이상</div>
        <div class="alarm-105 wia-alarm-chip">출구 스톡콘베어 출구 롤러 구동시간 초과 이상</div>
      </div>
    </div>
  </div>

	<div class="wia-modal-backdrop" id="modal" style="display: none;">
        <div class="wia-modal">
			<form action="/DHT/alarmListCcf1/upload" method="post"
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
	cmAlarmListView();
	alarmInterval = setInterval("cmAlarmListView()", 1000);
});


//이벤트

$("#fileInput").change(function(event){
    const file = event.target.files[0]; // 선택된 파일 가져오기
    if(file){
        const reader = new FileReader(); // FileReader 객체 생성
        reader.onload = function(e) {

        	$("#imagePreview").attr("src",e.target.result); // 미리보기 이미지 소스 업데이트
        	$("#imagePreview").css("display","block");// 미리보기 보이게
        	$("#imagePreviewEmpty").css("display","none");
        	uploadImgFileName = e.target.result;
        };
        reader.readAsDataURL(file); // 파일을 데이터 URL로 읽기
    }
});

$("#pdfInput").change(function(event){
    const file = event.target.files[0]; // 선택된 파일 가져오기
    if(file){
        const reader = new FileReader(); // FileReader 객체 생성
        reader.onload = function(e) {

        	$("#pdfPreview").attr("src",e.target.result); // 미리보기 이미지 소스 업데이트
        	$("#pdfPreview").css("display","block");// 미리보기 보이게
        	$("#pdfPreviewEmpty").css("display","none");
        	uploadImgFileName = e.target.result;
        };
        reader.readAsDataURL(file); // 파일을 데이터 URL로 읽기
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

$('[class^="alarm-"]').on("click",function(ev){
	className = ev.currentTarget.className.replace("wia-alarm-chip","").trim();
	var v_index = className.indexOf("-")+1;
	var v_length = className.length;

	var v_value = className.substring(v_index,v_length);

	if(v_value <= 105){
		modalOpen();
		cmALarmListPopup();
	}

});


function goToIndex2() {
    window.location.href = '/DHT/alarmListCm2';
}


//OPC값 알람 조회
function cmAlarmListView(){
	$.ajax({
		url:"/DHT/alarmListCm1/view",
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
		url:"/DHT/alarmListCm1/alarmData",
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
function cmALarmListPopup(){
	var alarmGroup = "alarm21";
	var alarmClass = className;

	$.ajax({
		url:"/DHT/alarmListCm1/alarmPopup",
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
		url:"/DHT/alarmListCm1/saveComment",
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
		url:"/DHT/alarmListCm1/updateComment",
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
