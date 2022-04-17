package models;

import java.math.BigDecimal;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import entities.BigDeciaml;
import entities.Event;
import entities.User;

/**
 * Session Bean implementation class SubjectService
 */

@Stateless
@LocalBean
public class UserModel {
	@PersistenceContext(unitName = "Evento")
	private EntityManager em;

	/**
	 * Default constructor.
	 */
	public UserModel() {
		// TODO Auto-generated constructor stub

	}


	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
		users = query.getResultList();
		return users;
	}

	public User addUser(String username, String password, String role) {
		User user = new User();
		
		user.setUsername(username);
		user.setPassword(password);
		user.setRole(role);
		
		em.persist(user);
		
		return user;
	}

}
