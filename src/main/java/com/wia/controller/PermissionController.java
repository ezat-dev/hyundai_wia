package com.wia.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.service.PermissionService;
import com.wia.service.UserService;

@Controller
public class PermissionController {

	@Autowired
	private PermissionService permissionService;

	@Autowired
	private UserService userService;

	private boolean isAdmin(HttpSession session) {
		return "Y".equals(session.getAttribute("admin_yn"));
	}

	@RequestMapping(value = "/permission", method = RequestMethod.GET)
	public String permission(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "/layout/login.jsp";
		}
		if (!isAdmin(session)) {
			return "/layout/noAuth.jsp";
		}
		return "/permission/permission.jsp";
	}

	@RequestMapping(value = "/permission/userList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userList(HttpSession session) {
		Map<String, Object> result = new HashMap<String, Object>();
		if (!isAdmin(session)) {
			result.put("success", false);
			return result;
		}
		result.put("success", true);
		result.put("data", userService.getUserList());
		return result;
	}

	@RequestMapping(value = "/permission/userMenus", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userMenus(@RequestParam("user_code") int user_code, HttpSession session) {
		Map<String, Object> result = new HashMap<String, Object>();
		if (!isAdmin(session)) {
			result.put("success", false);
			return result;
		}
		result.put("success", true);
		result.put("data", permissionService.getUserPermissionMenus(user_code));
		return result;
	}

	@RequestMapping(value = "/permission/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> save(
			@RequestParam("user_code") int user_code,
			@RequestParam(value = "menuCodes", required = false) String[] menuCodes,
			HttpSession session) {
		Map<String, Object> result = new HashMap<String, Object>();
		if (!isAdmin(session)) {
			result.put("success", false);
			result.put("message", "권한이 없습니다.");
			return result;
		}
		permissionService.saveUserPermission(user_code, menuCodes == null ? null : Arrays.asList(menuCodes));
		result.put("success", true);
		return result;
	}
}
