package com.ga.igdb.test;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class API {

	// HTTP GET REQUEST
	@GetMapping("/home")
	public String hello() {
		return "Our App Working Fine";
	}


}
