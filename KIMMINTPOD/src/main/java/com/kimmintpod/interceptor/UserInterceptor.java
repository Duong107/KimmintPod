package com.kimmintpod.interceptor;

import java.io.IOException;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.*;
import com.kimmintpod.Entity.*;
import com.kimmintpod.Repository.*;
import com.kimmintpod.Service.*;
@Component
public class UserInterceptor implements HandlerInterceptor {
	@Autowired
	CookieService cookieService;
	@Autowired
	AccountsRepository accountsRepository;
	@Autowired
	SessionService session;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws IOException {
		try {
			boolean role = (boolean) request.getSession().getAttribute("Role");
			if (role) {
				return true;
			}
		} catch (Exception e) {
		}
		response.sendRedirect("/Error?ref=404");
		return false;
	}
}
