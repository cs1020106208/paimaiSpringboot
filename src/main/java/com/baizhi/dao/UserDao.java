package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.User;

public interface UserDao {
	

	public List<User> selectAllUser();
	

	public User selectOneUser(int id);


	public void insertUser(User user);		
	

	public void deleteUser(int id);
	

	public void updateUser(User user);	
	

	public User login(User user);
	
}
