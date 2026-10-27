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
public class IoMonitorCcfXController {

    @Autowired
    private IoCcfListService ioCcfListService;

    @RequestMapping(value= "/ioMonitorCcfX1", method = RequestMethod.GET)
    public String ioMonitorCcfX1(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX1.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX2", method = RequestMethod.GET)
    public String ioMonitorCcfX2(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX2.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX3", method = RequestMethod.GET)
    public String ioMonitorCcfX3(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX3.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX4", method = RequestMethod.GET)
    public String ioMonitorCcfX4(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX4.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX5", method = RequestMethod.GET)
    public String ioMonitorCcfX5(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX5.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX6", method = RequestMethod.GET)
    public String ioMonitorCcfX6(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX6.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX7", method = RequestMethod.GET)
    public String ioMonitorCcfX7(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX7.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX8", method = RequestMethod.GET)
    public String ioMonitorCcfX8(Model model) {
        return "/ioMonitorCcf/ioMonitorCcfX8.jsp";
    }

    @RequestMapping(value= "/ioMonitorCcfX1/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> ioMonitorCcfX1View(
    		@RequestParam String opcGroup
    		) throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    	OpcDataMap opcDataMap = new OpcDataMap();

    	returnMap = opcDataMap.getOpcDataListMap(opcGroup);

    	return returnMap;
    }

    @RequestMapping(value = "/ioMonitorCcfX1/data", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getIoCcfListX(
    		@RequestParam String dbGroup) {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        IoCcfList ioCcfList1 = new IoCcfList();
        ioCcfList1.setDbGroup(dbGroup);

        List<IoCcfList> ioCcfList = ioCcfListService.getIoCcfList(ioCcfList1);

        returnMap.put("data", ioCcfList);

        return returnMap;
    }

}
