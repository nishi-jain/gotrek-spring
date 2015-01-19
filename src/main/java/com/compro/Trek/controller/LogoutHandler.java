package com.compro.Trek.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



/*
 Logout from existing session and removes any session related cookies
 */

@Controller
public class LogoutHandler {
	
	@RequestMapping(value="/logout.do")
	public String Logout(HttpSession session,HttpServletRequest request,HttpServletResponse response){
			
		Cookie[] cookies = request.getCookies();
		String cookieName="currentSessionEmail";

	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookieName.equals(cookie.getName())) {
	                cookie.setValue(null);
	                cookie.setMaxAge(0);
	                response.addCookie(cookie);
	            }
	        }
	    }
	         session.invalidate();
	         return "redirect:/";
	}

}
