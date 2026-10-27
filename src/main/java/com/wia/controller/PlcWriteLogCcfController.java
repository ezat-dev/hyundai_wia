package com.wia.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.PlcWriteLog;
import com.wia.service.PlcWriteLogCcfService;

@Controller
public class PlcWriteLogCcfController {

	@Autowired
	private PlcWriteLogCcfService plcWriteLogCcfService;

	private boolean isAdmin(HttpSession session) {
		return "Y".equals(session.getAttribute("admin_yn"));
	}

	@RequestMapping(value = "/plcWriteLogCcf", method = RequestMethod.GET)
	public String plcWriteLogCcf(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "/layout/login.jsp";
		}
		if (!isAdmin(session)) {
			return "/layout/noAuth.jsp";
		}
		return "/plcWriteLogCcf/plcWriteLogCcf.jsp";
	}

	//PLC 값쓰기 발생 시마다 각 화면에서 호출해 기록 (화면에 보이는 모든 쓰기 동작의 공통 기록 지점)
	@RequestMapping(value = "/plcWriteLogCcf/record", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> record(
			@RequestParam("pageName") String pageName,
			@RequestParam("tagName") String tagName,
			@RequestParam("address") String address,
			@RequestParam("value") String value,
			HttpSession session){
		Map<String, Object> result = new HashMap<String, Object>();
		Object user = session.getAttribute("user");
		if (user == null) {
			result.put("success", false);
			return result;
		}

		PlcWriteLog log = new PlcWriteLog();
		log.setUserId(String.valueOf(user));
		log.setPageName(pageName);
		log.setTagName(tagName);
		log.setAddress(address);
		log.setValue(value);
		plcWriteLogCcfService.insertLog(log);

		result.put("success", true);
		return result;
	}

	@RequestMapping(value = "/plcWriteLogCcf/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(required = false) String sdateTime,
			@RequestParam(required = false) String edateTime,
			HttpSession session){
		Map<String, Object> result = new HashMap<String, Object>();
		if (!isAdmin(session)) {
			result.put("data", new ArrayList<PlcWriteLog>());
			return result;
		}

		PlcWriteLog cond = new PlcWriteLog();
		cond.setSdateTime(sdateTime);
		cond.setEdateTime(edateTime);

		List<PlcWriteLog> list = plcWriteLogCcfService.plcWriteLogCcfList(cond);

		result.put("data", list);
		return result;
	}

}
