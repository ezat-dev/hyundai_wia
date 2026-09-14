package com.wia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

// 임시 로그인 처리. 프로젝트에 아직 사용자 테이블/DAO가 없어 하드코딩 계정으로 세션만 발급한다.
// 추후 실제 사용자 테이블이 생기면 이 클래스의 인증 로직만 DB 조회로 교체하면 된다.
@Controller
public class LoginController {

	private static final String TEMP_ID = "admin";
	private static final String TEMP_PW = "1234";

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
		if (TEMP_ID.equals(userId) && TEMP_PW.equals(userPw)) {
			session.setAttribute("user", userId);
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
