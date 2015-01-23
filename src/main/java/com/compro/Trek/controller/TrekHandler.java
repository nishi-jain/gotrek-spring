package com.compro.Trek.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.compro.Trek.Bo.TrekBo;
import com.compro.Trek.Bo.UserTrekBo;
import com.compro.Trek.form.TrekModel;
import com.compro.Trek.form.TrekUserModel;
import com.compro.Trek.form.UserModel;

@Controller
@EnableTransactionManagement

public class TrekHandler{
	@Autowired
	private TrekBo TrekBoImpl;
	@Autowired
	private UserTrekBo UserTrekBoImpl;
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setTrekBoImpl(TrekBo trekBoImpl) {
		TrekBoImpl = trekBoImpl;
	}

	public void setUserTrekBoImpl(UserTrekBo userTrekBoImpl) {
		UserTrekBoImpl = userTrekBoImpl;
	}


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
	
	

  /*
   Saving new trek and its admin record
  */
	@Transactional 
	@RequestMapping(value="/createtrek.do", method=RequestMethod.POST)
	public String getTrekForm(@ModelAttribute("trekModel") TrekModel trekModel,
			BindingResult result,ModelMap model,HttpServletRequest request){
		TrekBoImpl.save(trekModel); //saving trek details.
		HttpSession session = request.getSession();
		TrekUserModel trekuser=new TrekUserModel();
		TrekModel recenttrek = TrekBoImpl.getTreks();
		UserModel user=(UserModel)session.getAttribute("user"); 
		trekuser.setTrek_id(recenttrek.getTrek_id());
		trekuser.setUser_id(user.getUser_id());
		trekuser.setRole("Admin");
		UserTrekBoImpl.save(trekuser); 
		return "useraccount";
	}
	
	

   /*
    Joining Treks
   */
	
	@Transactional 
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	public String joinTrekForm(@RequestParam("trekname")String Trekname ,
		ModelMap model,HttpServletRequest request){
		
		HttpSession session = request.getSession();
		TrekUserModel trekuser=new TrekUserModel();
		int recenttrek = TrekBoImpl.findTrekID(Trekname);
		UserModel user=(UserModel)session.getAttribute("user"); 
		trekuser.setTrek_id(recenttrek);
		trekuser.setUser_id(user.getUser_id());
		trekuser.setRole("member");
		UserTrekBoImpl.save(trekuser); 
		return "useraccount";
	}
	
	
	/*
	 Get Treks user has joined
	 */
	@SuppressWarnings("null")
	@Transactional 
	@RequestMapping(value="/usertreks.do", method=RequestMethod.GET)
	public String getUserTreks(ModelMap model,HttpServletRequest request){
		HttpSession session = request.getSession();
		UserModel user=(UserModel)session.getAttribute("user");
		List<String> usertreks = TrekBoImpl.getuserTreks(user.getUser_id());
		if(usertreks==null){
			usertreks.add("You have not joined any treks yet.");
		}
		model.addAttribute("userTreks",usertreks);
		return "useraccount";
	}
	
}
