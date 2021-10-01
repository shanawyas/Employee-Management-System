package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Employee;
import com.spring.model.SalaryStructure;

@Repository(value = "salaryStructureDAO")
@Transactional
public class SalaryStructureDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public SalaryStructure save(SalaryStructure s) {
		getSession().save(s);
		getSession().flush();
		return s;
	}

	public List<SalaryStructure> getAll() {
		Query query = getSession().createQuery("FROM salaryStructure");
		List<SalaryStructure> structure =((org.hibernate.query.Query) query).list();
		return structure;
	}


	
	

}
