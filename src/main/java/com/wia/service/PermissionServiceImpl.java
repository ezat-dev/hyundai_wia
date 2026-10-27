package com.wia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.PermissionDao;
import com.wia.domain.Menu;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionDao permissionDao;

	@Override
	public List<Menu> getMenuList() {
		return permissionDao.selectMenuList();
	}

	@Override
	public List<String> getUserPermissionCodes(int user_code) {
		return permissionDao.selectUserPermissionCodes(user_code);
	}

	@Override
	public List<Menu> getUserPermissionMenus(int user_code) {
		return permissionDao.selectUserPermissionMenus(user_code);
	}

	@Override
	public void saveUserPermission(int user_code, List<String> menuCodes) {
		permissionDao.deleteUserPermission(user_code);
		if (menuCodes != null && !menuCodes.isEmpty()) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("user_code", user_code);
			param.put("menuCodes", menuCodes);
			permissionDao.insertUserPermission(param);
		}
	}
}
