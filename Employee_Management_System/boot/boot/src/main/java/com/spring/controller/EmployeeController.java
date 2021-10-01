package com.spring.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.controller.impl.IEmployeeController;
import com.spring.model.Attendence;
import com.spring.model.Department;
import com.spring.model.Designation;
import com.spring.model.Employee;
import com.spring.model.Salary;
import com.spring.model.SalaryStructure;
import com.spring.service.AttendenceService;
import com.spring.service.DepartmentService;
import com.spring.service.DesignationService;
import com.spring.service.EmployeeService;
import com.spring.service.SalaryService;
import com.spring.service.SalaryStructureService;

@RestController
@RequestMapping(value ="employee")
public class EmployeeController implements IEmployeeController{

	@Autowired
	EmployeeService employeeService;
	@Autowired
	DepartmentService departmentService;
	@Autowired
	DesignationService designationService;
	@Autowired
	AttendenceService attendenceService;
	@Autowired
	SalaryService salaryService;
	
	List<Employee> employees;
	
	@Autowired
	SalaryStructureService salaryStructureService;

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create( Model model) {
		List<Department> departments=departmentService.getAll();
		for(Department d: departments) {
			System.out.println(d.getDeptname());
		}
		List<Designation> designations=designationService.getAll();
		model.addAttribute("designations", designations);
		model.addAttribute("departments", departments);
		return new ModelAndView("employee/create");
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request,  @RequestParam("photo") MultipartFile photo) 
			throws IOException{
		Employee e = employeeService.save(request, photo);
		return new ModelAndView("employee/create");
	}
	@Override
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Employee e = employeeService.getProductById(pid);

		return new ModelAndView("employee/edit", "e", e);
	}
	@Override
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Employee e = employeeService.update(request);
		List<Employee> employees = employeeService.getAll();
		return new ModelAndView("employee/show", "employees", employees);
	}
	@Override
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Employee e = employeeService.delete(pid);
		  List<Employee> employees = employeeService.getAll();
	        return new ModelAndView("employee/show", "employees", employees);
	
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Employee> employees = employeeService.getAll();
		System.out.println(employees);
		return new ModelAndView("employee/show", "employees", employees);
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public List<Employee> view1() {
		List<Employee> employees = employeeService.getAll();
		return employees;
	}

	@RequestMapping(value = "/editSalary/{id}", method = RequestMethod.GET)
	public ModelAndView edit2(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Employee e = employeeService.getProductById(pid);
		return new ModelAndView("employee/editSalary", "e", e);
	}
	
	@RequestMapping(value = "/showSalary",method = RequestMethod.GET)
	public ModelAndView view2() {
		List<Employee> employees = employeeService.getAll();
		List<SalaryStructure> structure = salaryStructureService.getAll();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("employees", employees);
		map.put("structure", structure);
 		
		return new ModelAndView("employee/showSalary", "map", map);
	}
	
	@RequestMapping(value = "/updateSal", method = RequestMethod.POST)
	public ModelAndView updateSal(HttpServletRequest request) {
		Employee e = employeeService.updateSal(request);
		List<Employee> employees = employeeService.getAll();
		return new ModelAndView("employee/show", "employees", employees);
	}
	
	@RequestMapping(value = "/showLeave",method = RequestMethod.GET)
	public ModelAndView updateLeave(HttpServletRequest request) {
		List<Employee> employees = employeeService.getAll();
	
	
		return new ModelAndView("employee/showLeave", "employees", employees);
	}

	
	@RequestMapping(value = "/createLeave/{id}", method = RequestMethod.GET)
	public ModelAndView edit3(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Employee e = employeeService.getProductById(pid);
		return new ModelAndView("employee/createLeave", "e", e);
	}
	
	@RequestMapping(value = "/applyLeave",method = RequestMethod.POST)
	public ModelAndView applyLeave(HttpServletRequest request) {
		
		Employee e = employeeService.applyLeave(request);
	
		List<Employee> employees = employeeService.getAll();
		
		
		return new ModelAndView("employee/showLeave", "employees", employees);
	}
	@Override
	public ModelAndView getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@RequestMapping(value = "/generate", method = RequestMethod.POST)
	public ModelAndView generate(HttpServletRequest request) {
		
		employeeService.save(request);
		//Map<String, String[]> map = new HashMap<String, String[]>();
		
		System.out.println("hit");
		return null;
	}
	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@RequestMapping(value = "/pay", method = RequestMethod.POST)
	public ModelAndView pay(HttpServletRequest request) {
		
		employeeService.paySalary(request);
		/*
		 * List<SalaryStructure> structure = salaryStructureService.getAll();
		 * Map<String, Object> map = new HashMap<String, Object>(); map.put("structure",
		 * structure);
		 * 
		 * return new ModelAndView("employee/showSalary", "map", map);
		 */
		 List<Salary> salaries = salaryService.getAll(); 
			
			return new ModelAndView("salary/showSal", "salaries", salaries);
	}
	@Override
	public ModelAndView save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@RequestMapping(value = "/attend", method = RequestMethod.GET)
		public ModelAndView attend(HttpServletRequest request) {
		Employee e = employeeService.takeAttendence(request);
		employees = employeeService.getAll();
	
		return new ModelAndView("employee/attend", "employees", employees);
	}
	
	@RequestMapping(value = "/showAttend", method = RequestMethod.GET)
	public ModelAndView showAttend(HttpServletRequest request) {
	
		List<Attendence> attendences = attendenceService.getAll();
	
	return new ModelAndView("employee/showAttend", "attendences", attendences);
}
	
	@PostMapping("/saveAttendence")
	public ModelAndView saveAttendence(HttpServletRequest request) {
		List<Attendence> attendences = new ArrayList<>();
		java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
		for(Employee e: employees) {
			Attendence a = new Attendence();
			a.setAttCode(e.getEcode() + Math.random());
			a.setDate(date);
			a.setDepartment(e.getDeptName());
			a.setDesignation(e.getDesigName());
			a.setEmpCode(e.getEcode());
			a.setFirstName(e.getFname());
			a.setLastName(e.getLname());
			
			if(request.getParameter(e.getEcode()) == null) {
				a.setAttended("ABSENT");
			}else {
				a.setAttended("PRESENT");
			}
			
			attendences.add(a);
			
		}
		
		employeeService.saveAllAttendence(attendences);
	
		return new ModelAndView("employee/attend", "employees", employees);
	}

}
