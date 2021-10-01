package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.EmployeeDAO;
import com.spring.dao.SalaryDAO;
import com.spring.model.Salary;


@Service(value = "salaryService")
public class SalaryService {
	@Autowired
    SalaryDAO salaryDAO;

	public List<Salary> getAll() {
		
		return salaryDAO.getAll();
	}

	public List<Salary> getSalByMonthYear(HttpServletRequest request) {
		List<Salary> salary = salaryDAO.getSalByMonthYear(request);
		return salary;
	}




}
