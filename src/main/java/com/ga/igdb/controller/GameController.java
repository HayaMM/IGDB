package com.ga.igdb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ga.igdb.dao.GameDao;
//import com.ga.igdb.dao.ReviewsDao;
import com.ga.igdb.model.Game;


@Controller
public class GameController {

	@Autowired 
	private Environment env;
	
	@Autowired
	private GameDao gdao;
	
//	@Autowired
//	private ReviewsDao rdao;
	
	// get route add game
	@GetMapping("/game/add")
	public ModelAndView addGame() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("game/add");
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	// post the form  add game 
	@PostMapping("/game/add")
	public String addGame(Game game) {
		gdao.save(game);
		return "redirect:/game/index";
	}
	
	// get route game index
	@GetMapping("/game/index")
	public ModelAndView getGame() {
		
		var it = gdao.findAll();
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("game/index");
	    mv.addObject("games", it);
	    
//	    var itr= rdao.findAll();
//	    mv.addObject("review", itr);
	    HomeController hc = new HomeController();
	    hc.setAppName(mv, env);
	    return mv;
	}
	
	// get route game details  
	@GetMapping("/game/detail")
	public ModelAndView gameDetails(@RequestParam int id) {
		Game game=gdao.findById(id);
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("game/detail");
	    mv.addObject("game", game);
	    HomeController hc = new HomeController();
	    hc.setAppName(mv, env);
	    return mv;
	}
	
	// get route edit game
	@GetMapping("/game/edit")
	public ModelAndView editGame(@RequestParam int id) {
		Game game=gdao.findById(id);
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("game/edit");
	    mv.addObject("game", game);
	    
//		var itr = rdao.findAll();
//		mv.addObject("review", itr);
	    HomeController hc = new HomeController();
	    hc.setAppName(mv, env);
	    return mv;
	}
	
	// get route delete game
	@GetMapping("/game/delete")
	public String deleteGame(@RequestParam int id) {
		gdao.deleteById(id);
		return "redirect:/game/index";
	}

}
