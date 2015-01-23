package com.compro.Trek.Bo;

import java.util.List;

import org.springframework.stereotype.Service;

import com.compro.Trek.form.TrekModel;

@Service
public interface TrekBo {
	
	void save(TrekModel trek);
	void update(TrekModel trek);
	void delete(TrekModel trek);
	TrekModel getTreks();
	int findTrekID(String trekname);
	List<String> getuserTreks(int userid);
}


