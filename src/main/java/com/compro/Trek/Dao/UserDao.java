package com.compro.Trek.Dao;

import com.compro.Trek.form.UserModel;

public interface UserDao {
	 
	void save(UserModel user);
	void update(UserModel user);
	void delete(UserModel user);
	UserModel findByUserId(String Email,String Password);
	String findByUserEmail(String Email);
}