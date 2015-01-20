package com.compro.Trek.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.compro.Trek.Bo.UserBo;
import com.compro.Trek.form.UserModel;


@Controller
public class NewUser{
	@Autowired
	private UserBo UserBoImpl;

	public void setUserbo(UserBo UserBoImpl) {
		this.UserBoImpl=UserBoImpl;
	}


	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String getInputForm(@RequestParam("Username")String userName,@RequestParam("Email") String userEmail,@RequestParam("Password") String userPassword,ModelMap model,RedirectAttributes redirectAttrs,HttpServletRequest request) {
		UserModel user =new UserModel();
		String exists;
		user.setUsername(userName);
		user.setEmail(userEmail);
		user.setPassword(userPassword);
		System.out.println(user);
		exists=UserBoImpl.findByUserEmail(userEmail);
		if(exists=="true"){
			user.setEmail("already exists!");
			model.addAttribute("usertest",user);
			return "error";
		}else{
			UserBoImpl.save(user);
			redirectAttrs.addFlashAttribute("user",user);
			return "redirect:/account.do";
		}
	}

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String getUserAccount(@RequestParam("Email")String Email,@RequestParam("Password")String Password,ModelMap model,RedirectAttributes redirectAttrs,HttpServletRequest request){

		UserModel userTest = new UserModel();
		userTest=UserBoImpl.findByUserId(Email,Password);
		if(userTest.getEmail()=="invalid"||userTest.getPassword()=="invalid"){
			model.addAttribute("usertest",userTest);
			return "error" ;
		}
		else{
			HttpSession session = request.getSession();
			session.setAttribute("user",userTest);
			redirectAttrs.addFlashAttribute("user", userTest);
			return "redirect:/account.do";
		}

	}

	/*  Checks any existing sessions,If session exists then directs
	    to user account.
	 */

	@RequestMapping(value="/welcome.do")
	public String getExistingSession(HttpServletRequest request){
		Cookie[] cookies = request.getCookies();
		String cookieName = "currentSessionEmail"; //cookie created for user session
		String cookieUser = "currentSessionName";
		int status=1;
		for (int i=0; i<cookies.length; i++) {
			Cookie cookie = cookies[i];
			if (cookieName.equals(cookie.getName())){
				status=2;
				break;
			}
		}
		if(status==2){
			UserModel userTest = new UserModel();
			for (int i=0; i<cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookieUser.equals(cookie.getName())){
					String name=cookie.getValue();
					userTest.setUsername(name);
					HttpSession session = request.getSession();
					session.setAttribute("user",userTest);
				
				}
			}
			return "redirect:/account.do";
			
		}else{
			return "index";
		}

	}
}
