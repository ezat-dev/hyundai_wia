package com.wia.dao;

import java.util.List;

import com.wia.domain.PlcWriteLog;

public interface PlcWriteLogCcfDao {

	void insertLog(PlcWriteLog plcWriteLog);

	List<PlcWriteLog> plcWriteLogCcfList(PlcWriteLog plcWriteLog);

}
