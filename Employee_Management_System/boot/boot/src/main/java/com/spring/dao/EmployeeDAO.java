package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Attendence;
import com.spring.model.Employee;
import com.spring.model.Leave;
import com.spring.model.Salary;

@Repository(value = "employeeDAO")
@Transactional
public class EmployeeDAO {

	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Employee save(Employee e) {
		getSession().save(e);
		getSession().flush();
		return e;
	}

	public List<Employee> getAll() {
		Query query = getSession().createQuery("FROM employee");
		List<Employee> employees =((org.hibernate.query.Query) query).list();
		return employees;
	}

	public Employee getProductById(int pid) {
		String sql = "from employee where id = '" + pid + "'";
		List<Employee> pList = getSession().createQuery(sql).list();
		return pList.get(0);
	}


	
	public Employee update(Employee e) {
		String query= "update employee set fname='"+e.getFname()+"', lname='"+e.getLname()+"', ecode='"+e.getEcode()+"', dept_code='"+e.getDeptCode()+"',dob='"+e.getDob()+"',gender='"+e.getGender()+"',address='"+e.getAddress()+"',phone='"+e.getPhone()+"',division='"+e.getDivision()+"',district='"+e.getDistrict()+"',nationality='"+e.getNationality()+"',nid='"+e.getNid()+"',status='"+e.getStatus()+"',desig_name='"+e.getDesigName()+"',religion='"+e.getReligion()+"',salary='"+e.getSalary()+"',joining='"+e.getJoining()+"' where id ='"+e.getId()+"'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return e;
		
	}

	public Employee delete(Employee e) {
		String sql = "delete employee where id = '" + e.getId() + "'";
		int delete = getSession().createQuery(sql).executeUpdate();
		return e;
	}

	public Employee updateSal(Employee e) {
		String query= "update employee set house='"+e.getHouse()+"',madic='"+e.getMadic()+"',food='"+e.getFood()+"',total='"+e.getTotal()+"' where id ='"+e.getId()+"'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return e;
		
	}


	public void paySalary(Salary s) {
		getSession().save(s);
		getSession().flush();
	}

	/*
	 * public void saveAllAttendence(List<Attendence> attendences) { for(Attendence
	 * a: attendences) { getSession().save(a); } getSession().flush();
	 * 
	 * }
	 */

	public void saveAllAttendence(List<Attendence> attendences) {
		for(Attendence a: attendences) { 
			getSession().save(a); } 
			getSession().flush();
		
	}

	
	  public Employee applyLeave(Leave l) { getSession().save(l);
	  getSession().flush(); return null;
	  
	  }
	 




		
	}


