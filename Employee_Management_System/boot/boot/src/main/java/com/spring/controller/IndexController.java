package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class IndexController {
	
	  @RequestMapping(value = "/login", method = RequestMethod.GET) 
	  public ModelAndView login(@RequestParam(value = "error", required = false) String error,@RequestParam(value = "/logout", required = false) String logout) {
		  
	  ModelAndView model = new ModelAndView(); 
		  if (error != null) {
		  model.addObject("error", "Invalid username and/or password!"); 
	  } 
	  
	  if (logout != null) { 
		  System.out.println(">>>>>>"); 
		  model.addObject("msg", "You've been logged out successfully."); } 
	      model.setViewName("login");
	      return model; 
	 
	   
	  
	  }
	  
	  
	  
	  @RequestMapping(value = "/logout", method = RequestMethod.GET) 
	  public ModelAndView logout() { 
	  ModelAndView model = new ModelAndView();
	  model.addObject("msg", "You've been logged out successfully.");
	  model.setViewName("login"); return model; 
	  
	  }
	  
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/employee")
	public String create() {
		return "create";
	}


	
	@RequestMapping("/hello")
	public String hello() {
	return "index";
	
	}

	@RequestMapping("/login")
	public String reg() {
	return "login";
	
	}
}
