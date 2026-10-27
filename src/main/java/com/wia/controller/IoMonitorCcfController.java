package com.wia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.IoCcfList;
import com.wia.service.IoCcfListService;
import com.wia.util.OpcDataMap;

@Controller
public class IoMonitorCcfController {

    @Autowired
    private IoCcfListService ioCcfListService;
    
    @RequestMapping(value= "/ioMonitorCcf1", method = RequestMethod.GET)
    public String ioMonitorCcf1(Model model) {


        return "/ioMonitorCcf/ioMonitorCcf1.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcf2", method = RequestMethod.GET)
    public String ioMonitorCcf2(Model model) {
        return "/ioMonitorCcf/ioMonitorCcf2.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcf3", method = RequestMethod.GET)
    public String ioMonitorCcf3(Model model) {
        return "/ioMonitorCcf/ioMonitorCcf3.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcf4", method = RequestMethod.GET)
    public String ioMonitorCcf4(Model model) {
        return "/ioMonitorCcf/ioMonitorCcf4.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcf5", method = RequestMethod.GET)
    public String ioMonitorCcf5(Model model) {
        return "/ioMonitorCcf/ioMonitorCcf5.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcf6", method = RequestMethod.GET)
    public String ioMonitorCcf6(Model model) {
        return "/ioMonitorCcf/ioMonitorCcf6.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcf1/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> ioMonitorCcf1View(
    		@RequestParam String opcGroup
    		) throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();
    	
    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap(opcGroup);    	
    	
    	return returnMap;    	
    }

    @RequestMapping(value = "/ioMonitorCcf1/data", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getIoCcfList(
    		@RequestParam String dbGroup) {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        IoCcfList ioCcfList1 = new IoCcfList();
        ioCcfList1.setDbGroup(dbGroup);
        
        List<IoCcfList> ioCcfList = ioCcfListService.getIoCcfList(ioCcfList1);
        
        returnMap.put("data", ioCcfList);

        return returnMap;
    }
    
}
