package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Department;
import com.spring.model.Designation;
import com.spring.model.SalaryStructure;
import com.spring.service.DesignationService;
import com.spring.service.EmployeeService;
import com.spring.service.SalaryStructureService;

@RestController
@RequestMapping(value ="salary")
public class SalaryStructureController {
	
	@Autowired
	SalaryStructureService salaryStructureService;
	@Autowired
	DesignationService designationService;

	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create(Model model) {
		List<Designation> designations=designationService.getAll();
		model.addAttribute("designations", designations);
	
		return new ModelAndView("salary/salaryStructure");
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		SalaryStructure s = salaryStructureService.save(request);
		return new ModelAndView("salary/salaryStructure");
	}
	
}
