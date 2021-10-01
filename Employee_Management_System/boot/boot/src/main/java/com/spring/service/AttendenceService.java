package com.spring.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.AttendenceDAO;

import com.spring.model.Attendence;
@Service(value = "attendenceService")
public class AttendenceService {
	@Autowired
    AttendenceDAO attendenceDAO;

	public List<Attendence> getAll() {
		
		return attendenceDAO.getAll();
	}

}
