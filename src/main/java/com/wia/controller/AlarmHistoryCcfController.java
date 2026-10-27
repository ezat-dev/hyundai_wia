package com.wia.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.AlarmHistory;
import com.wia.service.AlarmHistoryCcfService;

@Controller
public class AlarmHistoryCcfController {

	@Autowired
	private AlarmHistoryCcfService alarmHistoryCcfService;
	
    @RequestMapping(value= "/alarmHistoryCcf", method = RequestMethod.GET)
    public String alarmHistoryCcf(Model model) {

        return "/alarmHistoryCcf/alarmHistoryCcf.jsp";
    }

    @RequestMapping(value = "/alarmHistoryCcf/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmHistoryCcfList(
    		@RequestParam(required = false) String sdateTime,
    		@RequestParam(required = false) String edateTime
    		){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	AlarmHistory alarmHistory = new AlarmHistory();
    	alarmHistory.setSdateTime(sdateTime);
    	alarmHistory.setEdateTime(edateTime);
    	
    	List<AlarmHistory> alarmList = new ArrayList<AlarmHistory>();

    	List<AlarmHistory> alarmHistoryList = alarmHistoryCcfService.alarmHistoryCcfList(alarmHistory);

    	for(AlarmHistory alarms : alarmHistoryList) {
    		AlarmHistory alarm = new AlarmHistory();
    		alarm.setTagname(alarms.getTagname());
    		alarm.setAlarmdesc(alarms.getAlarmdesc());
    		alarm.setTime(alarms.getTime());
    		alarm.setLead_alarmtime(alarms.getLead_alarmtime());

    		alarmList.add(alarm);
    	}
    	
    	rtnMap.put("last_page",1);
    	rtnMap.put("data", alarmList);

    	return rtnMap;

    }

    //연속운용현황(overviewCcf) frame-1: 현재 발생 중(미해제)인 알람만 가볍게 조회
    @RequestMapping(value = "/alarmHistoryCcf/activeList", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmHistoryCcfActiveList(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();

    	List<AlarmHistory> alarmHistoryList = alarmHistoryCcfService.alarmHistoryCcfActiveList();

    	List<AlarmHistory> alarmList = new ArrayList<AlarmHistory>();
    	for(AlarmHistory alarms : alarmHistoryList) {
    		AlarmHistory alarm = new AlarmHistory();
    		alarm.setAlarmdesc(alarms.getAlarmdesc());
    		alarm.setTime(alarms.getTime());
    		alarmList.add(alarm);
    	}

    	rtnMap.put("data", alarmList);

    	return rtnMap;
    }


}
