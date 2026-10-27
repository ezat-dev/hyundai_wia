package com.wia.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.wia.domain.Menu;
import com.wia.service.PermissionService;

@SuppressWarnings("unchecked")
public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private PermissionService permissionService;

	private volatile List<Menu> cachedMenus;

	private List<Menu> getMenus() {
		if (cachedMenus == null) {
			cachedMenus = permissionService.getMenuList();
		}
		return cachedMenus;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();

		// 미 로그인시 접근 규제
		if (session.getAttribute("user") == null) {
			request.setAttribute("msg", "로그인 후 이용가능한 페이지입니다.");
			request.setAttribute("url", "/");
			request.getRequestDispatcher("/WEB-INF/views/layout/noAuth.jsp").forward(request, response);
			return false;
		}

		// 관리자는 모든 페이지 접근 가능
		if ("Y".equals(session.getAttribute("admin_yn"))) {
			return true;
		}

		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String path = uri.startsWith(ctx) ? uri.substring(ctx.length()) : uri;

		// 등록된 메뉴 URL과 접두어가 일치하는 화면만 권한 체크 (미등록 경로는 통과)
		// 예) /controlCcf1, /controlCcf1/view 모두 menu_url=/controlCcf 에 매칭되어야 하므로
		// '/' 구분자 없이도 접두어만 맞으면 매칭한다. 가장 긴(구체적인) menu_url을 우선한다.
		Menu matched = null;
		for (Menu m : getMenus()) {
			if (path.startsWith(m.getMenu_url())) {
				if (matched == null || m.getMenu_url().length() > matched.getMenu_url().length()) {
					matched = m;
				}
			}
		}
		if (matched == null) {
			return true;
		}

		List<String> permissionCodes = (List<String>) session.getAttribute("permission_codes");
		if (permissionCodes != null && permissionCodes.contains(matched.getMenu_code())) {
			return true;
		}

		request.setAttribute("msg", "이 페이지에 대한 접근 권한이 없습니다.");
		request.getRequestDispatcher("/WEB-INF/views/layout/noAuth.jsp").forward(request, response);
		return false;
	}
}
