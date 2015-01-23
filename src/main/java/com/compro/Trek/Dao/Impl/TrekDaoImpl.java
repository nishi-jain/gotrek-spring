package com.compro.Trek.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
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

	@Transactional
	public int findTrekID(String trekname){
		@SuppressWarnings("unchecked")
		List<TrekModel> result = sessionFactory.getCurrentSession().createQuery("from TrekModel where trek_name='"+trekname+"'").list();
		TrekModel recenttrek = result.get(0);
		int trekid=recenttrek.getTrek_id();
		return trekid;
     }
	
	@Transactional
	public TrekModel getTreks(){
		TrekModel recenttrek = (TrekModel) sessionFactory.getCurrentSession().createQuery("from TrekModel ORDER BY trek_id DESC")
                .setMaxResults(1)
                .uniqueResult();
		
		return recenttrek;
		
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getuserTreks(int userid){
		@SuppressWarnings("unchecked")
		List<TrekModel> result=sessionFactory.getCurrentSession().createQuery("Select T.trek_id from TrekUserModel T where T.user_id='"+userid+"'").list();
		List<String> trekList = null;
		for(int i=0; i<result.size();i++){
			trekList=sessionFactory.getCurrentSession().createQuery("Select Y.trekname from TrekModel Y where Y.trek_id='"+result.get(i)+"'").list();
		}
	
		return trekList;
		
	}

}
