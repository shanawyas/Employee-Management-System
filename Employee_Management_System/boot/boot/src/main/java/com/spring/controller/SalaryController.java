package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Salary;
import com.spring.service.SalaryService;
@RestController
@RequestMapping(value ="salary")
public class SalaryController {
	
	@Autowired
	SalaryService salaryService;
	
	@RequestMapping(value = "/showAllSalary", method = RequestMethod.GET)
	public ModelAndView viewSal(HttpServletRequest request) {
		
		
		 List<Salary> salaries = salaryService.getAll(); 
	
		return new ModelAndView("salary/showSal", "salaries", salaries);
	}
	
	
	@RequestMapping(value = "/showSal", method = RequestMethod.POST)
	public ModelAndView view(HttpServletRequest request) {
		System.out.println(request.getParameter("month")+" "+request.getParameter("year"));
		 List<Salary> salaries = salaryService.getSalByMonthYear(request);
		
		/* List<Salary> salaries = salaryService.getAll(); */
	
		return new ModelAndView("salary/showSal", "salaries", salaries);
	}

}
