package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.User;

@Repository
@Transactional
public class UserDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public User save(User u) {
//		sessionFactory.getCurrentSession().save(u);
//		sessionFactory.getCurrentSession().flush();
		getSession().save(u);
		getSession().flush();
		return u;
	}

	public boolean login(User u) {
		List<User> users = getSession().createCriteria(User.class).list();
		boolean b = false;
		for (int i = 0; i < users.size(); i++) {
			User get = users.get(i);

			if (get.getUsername().equals(u.getUsername()) && get.getPassword().equals(u.getPassword())) {
				b = true;
				break;
			} else {
				b = false;

			}
		}
		return b;

	}
}
