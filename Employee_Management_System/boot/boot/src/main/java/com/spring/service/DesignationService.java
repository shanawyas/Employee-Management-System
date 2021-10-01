package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.spring.dao.DesignationDAO;
import com.spring.model.Department;
import com.spring.model.Designation;

@Service(value = "designationService")
public class DesignationService {
	@Autowired
   DesignationDAO designationDAO;
	
	public Designation save(HttpServletRequest request) {
		Designation de=new Designation();
		

	de.setDesigcode(request.getParameter("desigcode"));
	de.setDesigname(request.getParameter("designame"));
	de.setDesigseq(Integer.valueOf(request.getParameter("desigseq")));
	
		return designationDAO.save(de);
	}

	public List<Designation> getAll() {
	return designationDAO.getAll();
	}

	public Designation updateDesignation(HttpServletRequest request) {
		Designation de=new Designation();
		
		de.setId(Integer.valueOf(request.getParameter("id")));
		de.setDesigcode(request.getParameter("desigcode"));
		de.setDesigname(request.getParameter("designame"));
		de.setDesigseq(Integer.valueOf(request.getParameter("desigseq")));
		return designationDAO.updateDesignation(de);
	}

	public Designation getDesignationById(int pid) {
		return designationDAO.getDesignationById(pid);
	}

	public Designation delete(int pid) {
		Designation de= designationDAO.getDesignationById(pid);
		return designationDAO.delete(de);
	}
}
