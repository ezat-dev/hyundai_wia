package com.wia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.User;
import com.wia.service.UserService;

@Controller
public class UserManageController {

	@Autowired
	private UserService userService;

	private boolean isAdmin(HttpSession session) {
		return "Y".equals(session.getAttribute("admin_yn"));
	}

	@RequestMapping(value = "/userManage", method = RequestMethod.GET)
	public String userManage(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "/layout/login.jsp";
		}
		if (!isAdmin(session)) {
			return "/layout/noAuth.jsp";
		}
		return "/userManage/userManage.jsp";
	}

	@RequestMapping(value = "/userManage/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(HttpSession session) {
		Map<String, Object> result = new HashMap<String, Object>();
		if (!isAdmin(session)) {
			result.put("success", false);
			result.put("message", "권한이 없습니다.");
			return result;
		}
		result.put("success", true);
		result.put("data", userService.getUserList());
		return result;
	}

	@RequestMapping(value = "/userManage/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> save(@ModelAttribute User user, HttpSession session) {
		if (!isAdmin(session)) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("success", false);
			result.put("message", "권한이 없습니다.");
			return result;
		}
		return userService.saveUser(user);
	}

	@RequestMapping(value = "/userManage/delete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(@RequestParam("user_code") int user_code, HttpSession session) {
		if (!isAdmin(session)) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("success", false);
			result.put("message", "권한이 없습니다.");
			return result;
		}
		return userService.deleteUser(user_code);
	}
}
