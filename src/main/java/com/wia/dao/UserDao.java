package com.wia.dao;

import java.util.List;

import com.wia.domain.User;

public interface UserDao {
	User selectUserByLoginId(String user_id);
	User selectUserByCode(int user_code);
	int selectUserIdCount(String user_id);
	List<User> selectUserList();
	void insertUser(User user);
	void updateUser(User user);
	void updateUserPassword(User user);
	void deleteUser(int user_code);
}
