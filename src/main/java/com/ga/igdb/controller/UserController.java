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
	public String registrUser(User user) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");
		// check to user is already registered or not

		var it = dao.findAll();

		for (User dbUser : it) {
			// dbUser from database / user from the new user input
			if (dbUser.getEmailAddress().equals(user.getEmailAddress())) {
				mv.addObject("message", "User already exists");
				return "redirect:/user/signup";		
			}
		}
		// password encryption- need dependency 
		BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		String newPassword = bCrypt.encode(user.getPassWord());
		user.setPassWord(newPassword);
		dao.save(user);
		HttpSession session = request.getSession();
		session.setAttribute("messagereg", "you  have been added registared successfully");
		
		return "redirect:/user/login";		

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
	
	//method for mapping the post log in page and crypt the password to check if 
	//the user exists and the password correct 
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
				
				return "redirect:/user/profile";		
				}
		}
		return "redirect:/user/login";
	}
	//method for mapping the profile page
	@GetMapping("/user/profile")
	public ModelAndView profile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/profile");
		// take user info from game/review table
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	//the method for mapping the edit profile
	@GetMapping("/user/edit")
	public ModelAndView edit() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/edit");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	@PostMapping("/user/edit")
	public ModelAndView edit(User user) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/profile");

		String emailAddress = user.getEmailAddress();
		User userct =  dao.findByEmailAddress(emailAddress);
		user.setCreateAt(userct.getCreateAt());
		dao.save(user);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;	
	}
	
	//method for mapping the logout and redirect to home page
	@GetMapping("/user/logout")
	public String logout() {
		HttpSession session = request.getSession();
		//destroy all the user session info
		session.invalidate();
		
		return "redirect:/";
	}
	
	// method for the user log in session
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
