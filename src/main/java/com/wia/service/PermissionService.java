package com.wia.service;

import java.util.List;

import com.wia.domain.Menu;

public interface PermissionService {
	List<Menu> getMenuList();
	List<String> getUserPermissionCodes(int user_code);
	List<Menu> getUserPermissionMenus(int user_code);
	void saveUserPermission(int user_code, List<String> menuCodes);
}
