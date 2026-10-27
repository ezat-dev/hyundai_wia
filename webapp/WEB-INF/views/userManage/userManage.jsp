<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>사용자 관리</title>
<jsp:include page="../include/pluginpage.jsp"/>
<%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
<style>
.um-pwd-hint { font-size:11px; color:#9ca3af; margin-top:4px; }
.um-field { margin-bottom:14px; }
.um-field label { display:block; font-size:12px; font-weight:700; color:#374151; margin-bottom:5px; }
.um-field input, .um-field select {
  width:100%; height:38px; padding:0 12px; border:1px solid #d1d5db; border-radius:6px;
  font-size:13px; font-family:inherit; outline:none; box-sizing:border-box;
}
.um-field input:focus, .um-field select:focus { border-color:#3b82f6; }
.um-row2 { display:grid; grid-template-columns:1fr 1fr; gap:14px; }
</style>
</head>
<body class="wia-page">
  <div class="wia-page-wrap">
    <div class="wia-page-header">
      <div>
        <div class="wia-page-title">사용자 관리</div>
        <div class="wia-page-sub">로그인 계정을 등록/수정/삭제합니다.</div>
      </div>
      <button class="wia-btn" onclick="openModal()">+ 사용자 추가</button>
    </div>

    <div class="wia-card">
      <table class="wia-table">
        <thead>
          <tr>
            <th>아이디</th><th>이름</th><th>부서</th><th>직책</th>
            <th>사용여부</th><th>관리자</th><th>등록일</th><th>관리</th>
          </tr>
        </thead>
        <tbody id="userTbody">
          <tr><td colspan="8" style="color:#9ca3af;">로딩 중...</td></tr>
        </tbody>
      </table>
    </div>
  </div>

  <!-- 등록/수정 모달 -->
  <div class="wia-modal-backdrop" id="userModal" style="display:none;">
    <div class="wia-modal" style="width:min(480px,94vw);">
      <div class="wia-modal-header">
        <div class="wia-modal-header-title" id="modalTitle">사용자 추가</div>
        <button type="button" class="wia-modal-close" onclick="closeModal()">&times;</button>
      </div>
      <div class="wia-modal-body" style="display:block;">
        <input type="hidden" id="user_code" value="0">
        <div class="um-row2">
          <div class="um-field">
            <label>아이디</label>
            <input type="text" id="user_id" maxlength="30" placeholder="로그인 아이디">
          </div>
          <div class="um-field">
            <label>이름</label>
            <input type="text" id="user_name" maxlength="30" placeholder="이름">
          </div>
        </div>
        <div class="um-row2">
          <div class="um-field">
            <label>부서</label>
            <input type="text" id="user_dept" maxlength="30" placeholder="부서">
          </div>
          <div class="um-field">
            <label>직책</label>
            <input type="text" id="user_position" maxlength="30" placeholder="직책">
          </div>
        </div>
        <div class="um-field">
          <label>비밀번호</label>
          <input type="password" id="new_pwd" autocomplete="new-password" placeholder="비밀번호 입력">
          <div class="um-pwd-hint" id="pwdHint">비워두면 기존 비밀번호가 유지됩니다.</div>
        </div>
        <div class="um-row2">
          <div class="um-field">
            <label>사용여부</label>
            <select id="use_yn">
              <option value="Y">사용</option>
              <option value="N">미사용</option>
            </select>
          </div>
          <div class="um-field">
            <label>관리자 권한</label>
            <select id="admin_yn">
              <option value="N">일반</option>
              <option value="Y">관리자(전체 메뉴 접근)</option>
            </select>
          </div>
        </div>
      </div>
      <div class="wia-modal-footer">
        <button type="button" class="wia-btn-outline" onclick="closeModal()">취소</button>
        <button type="button" class="wia-btn" onclick="saveUser()">저장</button>
      </div>
    </div>
  </div>

<script>
var base = '${pageContext.request.contextPath}';
var userList = [];

$(document).ready(function() { loadUserList(); });

function loadUserList() {
  $.ajax({
    url: base + '/userManage/list', type: 'post', dataType: 'json',
    success: function(res) {
      userList = res.data || [];
      renderTable();
    }
  });
}

function esc(s) { return String(s == null ? '' : s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;'); }

function renderTable() {
  var html = '';
  userList.forEach(function(u) {
    html += '<tr>'
      + '<td>' + esc(u.user_id) + '</td>'
      + '<td>' + esc(u.user_name) + '</td>'
      + '<td>' + esc(u.user_dept) + '</td>'
      + '<td>' + esc(u.user_position) + '</td>'
      + '<td><span class="wia-badge ' + (u.use_yn === 'Y' ? 'wia-badge-ok' : 'wia-badge-idle') + '">' + (u.use_yn === 'Y' ? '사용' : '미사용') + '</span></td>'
      + '<td>' + (u.admin_yn === 'Y' ? '<span class="wia-badge" style="background:#7c3aed">관리자</span>' : '-') + '</td>'
      + '<td>' + esc((u.reg_date || '').substring(0, 10)) + '</td>'
      + '<td>'
      +   '<button class="wia-btn-outline" style="height:30px;padding:0 10px;font-size:12px;margin-right:4px;" onclick=\'editUser(' + JSON.stringify(u) + ')\'>수정</button>'
      +   '<button class="wia-btn-outline" style="height:30px;padding:0 10px;font-size:12px;color:#dc2626;border-color:#fca5a5;" onclick="deleteUser(' + u.user_code + ',\'' + esc(u.user_id) + '\')">삭제</button>'
      + '</td>'
      + '</tr>';
  });
  $('#userTbody').html(html || '<tr><td colspan="8" style="color:#9ca3af;">등록된 사용자가 없습니다.</td></tr>');
}

function openModal() {
  $('#modalTitle').text('사용자 추가');
  $('#user_code').val(0);
  $('#user_id').val('').prop('disabled', false);
  $('#user_name').val('');
  $('#user_dept').val('');
  $('#user_position').val('');
  $('#new_pwd').val('');
  $('#pwdHint').text('신규 등록 시 비밀번호는 필수입니다.');
  $('#use_yn').val('Y');
  $('#admin_yn').val('N');
  $('#userModal').css('display', 'flex');
}

function editUser(u) {
  $('#modalTitle').text('사용자 수정');
  $('#user_code').val(u.user_code);
  $('#user_id').val(u.user_id).prop('disabled', true);
  $('#user_name').val(u.user_name);
  $('#user_dept').val(u.user_dept);
  $('#user_position').val(u.user_position);
  $('#new_pwd').val('');
  $('#pwdHint').text('비워두면 기존 비밀번호가 유지됩니다.');
  $('#use_yn').val(u.use_yn);
  $('#admin_yn').val(u.admin_yn);
  $('#userModal').css('display', 'flex');
}

function closeModal() { $('#userModal').css('display', 'none'); }

function saveUser() {
  var user_code = parseInt($('#user_code').val(), 10);
  var data = {
    user_code: user_code,
    user_id: $('#user_id').val().trim(),
    user_name: $('#user_name').val().trim(),
    user_dept: $('#user_dept').val().trim(),
    user_position: $('#user_position').val().trim(),
    new_pwd: $('#new_pwd').val(),
    use_yn: $('#use_yn').val(),
    admin_yn: $('#admin_yn').val()
  };
  if (!data.user_name) { alert('이름을 입력하세요.'); return; }
  if (user_code === 0 && !data.user_id) { alert('아이디를 입력하세요.'); return; }

  $.ajax({
    url: base + '/userManage/save', type: 'post', dataType: 'json', data: data,
    success: function(res) {
      if (res.success) {
        alert('저장되었습니다.');
        closeModal();
        loadUserList();
      } else {
        alert(res.message || '저장에 실패했습니다.');
      }
    }
  });
}

function deleteUser(user_code, user_id) {
  if (!confirm(user_id + ' 계정을 삭제하시겠습니까?')) return;
  $.ajax({
    url: base + '/userManage/delete', type: 'post', dataType: 'json', data: { user_code: user_code },
    success: function(res) {
      if (res.success) {
        loadUserList();
      } else {
        alert(res.message || '삭제에 실패했습니다.');
      }
    }
  });
}
</script>
</body>
</html>
