package com.compro.Trek.Dao.Impl;



import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.compro.Trek.Dao.UserDao;
import com.compro.Trek.form.UserModel;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(UserModel user){
		sessionFactory.getCurrentSession().save(user);
	}

	@Transactional
	public void update(UserModel user){
		sessionFactory.getCurrentSession().update(user);
	}

	@Transactional
	public void delete(UserModel user){
		sessionFactory.getCurrentSession().delete(user);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public UserModel findByUserId(String Email,String Password){
		UserModel user = new UserModel();
		List<UserModel> results;
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(UserModel.class);
		results=cr.add(Restrictions.eq("Email",Email)).list();
		if(results.size()== 0){
			user.setEmail("invalid");
			return user;
		}else{
		results=cr.add(Restrictions.eq("Email",Email)).add(Restrictions.eq("Password",Password)).list();
			if(results.size()==0){
				user.setPassword("invalid");
				return user;
			}
		}
		return (UserModel)results.get(0);
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public String findByUserEmail(String Email){

		String exists="false";
		List<UserModel> results;
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(UserModel.class);
		results=cr.add(Restrictions.eq("Email",Email)).list();
		if(results.size()!=0){
			exists="true";
		}
		return exists;
		
	}

}