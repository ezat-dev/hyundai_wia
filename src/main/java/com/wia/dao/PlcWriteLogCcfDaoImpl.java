package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.PlcWriteLog;

@Repository
public class PlcWriteLogCcfDaoImpl implements PlcWriteLogCcfDao {

	@Resource(name="sessionEzScada")
	private SqlSession sqlSession;

	@Override
	public void insertLog(PlcWriteLog plcWriteLog) {
		sqlSession.insert("plcWriteLogCcf.insertLog", plcWriteLog);
	}

	@Override
	public List<PlcWriteLog> plcWriteLogCcfList(PlcWriteLog plcWriteLog) {
		return sqlSession.selectList("plcWriteLogCcf.plcWriteLogCcfList", plcWriteLog);
	}

}
