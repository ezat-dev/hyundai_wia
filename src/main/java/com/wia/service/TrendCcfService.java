package com.wia.service;

import java.util.List;
import java.util.Map;

import com.wia.domain.TrendCcf;

public interface TrendCcfService {
	// TrendExportScheduler(레거시, wia DB)
	List<TrendCcf> getTrendData(TrendCcf trendCcf);

	// trendCcf.jsp(신규, ez_scada DB)
	List<Map<String, Object>> getTagList();
	List<Map<String, Object>> getSnapshotList(TrendCcf trendCcf);
}
