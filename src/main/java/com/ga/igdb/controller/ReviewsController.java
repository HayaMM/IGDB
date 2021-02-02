package com.ga.igdb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ga.igdb.dao.GameDao;
import com.ga.igdb.dao.ReviewsDao;
import com.ga.igdb.model.Reviews;

import org.springframework.core.env.Environment;

@Controller
public class ReviewsController {


	@Autowired 
	private Environment env;
	
	@Autowired
	private ReviewsDao reviewsdao;
	
	@Autowired
	private GameDao gamedao;
	

	
	@Autowired
	HttpServletRequest request;
	
	
	//Get - Review Add
	@GetMapping("/reviews/add")
	public ModelAndView addReview() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reviews/add");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var it = gamedao.findAll();
		mv.addObject("games", it);

		
		return mv;
	}
	
	//Post - Review Add
	@PostMapping("/reviews/add")
	public String addReview(Reviews reviews) {
		reviewsdao.save(reviews);
		
		return "redirect:/reviews/index";
	}
	
	//Get - Review Index
	@GetMapping("/reviews/index")
	public ModelAndView getReview() {
		var it = reviewsdao.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reviews/index");
		mv.addObject("review", it);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var t = gamedao.findAll();
		mv.addObject("games", t);
		
		return mv;
	}
	
	//Get - Review Detail
	@GetMapping("/reviews/detail")
	public ModelAndView ReviewDetails(@RequestParam int id) {
		System.out.println(id);
		
		Reviews reviews = reviewsdao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reviews/detail");
		mv.addObject("review", reviews);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	//Get - Review Edit
	@GetMapping("/reviews/edit")
	public ModelAndView editReview(@RequestParam int id) {
		Reviews reviews = reviewsdao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reviews/edit");
		mv.addObject("review", reviews);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var it = gamedao.findAll();
		mv.addObject("games", it);
		

		return mv;
	}
	
	//Get - Review Delete
	@GetMapping("/reviews/delete")

	public String deleteReview(@RequestParam int id) {		
		reviewsdao.deleteById(id);
		return "redirect:/reviews/index";
	}
	
}
