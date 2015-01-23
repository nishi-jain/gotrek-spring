package com.compro.Trek.Dao.Impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.compro.Trek.Dao.UserTrekDao;
import com.compro.Trek.form.TrekUserModel;


@Repository
public class UserTrekDaoImpl  implements UserTrekDao{

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(TrekUserModel trekuser){
		sessionFactory.getCurrentSession().save(trekuser);
	}

	@Transactional
	public void update(TrekUserModel trekuser){
		sessionFactory.getCurrentSession().update(trekuser);
	}

	@Transactional
	public void delete(TrekUserModel trekuser){
		sessionFactory.getCurrentSession().delete(trekuser);
	}
}
	