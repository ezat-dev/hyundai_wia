package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Resource(name = "session")
	private SqlSession sqlSession;

	@Override
	public User selectUserByLoginId(String user_id) {
		return sqlSession.selectOne("user.selectUserByLoginId", user_id);
	}

	@Override
	public User selectUserByCode(int user_code) {
		return sqlSession.selectOne("user.selectUserByCode", user_code);
	}

	@Override
	public int selectUserIdCount(String user_id) {
		return sqlSession.selectOne("user.selectUserIdCount", user_id);
	}

	@Override
	public List<User> selectUserList() {
		return sqlSession.selectList("user.selectUserList");
	}

	@Override
	public void insertUser(User user) {
		sqlSession.insert("user.insertUser", user);
	}

	@Override
	public void updateUser(User user) {
		sqlSession.update("user.updateUser", user);
	}

	@Override
	public void updateUserPassword(User user) {
		sqlSession.update("user.updateUserPassword", user);
	}

	@Override
	public void deleteUser(int user_code) {
		sqlSession.delete("user.deleteUser", user_code);
	}
}
