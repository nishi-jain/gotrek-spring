package com.compro.Trek.Dao;

import com.compro.Trek.form.TrekModel;

public interface TrekDao {
	
	void save(TrekModel trek);
	void update(TrekModel trek);
	void delete(TrekModel trek);
	TrekModel findByTrekId(String Email,String Password);
}
