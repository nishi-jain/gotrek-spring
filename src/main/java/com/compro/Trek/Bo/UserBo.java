package com.compro.Trek.Bo;

import org.springframework.stereotype.Service;

import com.compro.Trek.form.UserModel;
@Service
public interface UserBo {
	 
	void save(UserModel user);
	void update(UserModel user);
	void delete(UserModel user);
	UserModel findByUserId(String Email,String Password);
	String findByUserEmail(String Email);
}