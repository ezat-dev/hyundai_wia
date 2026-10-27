package com.wia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.RepairHistoryCcfDao;
import com.wia.domain.RepairHistory;

@Service
public class RepairHistoryCcfServiceImpl implements RepairHistoryCcfService {

	@Autowired
	private RepairHistoryCcfDao repairHistoryCcfDao;

	@Override
	public List<RepairHistory> repairHistoryCcfList(RepairHistory repairHistory) {
		return repairHistoryCcfDao.repairHistoryCcfList(repairHistory);
	}

	@Override
	public Map<String, Object> saveRepairHistory(RepairHistory repairHistory) {
		Map<String, Object> result = new HashMap<String, Object>();

		if (repairHistory.getEquip_name() == null || repairHistory.getEquip_name().trim().isEmpty()
				|| repairHistory.getWorker_name() == null || repairHistory.getWorker_name().trim().isEmpty()
				|| repairHistory.getRepair_content() == null || repairHistory.getRepair_content().trim().isEmpty()
				|| repairHistory.getRepair_date() == null || repairHistory.getRepair_date().trim().isEmpty()) {
			result.put("success", false);
			result.put("message", "수리일자, 설비명, 작업자, 수리내용은 필수입니다.");
			return result;
		}

		if (repairHistory.getRepair_idx() > 0) {
			repairHistoryCcfDao.updateRepairHistory(repairHistory);
		} else {
			repairHistoryCcfDao.insertRepairHistory(repairHistory);
		}
		result.put("success", true);
		return result;
	}

	@Override
	public Map<String, Object> deleteRepairHistory(int repair_idx) {
		Map<String, Object> result = new HashMap<String, Object>();
		repairHistoryCcfDao.deleteRepairHistory(repair_idx);
		result.put("success", true);
		return result;
	}
}
