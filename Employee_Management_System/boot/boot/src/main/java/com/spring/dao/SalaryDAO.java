package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Employee;
import com.spring.model.Salary;

@Repository(value = "salaryDAO")
@Transactional
public class SalaryDAO {
	
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public List<Salary> getAll() {
		Query query = getSession().createQuery("FROM salary");
		List<Salary> salaries =((org.hibernate.query.Query) query).list();
		return salaries;
	}

	public List<Salary> getSalByMonthYear(HttpServletRequest request) {
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		Query query = getSession().createQuery("FROM salary where month = '"+month+"' and year = '"+year+"'");
		List<Salary> salaries =((org.hibernate.query.Query) query).list();
		return salaries;
	}

}
