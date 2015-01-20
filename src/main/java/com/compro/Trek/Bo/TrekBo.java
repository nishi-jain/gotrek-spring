package com.compro.Trek.Bo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.compro.Trek.form.TrekModel;

@Service
public interface TrekBo {
	
	void save(TrekModel trek);
	void update(TrekModel trek);
	void delete(TrekModel trek);
	List<TrekModel> getTreks();
	TrekModel findByTrekId(String Email,String Password);
}


