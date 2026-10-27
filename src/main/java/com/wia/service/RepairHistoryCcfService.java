package com.wia.service;

import java.util.List;
import java.util.Map;

import com.wia.domain.RepairHistory;

public interface RepairHistoryCcfService {
	List<RepairHistory> repairHistoryCcfList(RepairHistory repairHistory);
	Map<String, Object> saveRepairHistory(RepairHistory repairHistory);
	Map<String, Object> deleteRepairHistory(int repair_idx);
}
