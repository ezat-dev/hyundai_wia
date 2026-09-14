<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 콘텐츠 페이지(메인 프레임의 iframe 안에서 로드됨) 공통 세션 가드.
     서버 리다이렉트 대신 window.top으로 이동시켜야 iframe 밖으로 탈출해서 로그인 화면이 정상적으로 전체 화면에 뜬다. --%>
<% if (session.getAttribute("user") == null) { %>
<script>window.top.location.href = "<%=request.getContextPath()%>/login";</script>
<% } %>
<%-- 리스트/데이터 화면 공통 디자인 시스템. dongwoo_right 참고 톤(#123478 계열)으로 통일. --%>
<style>
@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");
.wia-page {
  font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto,
    'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
.wia-page-wrap { padding: 20px 24px; background: #f1f5f9; min-height: 100vh; }
.wia-page-header { display: flex; align-items: baseline; justify-content: space-between; margin-bottom: 14px; flex-wrap: wrap; gap: 8px; }
.wia-page-title { font-size: 19px; font-weight: 800; color: #111827; }
.wia-page-sub { font-size: 12px; color: #6b7280; margin-top: 2px; }

.wia-toolbar { display: flex; align-items: center; gap: 10px; margin-bottom: 14px; flex-wrap: wrap; }
.wia-toolbar input[type="date"], .wia-toolbar input[type="datetime-local"], .wia-toolbar input[type="text"] {
  height: 38px; padding: 0 12px; border: 1px solid #d1d5db; border-radius: 6px; font-size: 13px; color: #374151;
  font-family: inherit; outline: none;
}
.wia-toolbar input:focus { border-color: #3b82f6; }
.wia-btn {
  height: 38px; padding: 0 18px; border: none; border-radius: 6px; background: #123478; color: #fff;
  font-size: 13px; font-weight: 700; cursor: pointer; font-family: inherit;
}
.wia-btn:hover { background: #1b4fb0; }
.wia-btn-outline {
  height: 38px; padding: 0 14px; border: 1px solid #d1d5db; border-radius: 6px; background: #fff; color: #374151;
  font-size: 13px; cursor: pointer; font-family: inherit;
}
.wia-btn-outline:hover { background: #f3f4f6; }

.wia-card { background: #fff; border-radius: 10px; box-shadow: 0 1px 3px rgba(0,0,0,.08), 0 1px 2px rgba(0,0,0,.06); padding: 18px 20px; margin-bottom: 16px; }
.wia-card-title { font-size: 14px; font-weight: 700; color: #1f2937; margin-bottom: 12px; padding-bottom: 10px; border-bottom: 1px solid #f0f1f3; }

.wia-table { width: 100%; border-collapse: collapse; font-size: 13px; }
.wia-table thead th {
  background: #f8fafc; color: #4b5563; font-weight: 700; text-align: center;
  padding: 10px 8px; border-bottom: 2px solid #e5e7eb; white-space: nowrap;
}
.wia-table tbody td { text-align: center; padding: 9px 8px; border-bottom: 1px solid #eef0f2; color: #1f2937; }
.wia-table tbody tr:nth-child(even) { background: #fafbfc; }
.wia-table tbody tr:hover { background: #eff6ff; }

.wia-badge {
  display: inline-block; min-width: 56px; padding: 4px 10px; border-radius: 999px;
  font-size: 12px; font-weight: 700; text-align: center; color: #fff; background: #9ca3af;
}
.wia-badge-ok { background: #16a34a; }
.wia-badge-danger { background: #dc2626; }
.wia-badge-idle { background: #9ca3af; }
.wia-badge-warn { background: #d97706; }

.wia-zone-title { font-size: 13px; font-weight: 700; color: #123478; margin: 4px 0 8px; }

/* 알람 리스트 화면 전용 레이아웃 - 화면 높이에 딱 맞춰 세로 스크롤 없이 105칸 고정 격자로 표시 */
.wia-alarmlist-page {
  height: 100vh; box-sizing: border-box; display: flex; flex-direction: column;
  overflow: hidden; padding: 16px 20px; background: #f1f5f9;
}
.wia-alarmlist-page .wia-page-header { flex-shrink: 0; margin-bottom: 10px; }
.wia-alarmlist-page .wia-card { flex: 1; min-height: 0; display: flex; flex-direction: column; margin-bottom: 0; padding: 14px 16px; overflow: hidden; }
.wia-alarm-grid {
  flex: 1; min-height: 0; display: grid;
  grid-template-columns: repeat(7, 1fr);
  grid-template-rows: repeat(15, 1fr);
  gap: 5px;
}
.wia-alarm-chip {
  position: relative; background: #f8fafc; border: 1px solid #e5e7eb; border-radius: 6px;
  padding: 4px 22px 4px 8px; font-size: 12px; font-weight: 600; color: #374151; cursor: pointer;
  line-height: 1.2; display: flex; align-items: center; justify-content: center; text-align: center; overflow: hidden;
  transition: background .15s, box-shadow .15s;
}
.wia-alarm-chip:hover { border-color: #3b82f6; box-shadow: 0 0 0 2px rgba(59,130,246,.12); }
.wia-alarm-chip.is-active { background: #dc2626 !important; color: #fff !important; border-color: #dc2626; box-shadow: 0 0 0 2px rgba(220,38,38,.18); }
.wia-alarm-chip .check-icon { position: absolute; top: 4px; right: 4px; margin-top: 0; }

/* 알람 코멘트 모달 */
.wia-modal-backdrop { position: fixed; inset: 0; background: rgba(15,23,42,.55); align-items: center; justify-content: center; z-index: 1000; }
.wia-modal { background: #fff; border-radius: 12px; width: min(1120px, 94vw); max-height: 90vh; overflow: auto; box-shadow: 0 24px 70px rgba(0,0,0,.35); display: flex; flex-direction: column; }
.wia-modal-header { background: #123478; color: #fff; padding: 14px 20px; border-radius: 12px 12px 0 0; display: flex; align-items: center; justify-content: space-between; gap: 12px; }
.wia-modal-header-title { font-size: 14px; font-weight: 700; }
.wia-modal-close { background: none; border: none; color: #fff; font-size: 20px; cursor: pointer; line-height: 1; padding: 4px; flex-shrink: 0; }
.wia-modal-body { padding: 20px; display: grid; grid-template-columns: 1fr 1fr; gap: 24px; align-items: start; }
.wia-modal-col-title { font-size: 13px; font-weight: 700; color: #123478; padding-bottom: 8px; margin-bottom: 12px; border-bottom: 1px solid #eef0f2; }
.wia-modal #ac_comment { display: block; width: 100%; min-height: 260px; border: 1px solid #e5e7eb; border-radius: 8px; padding: 12px; font-family: inherit; font-size: 13px; line-height: 1.5; resize: vertical; box-sizing: border-box; background: #fff; }
.wia-modal #ac_comment:focus { outline: none; border-color: #3b82f6; box-shadow: 0 0 0 3px rgba(59,130,246,.12); }
.button-container { display: flex; gap: 6px; margin-bottom: 12px; background: #eef1f5; padding: 4px; border-radius: 8px; width: fit-content; }
.wia-toggle-btn { height: 32px; padding: 0 18px; border: none; border-radius: 6px; background: transparent; color: #6b7280; font-size: 12px; font-weight: 600; cursor: pointer; transition: background .15s, color .15s; }
.wia-toggle-btn:hover { color: #123478; }
.wia-toggle-btn.active { background: #123478; color: #fff; box-shadow: 0 1px 3px rgba(0,0,0,.15); }
.content-section { background: #f8fafc; border: 1px solid #e5e7eb; border-radius: 10px; padding: 14px; box-sizing: border-box; }
.wia-file-label { display: inline-block; padding: 8px 14px; border: 1px solid #d1d5db; border-radius: 6px; background: #fff; color: #374151; font-size: 12px; cursor: pointer; margin-bottom: 8px; transition: border-color .15s, color .15s; }
.wia-file-label:hover { border-color: #3b82f6; color: #123478; }
.wia-preview-empty { display: flex; align-items: center; justify-content: center; min-height: 200px; border: 1.5px dashed #d1d5db; border-radius: 8px; color: #9ca3af; font-size: 12px; margin-top: 10px; background: #fff; text-align: center; padding: 12px; box-sizing: border-box; }
#imagePreview { border: 1px solid #e5e7eb; box-sizing: border-box; }
.file-input { display: none; }
.wia-modal-footer { padding: 14px 20px; border-top: 1px solid #eef0f2; display: flex; justify-content: flex-end; gap: 8px; flex-shrink: 0; }

/* IO 모니터링 탭 + 비트 그리드 */
.wia-tab-group { display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 10px; }
.wia-tab { height: 34px; padding: 0 14px; border: 1px solid #d1d5db; border-radius: 6px; background: #fff; color: #374151; font-size: 12px; font-weight: 600; cursor: pointer; text-align: center; }
.wia-tab:hover { border-color: #3b82f6; color: #123478; }
.wia-io-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); gap: 8px; }
.wia-io-cell { background: #f8fafc; border: 1px solid #e5e7eb; border-radius: 8px; padding: 8px 10px; }
.wia-io-label { font-size: 11px; color: #9ca3af; margin-bottom: 2px; }
.wia-io-value { font-size: 13px; font-weight: 700; color: #374151; }
.wia-io-value.is-active { color: #dc2626 !important; }
</style>
