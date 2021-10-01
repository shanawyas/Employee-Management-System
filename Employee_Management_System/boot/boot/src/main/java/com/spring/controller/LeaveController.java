package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Employee;
import com.spring.model.Leave;

import com.spring.service.LeaveService;


@RestController
@RequestMapping(value ="employee")
public class LeaveController {
	@Autowired
	LeaveService leaveService;
	
	@RequestMapping(value = "/leaveRequest", method = RequestMethod.GET)
	public ModelAndView viewLeave(HttpServletRequest request) {
		
		
		 List<Leave> leaves = leaveService.getAll(); 
	
		 return new ModelAndView("employee/leaveRequest", "leaves", leaves);
	}
	
	
	
	  @RequestMapping(value = "/deletel/{id}", method = RequestMethod.GET) public
	  ModelAndView delete(@PathVariable String id) { int pid = Integer.valueOf(id);
	  Leave l = leaveService.deletel(pid); 
	  List<Leave> leaves =leaveService.getAll(); 
	  return new ModelAndView("employee/leaveRequest", "leaves", leaves);
	  
	  }
	  
		@RequestMapping(value = "/updatel/{id}")
		public ModelAndView update(@PathVariable String id) {
			Leave l = leaveService.updatel(id);
			 List<Leave> leaves = leaveService.getAll(); 
			return new ModelAndView("employee/leaveRequest", "leaves", leaves);
		}
	 
		@RequestMapping(value = "/ApprovedLeave", method = RequestMethod.GET)
		public ModelAndView approvedLeave(HttpServletRequest request) {
			
			
			 List<Leave> leaves = leaveService.getApproved(); 
		
			 return new ModelAndView("employee/ApprovedLeave", "leaves", leaves);
		}
	
}
