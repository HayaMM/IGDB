package com.ga.igdb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired 
	private Environment env;
	
	// HTTP GET REQUEST - Root Route
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("home/index");
		
		setAppName(mv, env);
		return mv;
	}
	
	// Setting an App name (Other common properties)
	public ModelAndView setAppName(ModelAndView mv, @Autowired Environment env) {
		String appName = env.getProperty("app.name");
		mv.addObject("appName", appName);
		mv.addObject("Welcome", "Welcome to our IGDB App");

		return mv;
	}
	
	// taking the url
	 public static String getSiteURL(HttpServletRequest request) {
	        String siteURL = request.getRequestURL().toString();
	        return siteURL.replace(request.getServletPath(), "");
	    }
	
}