package com.wia.service;

import java.util.List;
import java.util.Map;

import com.wia.domain.User;

public interface UserService {
	User login(String user_id, String user_pw);
	User getUserByCode(int user_code);
	List<User> getUserList();
	Map<String, Object> saveUser(User user);
	Map<String, Object> deleteUser(int user_code);
}
