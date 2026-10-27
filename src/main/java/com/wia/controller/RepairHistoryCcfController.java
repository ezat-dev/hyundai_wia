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

import com.wia.domain.RepairHistory;
import com.wia.service.RepairHistoryCcfService;

@Controller
public class RepairHistoryCcfController {

	@Autowired
	private RepairHistoryCcfService repairHistoryCcfService;

	@RequestMapping(value = "/repairHistoryCcf", method = RequestMethod.GET)
	public String repairHistoryCcf() {
		return "/repairHistoryCcf/repairHistoryCcf.jsp";
	}

	@RequestMapping(value = "/repairHistoryCcf/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> repairHistoryCcfList(
			@RequestParam(required = false) String sdateTime,
			@RequestParam(required = false) String edateTime) {
		Map<String, Object> rtnMap = new HashMap<String, Object>();

		RepairHistory repairHistory = new RepairHistory();
		repairHistory.setSdateTime(sdateTime);
		repairHistory.setEdateTime(edateTime);

		List<RepairHistory> list = repairHistoryCcfService.repairHistoryCcfList(repairHistory);

		rtnMap.put("last_page", 1);
		rtnMap.put("data", list);
		return rtnMap;
	}

	@RequestMapping(value = "/repairHistoryCcf/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> repairHistoryCcfSave(@ModelAttribute RepairHistory repairHistory, HttpSession session) {
		Object user = session.getAttribute("user");
		repairHistory.setReg_user(user == null ? null : user.toString());
		return repairHistoryCcfService.saveRepairHistory(repairHistory);
	}

	@RequestMapping(value = "/repairHistoryCcf/delete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> repairHistoryCcfDelete(@RequestParam("repair_idx") int repair_idx) {
		return repairHistoryCcfService.deleteRepairHistory(repair_idx);
	}
}
