package com.kimmintpod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.kimmintpod.interceptor.*;

@Configuration
public class InterCofig implements WebMvcConfigurer {
	@Autowired
	UserInterceptor user;
	@Autowired
	AdminInterceptor admin;
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(user).addPathPatterns("/admin").excludePathPatterns("/Home/**");
		registry.addInterceptor(admin).addPathPatterns("/Home/**").excludePathPatterns("/admin");

	}
}
