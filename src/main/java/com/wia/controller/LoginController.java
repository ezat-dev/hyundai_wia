package com.wia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.User;
import com.wia.service.PermissionService;
import com.wia.service.UserService;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@Autowired
	private PermissionService permissionService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(HttpSession session) {
		if (session.getAttribute("user") != null) {
			return "redirect:/main";
		}
		return "/layout/login.jsp";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login(@RequestParam("user_id") String userId,
			@RequestParam("user_pw") String userPw, HttpSession session) {
		Map<String, Object> result = new HashMap<>();

		User user = userService.login(userId, userPw);
		if (user != null) {
			session.setAttribute("user", user.getUser_id());
			session.setAttribute("user_code", user.getUser_code());
			session.setAttribute("user_name", user.getUser_name());
			session.setAttribute("admin_yn", user.getAdmin_yn());
			session.setAttribute("permission_codes", permissionService.getUserPermissionCodes(user.getUser_code()));
			result.put("success", true);
		} else {
			result.put("success", false);
			result.put("message", "아이디 또는 비밀번호가 올바르지 않습니다.");
		}
		return result;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/login";
		}
		return "/layout/main.jsp";
	}
}
