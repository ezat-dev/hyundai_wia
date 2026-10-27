package com.wia.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.wia.domain.TrendCcf;
import com.wia.service.TrendCcfService;

@Controller
public class TrendCcfController {

    @Autowired
    private TrendCcfService trendCcfService;

    // tb_temp_tag 등록 순서(temp_id)대로 돌아가며 배정되는 차트 색상 팔레트
    private static final String[] PALETTE = {
        "#F87171", "#60A5FA", "#ABF200", "#FDBA74", "#A78BFA",
        "#4ADE80", "#FB7185", "#22D3EE", "#F472B6", "#E2E8F0",
        "#FACC15", "#38BDF8"
    };

    @RequestMapping(value = "/trendCcf", method = RequestMethod.GET)
    public String TrendCcf(Model model) {
        List<Map<String, Object>> tagList = trendCcfService.getTagList();
        model.addAttribute("tagDefsJson", new Gson().toJson(buildTagDefs(tagList)));
        return "/trendCcf/trendCcf.jsp";
    }

    @RequestMapping(value = "/trendCcf/getData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> TrendCcfGetData(
        @RequestParam(required = false) String sdateTime,
        @RequestParam(required = false) String edateTime) {

        TrendCcf trendCcf = new TrendCcf();
        trendCcf.setStartDate(sdateTime);
        trendCcf.setEndDate(edateTime);

        List<Map<String, Object>> tagList = trendCcfService.getTagList();
        List<Map<String, Object>> rows = trendCcfService.getSnapshotList(trendCcf);

        Map<String, Object> seriesMap = new LinkedHashMap<String, Object>();
        int i = 0;
        for (Map<String, Object> tag : tagList) {
            String colName = String.valueOf(tag.get("colName"));
            String trendName = String.valueOf(tag.get("trendName"));

            List<List<Object>> points = new ArrayList<List<Object>>();
            for (Map<String, Object> row : rows) {
                Object ts = row.get("record_time");
                Object val = row.get(colName);

                List<Object> point = new ArrayList<Object>();
                point.add(ts == null ? null : ts.toString());
                point.add(val);
                points.add(point);
            }

            Map<String, Object> seriesObj = new HashMap<String, Object>();
            seriesObj.put("name", trendName);
            seriesObj.put("color", PALETTE[i % PALETTE.length]);
            seriesObj.put("data", points);
            seriesMap.put(colName, seriesObj);
            i++;
        }

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data", seriesMap);
        return resultMap;
    }

    // tb_temp_tag 목록 -> 트렌드 화면 좌측 태그 패널/범례용 정의 목록으로 변환
    private List<Map<String, Object>> buildTagDefs(List<Map<String, Object>> tagList) {
        List<Map<String, Object>> defs = new ArrayList<Map<String, Object>>();
        int i = 0;
        for (Map<String, Object> tag : tagList) {
            String colName = String.valueOf(tag.get("colName"));
            String trendName = String.valueOf(tag.get("trendName"));

            Map<String, Object> def = new LinkedHashMap<String, Object>();
            def.put("key", colName);
            def.put("label", trendName);
            def.put("group", colName.endsWith("-cp") ? "cp" : "temp");
            def.put("color", PALETTE[i % PALETTE.length]);
            defs.add(def);
            i++;
        }
        return defs;
    }
}
