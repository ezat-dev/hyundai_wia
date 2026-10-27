package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.RepairHistory;

@Repository
public class RepairHistoryCcfDaoImpl implements RepairHistoryCcfDao {

	@Resource(name = "session")
	private SqlSession sqlSession;

	@Override
	public List<RepairHistory> repairHistoryCcfList(RepairHistory repairHistory) {
		return sqlSession.selectList("repairHistoryCcf.repairHistoryCcfList", repairHistory);
	}

	@Override
	public void insertRepairHistory(RepairHistory repairHistory) {
		sqlSession.insert("repairHistoryCcf.insertRepairHistory", repairHistory);
	}

	@Override
	public void updateRepairHistory(RepairHistory repairHistory) {
		sqlSession.update("repairHistoryCcf.updateRepairHistory", repairHistory);
	}

	@Override
	public void deleteRepairHistory(int repair_idx) {
		sqlSession.delete("repairHistoryCcf.deleteRepairHistory", repair_idx);
	}
}
