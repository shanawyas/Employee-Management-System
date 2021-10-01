package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.SalaryStructureDAO;
import com.spring.model.SalaryStructure;

@Service(value = "salaryStructureService")
public class SalaryStructureService {
	
	@Autowired
	SalaryStructureDAO salaryStructureDAO;

	public SalaryStructure save(HttpServletRequest request) {
		SalaryStructure s=new SalaryStructure();
		
		s.setDesigname(request.getParameter("desig_name"));
		
		s.setDesigcode(request.getParameter("desig_code"));
		s.setHouse(Double.valueOf(request.getParameter("house")));
		
		s.setMadic(Double.valueOf(request.getParameter("madic")));
		s.setFood(Double.valueOf(request.getParameter("food")));
			
		return salaryStructureDAO.save(s);
	}
	
	public List<SalaryStructure> getAll() {
		return salaryStructureDAO.getAll();
	}

}
