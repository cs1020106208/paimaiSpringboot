package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.User;

public interface UserService {
//ѯ��ȫ��
	public List<User> selectAllUser();
	
//��ѯһ��
	public User selectOneUser(int id);
	
	//��½
	public User login(User user);
	

//����û�
	public void insertUser(User user);		
	
//ɾ���û�
	public void deleteUser(int id);
	
//�޸��û�
	public void updateUser(User user);
}
