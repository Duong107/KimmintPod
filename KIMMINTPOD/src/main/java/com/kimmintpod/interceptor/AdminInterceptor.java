package com.kimmintpod.interceptor;

import java.io.IOException;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.*;

import com.kimmintpod.Controller.HomeController;
import com.kimmintpod.Entity.Accounts;
import com.kimmintpod.Repository.AccountsRepository;
import com.kimmintpod.Service.CookieService;
import com.kimmintpod.Service.SessionService;

@Component
public class AdminInterceptor implements HandlerInterceptor {
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
				response.sendRedirect("/admin");
				return false;
			}
		} catch (Exception e) {
			return true;
		}
		return true;
	}
}
