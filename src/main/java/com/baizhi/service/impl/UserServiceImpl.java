package com.baizhi.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	//添加
	@Override
	public void insertUser(User user) {
		userDao.insertUser(user);
	}

	//查询全部
	@Override
	public List<User> selectAllUser() {
		return userDao.selectAllUser();
	}

	//查询一个
	@Override
	public User selectOneUser(int id) {
		return userDao.selectOneUser(id);
	}
	
	//删除
	@Override
	public void deleteUser(int id) {
			userDao.deleteUser(id);
	}

	//修改
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	@Override
	public User login(User user) {
		return userDao.login(user);
	}

}
