package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Department;
import com.spring.model.Designation;
import com.spring.service.DesignationService;





@RestController
@RequestMapping(value ="designation")
public class DesignationController {
	@Autowired
	DesignationService designationService;
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("designation/createDesignation");
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Designation de= designationService.save(request);
		return new ModelAndView("designation/createDesignation");
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Designation> designations = designationService.getAll();
	
		return new ModelAndView("designation/showDesignation", "designations", designations);
	}
	
	@RequestMapping(value = "/editDesignation/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Designation de = designationService.getDesignationById(pid);
		return new ModelAndView("designation/editDesignation", "de", de);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Designation de= designationService.updateDesignation(request);
		List<Designation> designations = designationService.getAll();
		return new ModelAndView("designation/showDesignation", "designations", designations);
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Designation de= designationService.delete(pid);
		  List<Designation> designations = designationService.getAll();
	        return new ModelAndView("designation/showDesignation", "designations", designations);
	
	}
	
}
