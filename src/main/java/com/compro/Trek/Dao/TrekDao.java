package com.compro.Trek.Dao;

import java.util.List;

import com.compro.Trek.form.TrekModel;

public interface TrekDao {
	
	void save(TrekModel trek);
	void update(TrekModel trek);
	void delete(TrekModel trek);
	TrekModel getTreks();
	int findTrekID(String trekname);
	List<String> getuserTreks(int userid);
}
