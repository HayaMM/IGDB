package com.ga.igdb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/user/signup")
	public ModelAndView registration() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/signup");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;

	}

	@PostMapping("/user/signup")
	public ModelAndView registrUser(User user) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");
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
	

	@GetMapping("/user/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	@PostMapping("/user/login")
	public String login(User user) {
		
		BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		String emailAddress = user.getEmailAddress();
		String password = user.getPassWord();
		
		User matchUser = dao.findByEmailAddress(emailAddress);
		if(matchUser != null) {
			if(bCrypt.matches(password,matchUser.getPassWord())) {
				//Session
				HttpSession session = request.getSession();
				//get all the user objects in this session
				session.setAttribute("user", matchUser);
				//get the user role in this session
				session.setAttribute("userRole", matchUser.getUserRole());
				
				return "redirect:/";

				//return "redirect:/user/profile";		
				}
		}
		return "redirect:/user/login";
	}
	

	@GetMapping("/user/logout")
	public String logout() {
		HttpSession session = request.getSession();
		//destroy all the user session info
		session.invalidate();
		
		return "redirect:/user/login";
	}
	
	public boolean isUserLoggedIn() {
		HttpSession session = request.getSession();

		if(session.getAttribute("user")== null) {
			return false;
			
		}
		else {
			return true;
		}
	}
}
