<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WIA MES 로그인</title>
<style>
@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");
* { margin: 0; padding: 0; box-sizing: border-box; }
html, body {
  height: 100%;
  font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto,
    'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
  background: #0b1220;
}
.login-shell {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 24px;
}
.login-frame {
  width: 100%;
  max-width: 920px;
  min-height: 520px;
  display: grid;
  grid-template-columns: 1.1fr 1fr;
  background: #fff;
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 20px 60px rgba(0,0,0,.35);
}
.brand-panel {
  background: linear-gradient(160deg, #123478 0%, #1b4fb0 55%, #3b82f6 100%);
  color: #fff;
  padding: 48px 40px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: 18px;
}
.brand-panel img { height: 34px; width: auto; object-fit: contain; }
.brand-panel h1 { font-size: 30px; font-weight: 900; letter-spacing: .5px; }
.brand-panel p { font-size: 15px; line-height: 1.6; color: rgba(255,255,255,.85); }
.brand-badge {
  align-self: flex-start;
  margin-top: 12px;
  padding: 6px 14px;
  border-radius: 999px;
  background: rgba(255,255,255,.15);
  font-size: 13px;
  font-weight: 600;
  letter-spacing: .3px;
}
.form-panel {
  padding: 56px 44px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.form-panel h2 { font-size: 22px; font-weight: 800; color: #111827; margin-bottom: 6px; }
.form-panel .sub { font-size: 13px; color: #6b7280; margin-bottom: 28px; }
.field { margin-bottom: 16px; }
.field label { display: block; font-size: 13px; font-weight: 600; color: #374151; margin-bottom: 6px; }
.field input {
  width: 100%;
  height: 46px;
  padding: 0 14px;
  border: 1px solid #d1d5db;
  border-radius: 8px;
  font-size: 14px;
  outline: none;
  transition: border-color .15s;
}
.field input:focus { border-color: #3b82f6; }
.remember { display: flex; align-items: center; gap: 6px; margin: 4px 0 22px; font-size: 13px; color: #4b5563; }
.remember input { width: 14px; height: 14px; }
.btn-login {
  height: 48px;
  border: none;
  border-radius: 8px;
  background: #123478;
  color: #fff;
  font-size: 15px;
  font-weight: 700;
  cursor: pointer;
  transition: background .15s;
}
.btn-login:hover { background: #1b4fb0; }
.msg { min-height: 20px; margin-top: 12px; font-size: 13px; color: #dc2626; text-align: center; }
</style>
</head>
<body>
  <div class="login-shell">
    <div class="login-frame">
      <div class="brand-panel">
        <img src="${pageContext.request.contextPath}/image/header_navigation/hyundai-wia-logo.png" alt="logo">
        <p>연속로(CCF) 설비 통합 모니터링 시스템</p>
        <span class="brand-badge">EQUIPMENT MONITORING PORTAL</span>
      </div>
      <div class="form-panel">
        <h2>로그인</h2>
        <div class="sub">계정 정보를 입력해 주세요.</div>
        <form id="loginForm" onsubmit="doLogin(event)">
          <div class="field">
            <label for="userId">아이디</label>
            <input type="text" id="userId" name="user_id" autocomplete="username" required>
          </div>
          <div class="field">
            <label for="userPw">비밀번호</label>
            <input type="password" id="userPw" name="user_pw" autocomplete="current-password" required>
          </div>
          <label class="remember">
            <input type="checkbox" id="rememberId"> 아이디 저장
          </label>
          <button type="submit" class="btn-login" id="btnLogin">로그인</button>
          <div class="msg" id="loginMsg"></div>
        </form>
      </div>
    </div>
  </div>

  <script>
    (function () {
      var savedId = localStorage.getItem('wia_saved_id');
      if (savedId) {
        document.getElementById('userId').value = savedId;
        document.getElementById('rememberId').checked = true;
      }
    })();

    function doLogin(e) {
      e.preventDefault();
      var id = document.getElementById('userId').value;
      var pw = document.getElementById('userPw').value;
      var remember = document.getElementById('rememberId').checked;
      var msg = document.getElementById('loginMsg');
      var btn = document.getElementById('btnLogin');
      msg.textContent = '';
      btn.disabled = true;

      var body = 'user_id=' + encodeURIComponent(id) + '&user_pw=' + encodeURIComponent(pw);

      fetch('${pageContext.request.contextPath}/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: body
      })
        .then(function (res) { return res.json(); })
        .then(function (data) {
          btn.disabled = false;
          if (data.success) {
            if (remember) {
              localStorage.setItem('wia_saved_id', id);
            } else {
              localStorage.removeItem('wia_saved_id');
            }
            window.location.href = '${pageContext.request.contextPath}/main';
          } else {
            msg.textContent = data.message || '로그인에 실패했습니다.';
          }
        })
        .catch(function () {
          btn.disabled = false;
          msg.textContent = '로그인 처리 중 오류가 발생했습니다.';
        });
    }
  </script>
</body>
</html>
