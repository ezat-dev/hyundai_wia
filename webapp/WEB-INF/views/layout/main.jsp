<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// 최상위 프레임(iframe 밖)이라 여기서는 서버 리다이렉트로 바로 로그인 화면으로 보낸다.
if (session.getAttribute("user") == null) {
    response.sendRedirect(request.getContextPath() + "/login");
    return;
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WIA MES</title>
<style>
@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");
* { margin: 0; padding: 0; box-sizing: border-box; }
html, body {
  height: 100%;
  font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto,
    'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
.app { display: flex; flex-direction: column; height: 100vh; overflow: hidden; }

/* ---- header ---- */
.app-header {
  flex-shrink: 0;
  background: #0f1b3d;
  color: #cbd5e1;
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  padding: 0 20px;
  gap: 4px 22px;
  box-shadow: 0 2px 6px rgba(0,0,0,.15);
}
.brand {
  display: flex;
  align-items: center;
  gap: 10px;
  height: 56px;
  cursor: pointer;
  flex-shrink: 0;
}
.brand img { height: 24px; }
.brand span { color: #fff; font-weight: 800; font-size: 16px; white-space: nowrap; }

.app-nav {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  flex: 1;
  min-width: 0;
}
.nav-item {
  position: relative;
  display: flex;
  align-items: center;
  height: 56px;
  padding: 0 13px;
  font-size: 14px;
  font-weight: 600;
  color: #cbd5e1;
  text-decoration: none;
  white-space: nowrap;
  cursor: pointer;
}
.nav-item::after {
  content: '';
  position: absolute;
  left: 12px; right: 12px; bottom: 8px;
  height: 2px;
  background: #3b82f6;
  transform: scaleX(0);
  transition: transform .18s ease;
}
.nav-item:hover { color: #fff; }
.nav-item:hover::after { transform: scaleX(1); }
.nav-item.active { color: #fff; }
.nav-item.active::after { transform: scaleX(1); }

.header-right {
  display: flex;
  align-items: center;
  gap: 14px;
  height: 56px;
  flex-shrink: 0;
  margin-left: auto;
}
.header-date { font-size: 12px; color: #8aa0d4; white-space: nowrap; }
.user-chip { display: flex; align-items: center; gap: 8px; }
.user-avatar {
  width: 26px; height: 26px; border-radius: 50%;
  background: #3b82f6; color: #fff; font-size: 12px; font-weight: 700;
  display: flex; align-items: center; justify-content: center;
}
.user-name { font-size: 13px; font-weight: 600; color: #e5e7eb; white-space: nowrap; }
.btn-logout {
  height: 30px; padding: 0 12px; border-radius: 6px; border: 1px solid rgba(255,255,255,.25);
  background: transparent; color: #cbd5e1; font-size: 12px; cursor: pointer; white-space: nowrap;
}
.btn-logout:hover { background: rgba(255,255,255,.1); color: #fff; }

/* ---- content frame ---- */
.frame-wrap { flex: 1; overflow: hidden; background: #f1f5f9; }
.frame-wrap iframe { width: 100%; height: 100%; border: none; display: block; background: #fff; }
</style>
</head>
<body>
  <div class="app">
    <header class="app-header">
      <div class="brand" onclick="go('/overviewCcf','연속운용 현황',null)">
        <img src="${pageContext.request.contextPath}/image/header_navigation/hyundai-wia-logo.png" alt="logo">
      </div>

      <nav class="app-nav" id="appNav">
        <%-- 공통로(CM) 메뉴는 현재 숨김 처리. 필요해지면 아래 주석을 해제해서 복원.
        <a class="nav-item" data-page="overviewCm" onclick="go('/overviewCm','공통운용 현황',this);return false;">공통운용 현황</a>
        <a class="nav-item" data-page="controlCm" onclick="go('/controlCm','제어 화면',this);return false;">제어 화면</a>
        <a class="nav-item" data-page="trendCm" onclick="go('/trendCm','트렌드',this);return false;">트렌드</a>
        <a class="nav-item" data-page="alarmHistoryCm" onclick="go('/alarmHistoryCm','알람 내역',this);return false;">알람 내역</a>
        <a class="nav-item" data-page="alarmListCm1" onclick="go('/alarmListCm1','알람',this);return false;">알람</a>
        <a class="nav-item" data-page="alarmRankingCm" onclick="go('/alarmRankingCm','알람 랭킹',this);return false;">알람 랭킹</a>
        <a class="nav-item" data-page="overviewDataCm" onclick="go('/overviewDataCm','처리품 데이터',this);return false;">처리품 데이터</a>
        <a class="nav-item" data-page="productCycleCm" onclick="go('/productCycleCm','처리품 싸이클',this);return false;">처리품 싸이클</a>
        <a class="nav-item" data-page="ticCm" onclick="go('/ticCm','온도 조절계',this);return false;">온도 조절계</a>
        <a class="nav-item" data-page="autoConCm" onclick="go('/autoConCm','자동운전 조건',this);return false;">자동운전 조건</a>
        <a class="nav-item" data-page="ioMonitorCm1" onclick="go('/ioMonitorCm1','IO 모니터링',this);return false;">IO 모니터링</a>
        --%>
        <a class="nav-item" data-page="overviewCcf" onclick="go('/overviewCcf','연속운용 현황',this);return false;">연속운용 현황</a>
        <a class="nav-item" data-page="controlCcf1" onclick="go('/controlCcf1','제어 화면',this);return false;">제어 화면</a>
        <a class="nav-item" data-page="trendCcf" onclick="go('/trendCcf','트렌드',this);return false;">트렌드</a>
        <a class="nav-item" data-page="alarmHistoryCcf" onclick="go('/alarmHistoryCcf','알람 내역',this);return false;">알람 내역</a>
        <a class="nav-item" data-page="alarmListCcf1" onclick="go('/alarmListCcf1','알람',this);return false;">알람</a>
        <a class="nav-item" data-page="alarmRankingCcf" onclick="go('/alarmRankingCcf','알람 랭킹',this);return false;">알람 랭킹</a>
        <a class="nav-item" data-page="overviewDataCcf" onclick="go('/overviewDataCcf','처리품 데이터',this);return false;">처리품 데이터</a>
        <a class="nav-item" data-page="productCycleCcf" onclick="go('/productCycleCcf','처리품 싸이클',this);return false;">처리품 싸이클</a>
        <a class="nav-item" data-page="ticCcf" onclick="go('/ticCcf','온도 조절계',this);return false;">온도 조절계</a>
        <a class="nav-item" data-page="autoConCcf" onclick="go('/autoConCcf','자동운전 조건',this);return false;">자동운전 조건</a>
        <a class="nav-item" data-page="ioMonitorCcf1" onclick="go('/ioMonitorCcf1','IO 모니터링',this);return false;">IO 모니터링</a>
        <a class="nav-item" data-page="invCcf" onclick="go('/invCcf','인버터',this);return false;">인버터</a>
        <%-- 전체 현황 메뉴는 현재 숨김 처리. 필요해지면 아래 주석을 해제해서 복원.
        <a class="nav-item" data-page="overviewStatusAll" onclick="go('/overviewStatusAll','전체 현황',this);return false;">전체 현황</a>
        --%>
      </nav>

      <div class="header-right">
        <div class="header-date" id="headerDate"></div>
        <div class="user-chip">
          <div class="user-avatar">U</div>
          <span class="user-name">${sessionScope.user}</span>
        </div>
        <button class="btn-logout" onclick="doLogout()">로그아웃</button>
      </div>
    </header>

    <div class="frame-wrap">
      <iframe id="pageFrame" src="${pageContext.request.contextPath}/overviewCcf" allowfullscreen></iframe>
    </div>
  </div>

  <script>
    var CTX = "${pageContext.request.contextPath}";

    function go(url, title, el) {
      document.getElementById('pageFrame').src = CTX + url;
      if (el) {
        document.querySelectorAll('.nav-item').forEach(function (a) { a.classList.remove('active'); });
        el.classList.add('active');
      }
    }

    function doLogout() {
      window.location.href = CTX + '/logout';
    }

    function tickClock() {
      var d = new Date();
      var pad = function (n) { return (n < 10 ? '0' : '') + n; };
      document.getElementById('headerDate').textContent =
        d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) + ' ' +
        pad(d.getHours()) + ':' + pad(d.getMinutes()) + ':' + pad(d.getSeconds());
    }
    tickClock();
    setInterval(tickClock, 1000);

    document.addEventListener('DOMContentLoaded', function () {
      var first = document.querySelector('.nav-item[data-page="overviewCcf"]');
      if (first) first.classList.add('active');
    });
  </script>
</body>
</html>
