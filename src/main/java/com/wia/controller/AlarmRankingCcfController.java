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

import com.wia.domain.AlarmRanking;
import com.wia.service.AlarmRankingCcfService;

@Controller
public class AlarmRankingCcfController {

	@Autowired
	private AlarmRankingCcfService alarmRankingCcfService;
	
	
    @RequestMapping(value= "/alarmRankingCcf", method = RequestMethod.GET)
    public String alarmRankingCcf(Model model) {
        return "/alarmRankingCcf/alarmRankingCcf.jsp";
    }
    

    @RequestMapping(value = "/alarmRankingCcf/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmRankingCcfList(
    		@RequestParam(required = false) String sdateTime,
    		@RequestParam(required = false) String edateTime
    		){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	AlarmRanking alarmRanking = new AlarmRanking();
    	alarmRanking.setSdateTime(sdateTime);
    	alarmRanking.setEdateTime(edateTime);
    	
    	List<AlarmRanking> alarmList = new ArrayList<AlarmRanking>();

    	List<AlarmRanking> alarmRankingList = alarmRankingCcfService.alarmRankingCcfList(alarmRanking);

    	for(AlarmRanking alarms : alarmRankingList) {
    		AlarmRanking alarm = new AlarmRanking();
    		alarm.setTagname(alarms.getTagname());
    		alarm.setAlarmdesc(alarms.getAlarmdesc());
    		alarm.setAlarmcount(alarms.getAlarmcount());

    		alarmList.add(alarm);
    	}
    	
    	rtnMap.put("last_page",1);
    	rtnMap.put("data", alarmList);
    	
    	return rtnMap;
    }

}
