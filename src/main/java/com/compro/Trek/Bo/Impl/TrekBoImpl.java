package com.compro.Trek.Bo.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.compro.Trek.Bo.TrekBo;
import com.compro.Trek.Dao.TrekDao;
import com.compro.Trek.Dao.Impl.TrekDaoImpl;
import com.compro.Trek.form.TrekModel;


public class TrekBoImpl implements TrekBo {
	@Autowired
	private TrekDao trekDao;
 
	public void setTrekDao(TrekDaoImpl TrekDao) {
		this.trekDao = TrekDao;
	}
 
	public void save(TrekModel Trek){
		trekDao.save(Trek);
	}
 
	public void update(TrekModel Trek){
		trekDao.update(Trek);
	}
 
	public void delete(TrekModel Trek){
		trekDao.delete(Trek);
	}
 
	public TrekModel findByTrekId(String Email,String Password){
		return trekDao.findByTrekId(Email,Password);
	}
	
	public List<TrekModel> getTreks(){
		return trekDao.getTreks();
	}

}
