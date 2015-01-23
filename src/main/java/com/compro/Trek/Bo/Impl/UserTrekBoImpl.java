package com.compro.Trek.Bo.Impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.compro.Trek.Bo.UserTrekBo;
import com.compro.Trek.Dao.UserTrekDao;
import com.compro.Trek.form.TrekUserModel;

public class UserTrekBoImpl implements UserTrekBo {
	@Autowired
	private UserTrekDao userTrek;
 
	public void setUserDao(UserTrekDao userTrek) {
		this.userTrek = userTrek;
	}
 
	public void save(TrekUserModel trekuser){
		userTrek.save(trekuser);
	}
 
	public void update(TrekUserModel trekuser){
		userTrek.update(trekuser);
	}
 
	public void delete(TrekUserModel trekuser){
		userTrek.delete(trekuser);
	}
 

}
