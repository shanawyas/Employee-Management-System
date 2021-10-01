package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.spring.dao.DepartmentDAO;
import com.spring.dao.EmployeeDAO;
import com.spring.model.Department;
import com.spring.model.Designation;

@Service(value = "departmentService")
public class DepartmentService {
	@Autowired
    DepartmentDAO departmentDAO;
	



	public Department save(HttpServletRequest request) {
		Department d=new Department();
		

		d.setDeptcode(request.getParameter("deptcode"));
		d.setDeptname(request.getParameter("deptname"));
		d.setDeptdescrip(request.getParameter("deptdescrip"));
		return departmentDAO.save(d);
	}




	public List<Department> getAll() {
	
		return departmentDAO.getAll();
	}




	public Department getDepartmentById(int pid) {
		return departmentDAO.getDepartmentById(pid);
	}




	public Department updateDepartment(HttpServletRequest request) {
		Department d=new Department();
		
		d.setId(Integer.valueOf(request.getParameter("id")));
		d.setDeptcode(request.getParameter("deptcode"));
		d.setDeptname(request.getParameter("deptname"));
		d.setDeptdescrip(request.getParameter("deptdescrip"));
		return departmentDAO.updateDepartment(d);
	}




	public Department delete(int pid) {
		Department d=departmentDAO.getDepartmentById(pid);
		return departmentDAO.delete(d);
	}




	
}
