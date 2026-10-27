<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../include/pluginpage.jsp"/>
<style>
    * { box-sizing: border-box; }
    .wia-tabulator-wrap .tabulator { border: none; font-family: inherit; font-size: 13px; }
    .wia-tabulator-wrap .tabulator-header { background: #f8fafc; border-bottom: 2px solid #e5e7eb; }
    .wia-tabulator-wrap .tabulator-col { background: #f8fafc; border-right: 1px solid #eef0f2; }
    .wia-tabulator-wrap .tabulator-col-title { color: #4b5563; font-weight: 700; }
    .wia-tabulator-wrap .tabulator-row { border-bottom: 1px solid #eef0f2; }
    .wia-tabulator-wrap .tabulator-row.tabulator-row-even { background: #fafbfc; }
    .wia-tabulator-wrap .tabulator-row:hover { background: #eff6ff !important; }
    .rh-del-btn {
      padding: 4px 10px; border-radius: 6px; border: 1px solid #fca5a5; background: #fff;
      color: #dc2626; font-size: 12px; font-weight: 700; cursor: pointer;
    }
    .rh-del-btn:hover { background: #fef2f2; }
    .rh-field { margin-bottom: 14px; }
    .rh-field label { display: block; font-size: 12px; font-weight: 700; color: #374151; margin-bottom: 5px; }
    .rh-field input, .rh-field textarea {
      width: 100%; padding: 8px 10px; border: 1px solid #d1d5db; border-radius: 6px;
      font-size: 13px; font-family: inherit; outline: none; box-sizing: border-box; resize: vertical;
    }
    .rh-field input:focus, .rh-field textarea:focus { border-color: #3b82f6; }
    .rh-row2 { display: grid; grid-template-columns: 1fr 1fr; gap: 14px; }
  </style>
  <title>설비수리이력</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
  <div class="wia-page wia-page-wrap">
    <div class="wia-page-header">
      <div>
        <div class="wia-page-title">설비수리이력</div>
        <div class="wia-page-sub">연속로(CCF) 설비 수리 이력 조회 / 등록</div>
      </div>
      <button class="wia-btn" onclick="openRepairModal()">+ 수리이력 등록</button>
    </div>
    <div class="wia-card">
      <div class="wia-toolbar">
        <input type="date" id="startDate" placeholder="시작 날짜">
        <span>~</span>
        <input type="date" id="endDate" placeholder="종료 날짜">
        <button class="wia-btn" onclick="loadRepairHistoryCcf()">조회</button>
      </div>
      <div class="wia-tabulator-wrap">
        <div id="repairHistoryList"></div>
      </div>
    </div>
  </div>

  <!-- 수리이력 등록/수정 모달 -->
  <div class="wia-modal-backdrop" id="repairModal" style="display:none;">
    <div class="wia-modal" style="width:min(560px,94vw);">
      <div class="wia-modal-header">
        <div class="wia-modal-header-title" id="repairModalTitle">설비수리이력 등록</div>
        <button type="button" class="wia-modal-close" onclick="closeRepairModal()">&times;</button>
      </div>
      <div class="wia-modal-body" style="display:block;">
        <input type="hidden" id="repair_idx" value="0">
        <div class="rh-row2">
          <div class="rh-field">
            <label>수리일자</label>
            <input type="date" id="repair_date">
          </div>
          <div class="rh-field">
            <label>작업자</label>
            <input type="text" id="worker_name" maxlength="50" placeholder="작업자명">
          </div>
        </div>
        <div class="rh-field">
          <label>설비명</label>
          <input type="text" id="equip_name" maxlength="100" placeholder="예: 가열존 팬 모터, 예열로 출입문 실린더 등">
        </div>
        <div class="rh-field">
          <label>고장 증상</label>
          <textarea id="symptom" maxlength="500" rows="3" placeholder="고장 증상을 입력하세요"></textarea>
        </div>
        <div class="rh-field">
          <label>수리 내용</label>
          <textarea id="repair_content" maxlength="1000" rows="4" placeholder="수리 내용을 입력하세요"></textarea>
        </div>
      </div>
      <div class="wia-modal-footer">
        <button type="button" class="rh-del-btn" id="repairDeleteBtn" style="display:none;margin-right:auto;" onclick="deleteRepairHistoryFromModal()">삭제</button>
        <button type="button" class="wia-btn-outline" onclick="closeRepairModal()">취소</button>
        <button type="button" class="wia-btn" onclick="saveRepairHistory()">저장</button>
      </div>
    </div>
  </div>

<script>
var base = '${pageContext.request.contextPath}';
var repairHistoryTable;

//로드
$(function(){
	var now = new Date();
	$("#endDate").val(fmtDate(now));

	var before = new Date();
	before.setMonth(before.getMonth() - 1);
	$("#startDate").val(fmtDate(before));

	loadRepairHistoryCcf();
});

function fmtDate(d){
	var p = function(n){ return (n<10?"0":"")+n; };
	return d.getFullYear()+"-"+p(d.getMonth()+1)+"-"+p(d.getDate());
}
function esc(s){ return String(s==null?'':s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;'); }

function loadRepairHistoryCcf(){
	var sdate = $("#startDate").val();
	var edate = $("#endDate").val();
	if(!sdate || !edate){ return; }

	repairHistoryTable = new Tabulator("#repairHistoryList", {
		height: "550px",
		layout: "fitColumns",
		selectable: false,
		tooltips: true,
		reactiveData: true,
		headerHozAlign: "center",
		ajaxConfig: "POST",
		ajaxLoader: false,
		ajaxURL: base + "/repairHistoryCcf/list",
		ajaxProgressiveLoad: "scroll",
		ajaxParams: { "sdateTime": sdate, "edateTime": edate },
		placeholder: "조회된 수리이력이 없습니다.",
		paginationSize: 20,
		ajaxResponse: function(url, params, response){
			return response; //{data:[], last_page:N} 형태 그대로 반환 (ajaxProgressiveLoad가 이 형태를 기대함)
		},
		columns: [
			{title:"수리일자", field:"repair_date", sorter:"string", width:110, hozAlign:"center"},
			{title:"설비명", field:"equip_name", sorter:"string", width:220, hozAlign:"center"},
			{title:"작업자", field:"worker_name", sorter:"string", width:100, hozAlign:"center"},
			{title:"고장 증상", field:"symptom", sorter:"string", hozAlign:"left"},
			{title:"수리 내용", field:"repair_content", sorter:"string", hozAlign:"left"},
			{title:"등록자", field:"reg_user", sorter:"string", width:100, hozAlign:"center"},
			{title:"등록일시", field:"reg_date", sorter:"string", width:150, hozAlign:"center"}
		],
		rowDblClick: function(e, row){
			editRepairModal(row.getData());
		}
	});
}

function openRepairModal(){
	$("#repairModalTitle").text("설비수리이력 등록");
	$("#repair_idx").val(0);
	$("#repair_date").val(fmtDate(new Date()));
	$("#worker_name").val('');
	$("#equip_name").val('');
	$("#symptom").val('');
	$("#repair_content").val('');
	$("#repairDeleteBtn").css("display","none");
	$("#repairModal").css("display","flex");
}

function editRepairModal(data){
	$("#repairModalTitle").text("설비수리이력 수정");
	$("#repair_idx").val(data.repair_idx);
	$("#repair_date").val(data.repair_date);
	$("#worker_name").val(data.worker_name);
	$("#equip_name").val(data.equip_name);
	$("#symptom").val(data.symptom);
	$("#repair_content").val(data.repair_content);
	$("#repairDeleteBtn").css("display","inline-block");
	$("#repairModal").css("display","flex");
}

function closeRepairModal(){
	$("#repairModal").css("display","none");
}

function saveRepairHistory(){
	var data = {
		repair_idx: parseInt($("#repair_idx").val(), 10) || 0,
		repair_date: $("#repair_date").val(),
		equip_name: $("#equip_name").val().trim(),
		worker_name: $("#worker_name").val().trim(),
		symptom: $("#symptom").val().trim(),
		repair_content: $("#repair_content").val().trim()
	};
	if(!data.repair_date || !data.equip_name || !data.worker_name || !data.repair_content){
		alert("수리일자, 설비명, 작업자, 수리내용은 필수입니다.");
		return;
	}
	$.ajax({
		url: base + "/repairHistoryCcf/save",
		type: "post",
		dataType: "json",
		data: data,
		success: function(res){
			if(res.success){
				alert(data.repair_idx > 0 ? "수정되었습니다." : "등록되었습니다.");
				closeRepairModal();
				loadRepairHistoryCcf();
			}else{
				alert(res.message || "저장에 실패했습니다.");
			}
		}
	});
}

function deleteRepairHistoryFromModal(){
	var repair_idx = parseInt($("#repair_idx").val(), 10) || 0;
	if(!repair_idx) return;
	if(!confirm("이 수리이력을 삭제하시겠습니까?")) return;
	$.ajax({
		url: base + "/repairHistoryCcf/delete",
		type: "post",
		dataType: "json",
		data: { repair_idx: repair_idx },
		success: function(res){
			if(res.success){
				closeRepairModal();
				loadRepairHistoryCcf();
			}else{
				alert(res.message || "삭제에 실패했습니다.");
			}
		}
	});
}
</script>
</body>
</html>
