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
        <div class="wia-page-sub">연속로(CCF) 실시간 알람 현황 · 1 / 3 페이지</div>
      </div>
      <div class="wia-toolbar">
        <button class="wia-btn-outline" onclick="goToIndex(2)">다음 페이지 →</button>
      </div>
    </div>
    <div class="wia-card">
      <div class="wia-alarm-grid">
        <div class="B800 wia-alarm-chip">PLC 배터리 이상</div>
        <div class="B801 wia-alarm-chip">비상정지 이상</div>
        <div class="B802 wia-alarm-chip">예열로 싸이클 이상</div>
        <div class="B803 wia-alarm-chip">연속로 싸이클 이상</div>
        <div class="B804 wia-alarm-chip">유조 싸이클 이상</div>
        <div class="B805 wia-alarm-chip">제품 데이터 이상</div>
        <div class="B806 wia-alarm-chip">RX가스 공급압력하한</div>
        <div class="B807 wia-alarm-chip">LNG가스 공급압력이상</div>
        <div class="B808 wia-alarm-chip">예열로 버너 MAIN GAS 압력이상</div>
        <div class="B809 wia-alarm-chip">예열로 버너 파이롯트 압력 하한</div>
        <div class="B80A wia-alarm-chip">예열로 버너 AIR 압력 하한</div>
        <div class="B80B wia-alarm-chip">냉각수 공급이상</div>
        <div class="B80C wia-alarm-chip"></div>
        <div class="B80D wia-alarm-chip"></div>
        <div class="B80E wia-alarm-chip"></div>
        <div class="B80F wia-alarm-chip"></div>
        <div class="B810 wia-alarm-chip">예열로 버너 파이롯트 불꽃 꺼짐</div>
        <div class="B811 wia-alarm-chip">예열로 배기변 파이롯트 불꽃 꺼짐</div>
        <div class="B812 wia-alarm-chip">가열존 입구도어 파이롯트 불꽃 꺼짐</div>
        <div class="B813 wia-alarm-chip">가열존 배기변 파이롯트 불꽃 꺼짐</div>
        <div class="B814 wia-alarm-chip">가열존 입구도어 커튼 불꽃 꺼짐</div>
        <div class="B815 wia-alarm-chip">유조 배기변 파이롯트 불꽃 꺼짐</div>
        <div class="B816 wia-alarm-chip">유조 출구도어 파이롯트 불꽃 꺼짐</div>
        <div class="B817 wia-alarm-chip">유조 출구도어 커튼 불꽃 꺼짐</div>
        <div class="B818 wia-alarm-chip"></div>
        <div class="B819 wia-alarm-chip"></div>
        <div class="B81A wia-alarm-chip"></div>
        <div class="B81B wia-alarm-chip"></div>
        <div class="B81C wia-alarm-chip"></div>
        <div class="B81D wia-alarm-chip">유조 수위 레벨 이상(OVER)</div>
        <div class="B81E wia-alarm-chip">유조 수위 레벨 이상(보충)</div>
        <div class="B81F wia-alarm-chip">유조 수위 레벨 이상(히터 OFF)</div>
        <div class="B820 wia-alarm-chip">예열로 과열 이상</div>
        <div class="B821 wia-alarm-chip">예열로 온도 저하 이상</div>
        <div class="B822 wia-alarm-chip">가열존 과열 이상</div>
        <div class="B823 wia-alarm-chip">가열존 온도저하 이상</div>
        <div class="B824 wia-alarm-chip">침탄1존 과열 이상</div>
        <div class="B825 wia-alarm-chip">침탄1존 온도저하 이상</div>
        <div class="B826 wia-alarm-chip">침탄2존 과열 이상</div>
        <div class="B827 wia-alarm-chip">침탄2존 온도저하 이상</div>
        <div class="B828 wia-alarm-chip">확산존 과열 이상</div>
        <div class="B829 wia-alarm-chip">확산존 온도 저하 이상</div>
        <div class="B82A wia-alarm-chip">냉각존 과열 이상</div>
        <div class="B82B wia-alarm-chip">냉각존 온도 저하 이상</div>
        <div class="B82C wia-alarm-chip">균열1존 과열 이상</div>
        <div class="B82D wia-alarm-chip">균열1존 온도 저하 이상</div>
        <div class="B82E wia-alarm-chip">균열2존 과열 이상</div>
        <div class="B82F wia-alarm-chip">균열2존 온도 저하 이상</div>
        <div class="B830 wia-alarm-chip">유조 과열 이상</div>
        <div class="B831 wia-alarm-chip">유조 온도저하 이상</div>
        <div class="B832 wia-alarm-chip">가열존 가스차단신호</div>
        <div class="B833 wia-alarm-chip">가열존 히터OFF신호</div>
        <div class="B834 wia-alarm-chip">침탄1존 가스차단신호</div>
        <div class="B835 wia-alarm-chip">침탄1존 히터OFF신호</div>
        <div class="B836 wia-alarm-chip">침탄2존 가스차단신호</div>
        <div class="B837 wia-alarm-chip">침탄2존 히터OFF신호</div>
        <div class="B838 wia-alarm-chip">확산존 가스차단신호</div>
        <div class="B839 wia-alarm-chip">확산존 히터OFF신호</div>
        <div class="B83A wia-alarm-chip">균열1존 가스차단신호</div>
        <div class="B83B wia-alarm-chip">균열1존 히터OFF신호</div>
        <div class="B83C wia-alarm-chip">균열2존 가스차단신호</div>
        <div class="B83D wia-alarm-chip">균열2존 히터OFF신호</div>
        <div class="B83E wia-alarm-chip"></div>
        <div class="B83F wia-alarm-chip"></div>
        <div class="B840 wia-alarm-chip">침탄존 CP값 이상(상한)</div>
        <div class="B841 wia-alarm-chip">침탄존 CP값 이상(하한)</div>
        <div class="B842 wia-alarm-chip">확산존 CP값 이상(상한)</div>
        <div class="B843 wia-alarm-chip">확산존 CP값 이상(하한)</div>
        <div class="B844 wia-alarm-chip">균열2존 CP값 이상(상한)</div>
        <div class="B845 wia-alarm-chip">균열2존 CP값 이상(하한)</div>
        <div class="B846 wia-alarm-chip"></div>
        <div class="B847 wia-alarm-chip"></div>
        <div class="B848 wia-alarm-chip">가열존 SCR 이상</div>
        <div class="B849 wia-alarm-chip">침탄1존 SCR 이상</div>
        <div class="B84A wia-alarm-chip">침탄2존 SCR 이상</div>
        <div class="B84B wia-alarm-chip">확산존 SCR 이상</div>
        <div class="B84C wia-alarm-chip">냉각존 SCR 이상</div>
        <div class="B84D wia-alarm-chip">균열1존 SCR 이상</div>
        <div class="B84E wia-alarm-chip">균열2존 SCR 이상</div>
        <div class="B84F wia-alarm-chip"></div>
        <div class="B850 wia-alarm-chip">예열로 팬 인버터 이상</div>
        <div class="B851 wia-alarm-chip">가열존 팬 인버터 이상</div>
        <div class="B852 wia-alarm-chip">침탄존 팬 인버터 이상</div>
        <div class="B853 wia-alarm-chip">확산존 팬 인버터 이상</div>
        <div class="B854 wia-alarm-chip">균열1존 팬 인버터 이상</div>
        <div class="B855 wia-alarm-chip">균열2존 팬 인버터 이상</div>
        <div class="B856 wia-alarm-chip">유조 교반기-1 인버터 이상</div>
        <div class="B857 wia-alarm-chip">유조 교반기-2 인버터 이상</div>
        <div class="B858 wia-alarm-chip">예열로 로내롤러 인버터 이상</div>
        <div class="B859 wia-alarm-chip">가열존-1 로내롤러 인버터 이상</div>
        <div class="B85A wia-alarm-chip">가열존-2 로내롤러 인버터 이상</div>
        <div class="B85B wia-alarm-chip">침탄존 로내롤러 인버터 이상</div>
        <div class="B85C wia-alarm-chip">확산존 로내롤러 인버터 이상</div>
        <div class="B85D wia-alarm-chip">균열1존 로내롤러 인버터 이상</div>
        <div class="B85E wia-alarm-chip">균열2존 로내롤러 인버터 이상</div>
        <div class="B85F wia-alarm-chip"></div>
        <div class="B860 wia-alarm-chip">예열로 입구도어 보전스토퍼 점검</div>
        <div class="B861 wia-alarm-chip">예열로 출구도어 보전스토퍼 점검</div>
        <div class="B862 wia-alarm-chip">가열존 입구도어 보전스토퍼 점검</div>
        <div class="B863 wia-alarm-chip">침탄존 입구도어 보전스토퍼 점검</div>
        <div class="B864 wia-alarm-chip">균열1존 입구도어 보전스토퍼 점검</div>
        <div class="B865 wia-alarm-chip">균열2존 입구도어 보전스토퍼 점검</div>
        <div class="B866 wia-alarm-chip"></div>
        <div class="B867 wia-alarm-chip">유조 출구도어 보전스토퍼 점검</div>
        <div class="B868 wia-alarm-chip"></div>
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
			url:"/DHT/alarmListCcf1/view",
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
			url:"/DHT/alarmListCcf1/alarmData",
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
		var alarmGroup = "alarm11";
		var alarmClass = className;

		$.ajax({
			url:"/DHT/alarmListCcf1/alarmPopup",
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
			url:"/DHT/alarmListCcf1/saveComment",
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
			url:"/DHT/alarmListCcf1/updateComment",
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