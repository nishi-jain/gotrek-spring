package com.compro.Trek.Bo.Impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.compro.Trek.Bo.UserBo;
import com.compro.Trek.Dao.UserDao;
import com.compro.Trek.Dao.Impl.UserDaoImpl;
import com.compro.Trek.form.UserModel;


public class UserBoImpl implements UserBo{
	@Autowired
	private UserDao userDao;
 
	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
 
	public void save(UserModel user){
		userDao.save(user);
	}
 
	public void update(UserModel user){
		userDao.update(user);
	}
 
	public void delete(UserModel user){
		userDao.delete(user);
	}
 
	public UserModel findByUserId(String Email,String Password){
		return userDao.findByUserId(Email,Password);
	}
	
	public String findByUserEmail(String Email){
		return userDao.findByUserEmail(Email);
	}
}