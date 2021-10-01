package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Attendence;


@Repository(value = "attendenceDAO")
@Transactional
public class AttendenceDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public List<Attendence> getAll() {
		Query query = getSession().createQuery("FROM Attendence");
		List<Attendence> attendences =((org.hibernate.query.Query) query).list();
		return attendences;
	}
}
