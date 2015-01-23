package com.compro.Trek.form;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;


public class UserModel implements Serializable{

	private static final long serialVersionUID = 1L;

	private int User_id;
		private String Username;

	private String Email;

	private String Password;
	

	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	
	public int getUser_id() {
		return User_id;
	}
	
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
}
