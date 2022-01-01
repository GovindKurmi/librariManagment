package com.gk.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class StudentIntilization implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
		context.register(AdminConfig.class);
		servletContext.addListener(new ContextLoaderListener(context));
		ServletRegistration.Dynamic dispacher = servletContext.addServlet("dishpacher", new DispatcherServlet(context));
		dispacher.setLoadOnStartup(1);
		dispacher.addMapping("/");
	}

}