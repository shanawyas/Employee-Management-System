package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Employee;
import com.spring.model.Leave;

@Repository(value = "leaveDAO")
@Transactional
public class LeaveDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public List<Leave> getAll() {
		Query query = getSession().createQuery("FROM leave where leave_status = '" + "no" + "'");
		List<Leave> leaves = ((org.hibernate.query.Query) query).list();
		return leaves;
	}

	/*
	 * public Leave getProductById(int pid) { // TODO Auto-generated method stub
	 * return null; }
	 */

	public Leave deletel(Leave l) {
		String sql = "delete leave where id = '" +l.getId() + "'"; 
				int delete = getSession().createQuery(sql).executeUpdate();
				  return l;
	}

	

	  
	
	  public Leave getProductById(int pid) { String sql = "from leave where id = '"
	  + pid + "'"; List<Leave> pList = getSession().createQuery(sql).list(); return
	  pList.get(0); }

	public Leave updatel(Leave l) {
		String query= "update leave set leave_status='"+l.getLeaveStatus()+"' where id ='"+l.getId()+"'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return l;
	}

	public List<Leave> getApproved() {
		Query query = getSession().createQuery("FROM leave where leave_status = '" + "yes" + "'");
		List<Leave> leaves = ((org.hibernate.query.Query) query).list();
		return leaves;
	}
	 
	 

}
