package com.kimmintpod.Service;

import java.util.Iterator;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookieService {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;

	public Cookie get(String name) {
		Cookie[] cookieData = request.getCookies();
		if (cookieData != null) {
			for (Cookie Cookie : cookieData) {
				if (Cookie.getName().equalsIgnoreCase(name)) {
					return Cookie;
				}
			}
		}
		return null;
	}

	public String getValue(String name) {
		Cookie cookie = get(name);
		if (cookie != null) {
			return cookie.getValue();
		} else {
			return "CookieService:Không Có Dữ Liệu!";
		}
	}

	public Cookie add(String name, String value, int hours) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(hours / 24 * 60 * 60);
		cookie.setPath("/");
		response.addCookie(cookie);
		return cookie;
	}

	public void remove(String name) {
		Cookie cookie = get(name);
		if (cookie != null) {
			cookie.setMaxAge(0);
			cookie.setSecure(true);
			cookie.setHttpOnly(true);
			cookie.setPath("/");
			response.addCookie(cookie);
		}
	}
}
