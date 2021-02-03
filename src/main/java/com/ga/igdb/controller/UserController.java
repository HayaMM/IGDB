package com.ga.igdb.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ga.igdb.dao.UserDao;
import com.ga.igdb.model.User;


@Controller
public class UserController {

	@Autowired
	private Environment env;

	@Autowired
	private UserDao dao;
	
	@Autowired
	HttpServletRequest request;
	
	//method for mapping the sign up page
	
	@GetMapping("/user/signup")
	public ModelAndView registration() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/signup");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;

	}
//method foe mapping the post sign up and check if the user exists or it is new account 
	//and crypt the password
	@PostMapping("/user/signup")
	public ModelAndView registrUser(User user) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("home/index");
		// check to user is already registered or not

		var it = dao.findAll();

		for (User dbUser : it) {
			// dbUser from database / user from the new user input
			if (dbUser.getEmailAddress().equals(user.getEmailAddress())) {
				mv.addObject("message", "User already exists");
				return mv;
			}
		}
		// password encryption- need dependency 
		BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		String newPassword = bCrypt.encode(user.getPassWord());
		user.setPassWord(newPassword);
		dao.save(user);
		HttpSession session = request.getSession();
		session.setAttribute("messagereg", "you  have been added registared successfully");
		
		return mv;

	}
	
// method for mapping the log in page
	@GetMapping("/user/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	
	//method for mapping the profile page
	@GetMapping("/user/profile")
	public ModelAndView profile(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/profile");
		User user = dao.findById(id); 
	    mv.addObject("user", user);
	    
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	//the method for mapping the edit profile
	@GetMapping("/user/edit")
	public ModelAndView edit(@RequestParam int id) {
		User user = dao.findById(id); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/edit");
	    mv.addObject("user", user);

		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	@PostMapping("/user/edit")
	public String edit(User user,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		  
		
		String emailAddress = user.getEmailAddress();
		User userct =  dao.findByEmailAddress(emailAddress);
		user.setCreateAt(userct.getCreateAt());
		dao.save(user);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return "redirect:/user/profile";
		}
	
	
}
