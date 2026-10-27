package com.wia.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.Menu;

@Repository
public class PermissionDaoImpl implements PermissionDao {

	@Resource(name = "session")
	private SqlSession sqlSession;

	@Override
	public List<Menu> selectMenuList() {
		return sqlSession.selectList("permission.selectMenuList");
	}

	@Override
	public List<String> selectUserPermissionCodes(int user_code) {
		return sqlSession.selectList("permission.selectUserPermissionCodes", user_code);
	}

	@Override
	public List<Menu> selectUserPermissionMenus(int user_code) {
		return sqlSession.selectList("permission.selectUserPermissionMenus", user_code);
	}

	@Override
	public void deleteUserPermission(int user_code) {
		sqlSession.delete("permission.deleteUserPermission", user_code);
	}

	@Override
	public void insertUserPermission(Map<String, Object> param) {
		sqlSession.insert("permission.insertUserPermission", param);
	}
}
