package com.compro.Trek.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class NoCacheInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response,Object handler) throws Exception{
		HttpSession session = request.getSession();
		if (session.getAttribute("user")==null){
			response.sendRedirect("/trekfun");
			return false;
		}else
			//if returned false, we need to make sure 'response' is sent
			return true;
	}
}
