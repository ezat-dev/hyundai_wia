package com.wia.dao;

import java.util.List;
import java.util.Map;

import com.wia.domain.TrendCcf;

public interface TrendCcfDao {
	// TrendExportScheduler(일일 온도점검 엑셀/PNG 내보내기)가 쓰는 레거시 경로 - wia DB의 tb_trend_ccf
	List<TrendCcf> Trend_CcfData(TrendCcf trendCcf);

	// trendCcf.jsp(웹 트렌드 화면)가 쓰는 경로 - ez_scada DB의 tb_temp_tag/tb_temp_snapshot
	List<Map<String, Object>> getTagList();
	List<Map<String, Object>> getSnapshotList(TrendCcf trendCcf);
}
