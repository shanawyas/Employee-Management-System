package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Department;
import com.spring.model.Employee;

@Repository(value = "departmentDAO")
@Transactional
public class DepartmentDAO {
	
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Department save(Department d) {
		getSession().save(d);
		getSession().flush();
		return d;
	}

	public List<Department> getAll() {
		Query query = getSession().createQuery("FROM department");
		List<Department> departments =((org.hibernate.query.Query) query).list();
		return departments;
	}

	public Department getDepartmentById(int pid) {
		String sql = "from department where id = '" + pid + "'";
		List<Department> pList = getSession().createQuery(sql).list();
		return pList.get(0);
	}

	public Department updateDepartment(Department d) {
		String query= "update department set deptname='"+d.getDeptname()+"', deptcode='"+d.getDeptcode()+"', deptdescrip='"+d.getDeptdescrip()+"' where id ='"+d.getId()+"'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return d;
	}

	public Department delete(Department d) {
		String sql = "delete department where id = '" + d.getId() + "'";
		int delete = getSession().createQuery(sql).executeUpdate();
		return d;
	}

}
