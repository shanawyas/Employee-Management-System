package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.UserService;

@RestController
@RequestMapping(value = "user/")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView register(HttpServletRequest request) {
		return new ModelAndView("user/register");
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		return new ModelAndView("user/login");
	}

//	@RequestMapping(value = "welcome", method = RequestMethod.GET)
//	public ModelAndView welcome(HttpServletRequest request) {
//		return new ModelAndView("user/welcome");
//	}

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request) {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public ModelAndView create(HttpServletRequest request) {
		return new ModelAndView("employee/create");
	}

	@RequestMapping(value = "/processregister", method = RequestMethod.POST)
	public ModelAndView processregister(HttpServletRequest request) {
		userService.registerUser(request);
		System.out.println(request.getAttribute("username"));
		return new ModelAndView("user/login");
	}

	@RequestMapping(value = "/processlogin", method = RequestMethod.POST)
	public ModelAndView processlogin(HttpServletRequest request) {
		boolean result = userService.loginUser(request);
		System.out.println("result is " + result);
		if (result) {
			/* return new ModelAndView("redirect:welcome"); */
			 return new ModelAndView("redirect:index"); 
			/* return new ModelAndView("redirect:create"); */
		} else {
			return new ModelAndView("redirect:login");
		}

	}

}
