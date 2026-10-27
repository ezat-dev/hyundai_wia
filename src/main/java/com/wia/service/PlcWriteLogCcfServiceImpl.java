package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.PlcWriteLogCcfDao;
import com.wia.domain.PlcWriteLog;

@Service
public class PlcWriteLogCcfServiceImpl implements PlcWriteLogCcfService {

	@Autowired
	private PlcWriteLogCcfDao plcWriteLogCcfDao;

	@Override
	public void insertLog(PlcWriteLog plcWriteLog) {
		plcWriteLogCcfDao.insertLog(plcWriteLog);
	}

	@Override
	public List<PlcWriteLog> plcWriteLogCcfList(PlcWriteLog plcWriteLog) {
		return plcWriteLogCcfDao.plcWriteLogCcfList(plcWriteLog);
	}

}
