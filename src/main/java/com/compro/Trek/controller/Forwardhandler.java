package com.compro.Trek.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.compro.Trek.form.TrekModel;
import com.compro.Trek.form.UserModel;



@Controller
@SessionAttributes("user")
public class Forwardhandler {

	@RequestMapping(value="account.do")
	public String getUserAccount(@ModelAttribute("user") UserModel user,ModelMap model,HttpServletRequest request,HttpServletResponse response){
		String userEmail=user.getEmail();
		String userName=user.getUsername();
		Cookie ckEmail = new Cookie("currentSessionEmail",userEmail);
		Cookie ckName = new Cookie("currentSessionUsername",userName);
		response.addCookie(ckName);
		response.addCookie(ckEmail);
		model.addAttribute("user",user);
		model.addAttribute("trekModel",new TrekModel());
		return "useraccount";
	}
}

