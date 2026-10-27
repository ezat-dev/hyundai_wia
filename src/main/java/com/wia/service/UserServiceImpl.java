package com.wia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.UserDao;
import com.wia.domain.User;
import com.wia.util.PasswordUtil;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User login(String user_id, String user_pw) {
		User user = userDao.selectUserByLoginId(user_id);
		if (user == null) {
			return null;
		}
		if (!"Y".equals(user.getUse_yn())) {
			return null;
		}
		if (!PasswordUtil.verify(user_pw, user.getUser_pwd())) {
			return null;
		}
		return user;
	}

	@Override
	public User getUserByCode(int user_code) {
		return userDao.selectUserByCode(user_code);
	}

	@Override
	public List<User> getUserList() {
		return userDao.selectUserList();
	}

	@Override
	public Map<String, Object> saveUser(User user) {
		Map<String, Object> result = new HashMap<String, Object>();

		if (user.getUser_code() <= 0) {
			// 신규 등록
			if (user.getUser_id() == null || user.getUser_id().trim().isEmpty()) {
				result.put("success", false);
				result.put("message", "아이디를 입력하세요.");
				return result;
			}
			if (userDao.selectUserIdCount(user.getUser_id()) > 0) {
				result.put("success", false);
				result.put("message", "이미 사용 중인 아이디입니다.");
				return result;
			}
			if (user.getNew_pwd() == null || user.getNew_pwd().trim().isEmpty()) {
				result.put("success", false);
				result.put("message", "비밀번호를 입력하세요.");
				return result;
			}
			user.setUser_pwd(PasswordUtil.hash(user.getNew_pwd()));
			userDao.insertUser(user);
		} else {
			// 수정
			userDao.updateUser(user);
			if (user.getNew_pwd() != null && !user.getNew_pwd().trim().isEmpty()) {
				user.setUser_pwd(PasswordUtil.hash(user.getNew_pwd()));
				userDao.updateUserPassword(user);
			}
		}

		result.put("success", true);
		return result;
	}

	@Override
	public Map<String, Object> deleteUser(int user_code) {
		Map<String, Object> result = new HashMap<String, Object>();
		User target = userDao.selectUserByCode(user_code);
		if (target != null && "Y".equals(target.getAdmin_yn())) {
			result.put("success", false);
			result.put("message", "관리자 계정은 삭제할 수 없습니다.");
			return result;
		}
		userDao.deleteUser(user_code);
		result.put("success", true);
		return result;
	}
}
