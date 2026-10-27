package com.wia.dao;

import java.util.List;
import java.util.Map;

import com.wia.domain.Menu;

public interface PermissionDao {
	List<Menu> selectMenuList();
	List<String> selectUserPermissionCodes(int user_code);
	List<Menu> selectUserPermissionMenus(int user_code);
	void deleteUserPermission(int user_code);
	void insertUserPermission(Map<String, Object> param);
}
