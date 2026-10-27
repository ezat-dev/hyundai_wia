package com.wia.dao;

import java.util.List;

import com.wia.domain.RepairHistory;

public interface RepairHistoryCcfDao {
	List<RepairHistory> repairHistoryCcfList(RepairHistory repairHistory);
	void insertRepairHistory(RepairHistory repairHistory);
	void updateRepairHistory(RepairHistory repairHistory);
	void deleteRepairHistory(int repair_idx);
}
