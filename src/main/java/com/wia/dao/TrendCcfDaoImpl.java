package com.wia.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.TrendCcf;

@Repository
public class TrendCcfDaoImpl implements TrendCcfDao{

	// 레거시 경로(TrendExportScheduler용): wia DB
	@Resource(name="session")
    private SqlSession sqlSession;

	// 신규 경로(trendCcf.jsp용): ez_scada DB
	@Resource(name="sessionEzScada")
	private SqlSession sqlSessionEzScada;

    @Override
    public List<TrendCcf> Trend_CcfData(TrendCcf trendCcf) {
        return sqlSession.selectList("trendCcf.trendCcfData", trendCcf);
    }

    @Override
    public List<Map<String, Object>> getTagList() {
        return sqlSessionEzScada.selectList("trendCcf.trendCcfTagList");
    }

    @Override
    public List<Map<String, Object>> getSnapshotList(TrendCcf trendCcf) {
        return sqlSessionEzScada.selectList("trendCcf.trendCcfSnapshotList", trendCcf);
    }
}
