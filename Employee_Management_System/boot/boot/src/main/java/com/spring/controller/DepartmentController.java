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
import com.spring.model.Employee;
import com.spring.service.DepartmentService;
import com.spring.service.EmployeeService;

@RestController
@RequestMapping(value ="department")
public class DepartmentController {
	@Autowired
	DepartmentService departmentService;
	
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("department/createDepartment");
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Department d = departmentService.save(request);
		return new ModelAndView("department/createDepartment");
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Department> departments = departmentService.getAll();
	
		return new ModelAndView("department/showDepartment", "departments", departments);
	}

	@RequestMapping(value = "/editDepartment/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Department d = departmentService.getDepartmentById(pid);
		return new ModelAndView("department/editDepartment", "d", d);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Department d= departmentService.updateDepartment(request);
		List<Department> departments = departmentService.getAll();
		return new ModelAndView("department/showDepartment", "departments", departments);
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Department d= departmentService.delete(pid);
		  List<Department> departments = departmentService.getAll();
	        return new ModelAndView("department/showDepartment", "departments", departments);
	
	}
	
}
