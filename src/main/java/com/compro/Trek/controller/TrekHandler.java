package com.compro.Trek.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.compro.Trek.Bo.TrekBo;
import com.compro.Trek.form.TrekModel;
import com.compro.Trek.form.UserModel;

@Controller
@EnableTransactionManagement

public class TrekHandler{
	@Autowired
	private TrekBo TrekBoImpl;
	
	public void setTrekbo(TrekBo TrekBoImpl) {
		this.TrekBoImpl=TrekBoImpl;
	}
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(TrekModel Trek){
		sessionFactory.getCurrentSession().save(Trek);
	}
	
	@ModelAttribute("trekModel")
	 public ModelMap getTrekModelObject(ModelMap model) {
	  model.addAttribute("trekModel",new TrekModel());
	  return model;
	 }
	
	
	@Transactional 
	@RequestMapping(value="/createtrek.do", method=RequestMethod.POST)
	public String getTrekForm(@ModelAttribute("trekModel") TrekModel trekModel,
            BindingResult result) {
		
			TrekBoImpl.save(trekModel); //saving trek details.
            	return "forward:/usertrekxref.do";
	}
	
	@Transactional
	@RequestMapping(value="/usertrekxref.do")
	public String updateUserTrekXref(@ModelAttribute("trekModel") TrekModel trekModel,
            BindingResult result,ModelMap model,HttpServletRequest request){
		Session sf = sessionFactory.getCurrentSession();
    //    sf.beginTransaction();
        HttpSession session = request.getSession();
		UserModel user=(UserModel)session.getAttribute("user"); 
		user.getTreks().add(trekModel);//updating trek record in trek admin table
		
		return "useraccount";
		
		
	}
}
