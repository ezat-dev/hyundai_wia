<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>권한 부여</title>
<jsp:include page="../include/pluginpage.jsp"/>
<%@ include file="/WEB-INF/views/layout/common_style.jsp" %>
<style>
.perm-layout { display:grid; grid-template-columns:280px 1fr; gap:16px; align-items:start; }
.perm-user-list { display:flex; flex-direction:column; gap:6px; max-height:calc(100vh - 180px); overflow-y:auto; }
.perm-user-row {
  padding:10px 12px; border:1px solid #e5e7eb; border-radius:8px; cursor:pointer;
  transition:all .13s; background:#fff;
}
.perm-user-row:hover { border-color:#93c5fd; background:#eff6ff; }
.perm-user-row.active { border-color:#123478; background:#eef3fb; box-shadow:0 0 0 2px rgba(18,52,120,.15); }
.perm-user-name { font-weight:700; font-size:13px; color:#111827; }
.perm-user-sub { font-size:11px; color:#6b7280; margin-top:2px; }
.perm-admin-note {
  padding:14px; border-radius:8px; background:#fef3c7; color:#92400e; font-size:12px; font-weight:600;
  display:none;
}
.perm-group-title {
  font-size:13px; font-weight:800; color:#123478; margin:18px 0 8px; padding-bottom:6px;
  border-bottom:2px solid #e5e7eb;
}
.perm-group-title:first-child { margin-top:0; }
.perm-menu-grid { display:grid; grid-template-columns:repeat(auto-fill, minmax(230px,1fr)); gap:8px; }
.perm-menu-item {
  display:flex; align-items:center; justify-content:space-between; gap:10px;
  padding:10px 12px; border:1px solid #e5e7eb; border-radius:8px; background:#f8fafc;
}
.perm-menu-name { font-size:13px; font-weight:600; color:#1f2937; }
.perm-switch { position:relative; width:42px; height:22px; flex-shrink:0; cursor:pointer; }
.perm-switch input { opacity:0; width:0; height:0; }
.perm-switch-track { position:absolute; inset:0; background:#cbd5e1; border-radius:20px; transition:.15s; }
.perm-switch-track::before { content:''; position:absolute; width:16px; height:16px; left:3px; top:3px; background:#fff; border-radius:50%; transition:.15s; box-shadow:0 1px 2px rgba(0,0,0,.3); }
.perm-switch input:checked + .perm-switch-track { background:#123478; }
.perm-switch input:checked + .perm-switch-track::before { transform:translateX(20px); }
.perm-empty { color:#9ca3af; font-size:13px; padding:30px 0; text-align:center; }
</style>
</head>
<body class="wia-page">
  <div class="wia-page-wrap">
    <div class="wia-page-header">
      <div>
        <div class="wia-page-title">권한 부여</div>
        <div class="wia-page-sub">사용자를 선택한 뒤, 조회를 허용할 화면을 켜고 저장하세요. (조회 / 없음 두 단계)</div>
      </div>
      <button class="wia-btn" id="saveBtn" onclick="savePermission()" style="display:none;">저장</button>
    </div>

    <div class="perm-layout">
      <div class="wia-card" style="margin-bottom:0;">
        <div class="wia-card-title">사용자 선택</div>
        <div class="perm-user-list" id="userList">
          <div class="perm-empty">로딩 중...</div>
        </div>
      </div>

      <div class="wia-card" style="margin-bottom:0;">
        <div class="wia-card-title" id="menuTitle">사용자를 선택하세요</div>
        <div class="perm-admin-note" id="adminNote">이 계정은 관리자 계정이라 항상 모든 화면에 접근할 수 있습니다. (개별 권한 설정 불필요)</div>
        <div id="menuArea"><div class="perm-empty">왼쪽에서 사용자를 선택하면 화면별 권한이 표시됩니다.</div></div>
      </div>
    </div>
  </div>

<script>
var base = '${pageContext.request.contextPath}';
var curUserCode = null;
var curIsAdmin = false;

$(document).ready(function() { loadUserList(); });

function esc(s) { return String(s == null ? '' : s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;'); }

function loadUserList() {
  $.ajax({
    url: base + '/permission/userList', type: 'post', dataType: 'json',
    success: function(res) {
      var users = res.data || [];
      var html = '';
      users.forEach(function(u) {
        html += '<div class="perm-user-row" data-code="' + u.user_code + '" data-admin="' + u.admin_yn + '" onclick="selectUser(' + u.user_code + ',\'' + u.admin_yn + '\',this)">'
              + '<div class="perm-user-name">' + esc(u.user_name) + ' <span style="font-weight:400;color:#9ca3af;">(' + esc(u.user_id) + ')</span></div>'
              + '<div class="perm-user-sub">' + esc(u.user_dept || '') + ' ' + esc(u.user_position || '') + '</div>'
              + '</div>';
      });
      $('#userList').html(html || '<div class="perm-empty">등록된 사용자가 없습니다.</div>');
    }
  });
}

function selectUser(user_code, admin_yn, el) {
  curUserCode = user_code;
  curIsAdmin = (admin_yn === 'Y');
  $('.perm-user-row').removeClass('active');
  $(el).addClass('active');
  $('#menuTitle').text($(el).find('.perm-user-name').text() + ' 님의 화면별 접근 권한');

  if (curIsAdmin) {
    $('#adminNote').css('display', 'block');
    $('#menuArea').html('');
    $('#saveBtn').css('display', 'none');
    return;
  }
  $('#adminNote').css('display', 'none');
  $('#saveBtn').css('display', 'inline-block');

  $.ajax({
    url: base + '/permission/userMenus', type: 'post', dataType: 'json', data: { user_code: user_code },
    success: function(res) { renderMenus(res.data || []); }
  });
}

function renderMenus(menus) {
  var groups = {};
  var order = [];
  menus.forEach(function(m) {
    if (!groups[m.menu_group]) { groups[m.menu_group] = []; order.push(m.menu_group); }
    groups[m.menu_group].push(m);
  });
  var html = '';
  order.forEach(function(g) {
    html += '<div class="perm-group-title">' + esc(g) + '</div><div class="perm-menu-grid">';
    groups[g].forEach(function(m) {
      var checked = m.granted_yn === 'Y' ? 'checked' : '';
      html += '<div class="perm-menu-item">'
            + '<span class="perm-menu-name">' + esc(m.menu_name) + '</span>'
            + '<label class="perm-switch"><input type="checkbox" class="perm-chk" value="' + esc(m.menu_code) + '" ' + checked + '><span class="perm-switch-track"></span></label>'
            + '</div>';
    });
    html += '</div>';
  });
  $('#menuArea').html(html || '<div class="perm-empty">등록된 메뉴가 없습니다.</div>');
}

function savePermission() {
  if (!curUserCode) return;
  var codes = [];
  $('.perm-chk:checked').each(function() { codes.push($(this).val()); });

  $.ajax({
    url: base + '/permission/save', type: 'post', dataType: 'json',
    data: $.param({ user_code: curUserCode }) + '&' + codes.map(function(c){ return 'menuCodes=' + encodeURIComponent(c); }).join('&'),
    success: function(res) {
      if (res.success) { alert('저장되었습니다.'); }
      else { alert(res.message || '저장에 실패했습니다.'); }
    }
  });
}
</script>
</body>
</html>
