package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Department;
import com.spring.model.Designation;

@Repository(value = "designationDAO")
@Transactional
public class DesignationDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Designation save(Designation de) {
		getSession().save(de);
		getSession().flush();
		return de;
		
	}

	public List<Designation> getAll() {
		Query query = getSession().createQuery("FROM designation");
		List<Designation> designations =((org.hibernate.query.Query) query).list();
		return designations;
	}

	public Designation updateDesignation(Designation de) {
		String query= "update designation set designame='"+de.getDesigname()+"', desigcode='"+de.getDesigcode()+"', desigseq='"+de.getDesigseq()+"' where id ='"+de.getId()+"'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return de;
	}

	public Designation getDesignationById(int pid) {
		String sql = "from designation where id = '" + pid + "'";
		List<Designation> pList = getSession().createQuery(sql).list();
		return pList.get(0);
	}
	
	public Designation delete(Designation de) {
		String sql = "delete designation where id = '" + de.getId() + "'";
		int delete = getSession().createQuery(sql).executeUpdate();
		return de;
	}

}
