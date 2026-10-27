package com.wia.service;

import java.util.List;

import com.wia.domain.PlcWriteLog;

public interface PlcWriteLogCcfService {

	void insertLog(PlcWriteLog plcWriteLog);

	List<PlcWriteLog> plcWriteLogCcfList(PlcWriteLog plcWriteLog);

}
