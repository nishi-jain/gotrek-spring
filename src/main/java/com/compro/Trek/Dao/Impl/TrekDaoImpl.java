package com.compro.Trek.Dao.Impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.compro.Trek.Dao.TrekDao;
import com.compro.Trek.form.TrekModel;

public class TrekDaoImpl implements TrekDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(TrekModel Trek){
		sessionFactory.getCurrentSession().save(Trek);
	}

	@Transactional
	public void update(TrekModel Trek){
		sessionFactory.getCurrentSession().update(Trek);
	}

	@Transactional
	public void delete(TrekModel Trek){
		sessionFactory.getCurrentSession().delete(Trek);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public TrekModel findByTrekId(String Email,String Password){

		Criteria cr = sessionFactory.getCurrentSession().createCriteria(TrekModel.class);
		cr.add(Restrictions.eq("Email",Email)).add(Restrictions.eq("Password",Password));
		List<TrekModel> results = cr.list();
		return (TrekModel)results.get(0); 
	}

}
