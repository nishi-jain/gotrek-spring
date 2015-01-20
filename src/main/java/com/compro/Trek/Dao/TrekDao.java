package com.compro.Trek.Dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.compro.Trek.form.TrekModel;

public interface TrekDao {
	
	void save(TrekModel trek);
	void update(TrekModel trek);
	void delete(TrekModel trek);
	List<TrekModel> getTreks();
	TrekModel findByTrekId(String Email,String Password);
}
