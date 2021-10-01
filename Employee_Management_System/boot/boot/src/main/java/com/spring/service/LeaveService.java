package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.spring.dao.LeaveDAO;
import com.spring.model.Employee;
import com.spring.model.Leave;

@Service(value = "leaveService")
public class LeaveService {
	@Autowired
    LeaveDAO leaveDAO;

	public List<Leave> getAll() {
		return leaveDAO.getAll();
	}

	public Leave deletel(int pid) {
		Leave l = leaveDAO.getProductById(pid);
			return  leaveDAO.deletel(l);
				 
	}

	public Leave updatel(String id) {
		  Leave l = new Leave();
	       l.setId(Integer.valueOf(id));
		  
		  l.setLeaveStatus("yes");
		  
		  return leaveDAO.updatel(l);
	}

	public List<Leave> getApproved() {
		return leaveDAO.getApproved();
	}

	

	 
	
}
