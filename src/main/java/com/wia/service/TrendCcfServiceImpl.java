package com.wia.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.TrendCcfDao;
import com.wia.domain.TrendCcf;

@Service
public class TrendCcfServiceImpl implements TrendCcfService{

	@Autowired
	private TrendCcfDao trendCcfDao;

	@Override
	public List<TrendCcf> getTrendData(TrendCcf trendCcf) {
		return trendCcfDao.Trend_CcfData(trendCcf);
	}

	@Override
	public List<Map<String, Object>> getTagList() {
		return trendCcfDao.getTagList();
	}

	@Override
	public List<Map<String, Object>> getSnapshotList(TrendCcf trendCcf) {
		return trendCcfDao.getSnapshotList(trendCcf);
	}
}
