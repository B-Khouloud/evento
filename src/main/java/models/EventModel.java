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
public class EventModel {
	@PersistenceContext(unitName = "Evento")
	private EntityManager em;

	/**
	 * Default constructor.
	 */
	public EventModel() {
		// TODO Auto-generated constructor stub

	}

	public List<Event> getAllEvents() {
		List<Event> events = new ArrayList<Event>();
		TypedQuery<Event> query = em.createNamedQuery("Event.findAll", Event.class);
		events = query.getResultList();
		return events;
	}

	public Event addEvent(String title, String description, String type, String producer, String location,
			Date dateEvent, BigDecimal price) {
		Event event = new Event();
		
		event.setTitle(title);
		event.setDescription(description);
		event.setType(type);
		event.setProducer(producer);
		event.setLocation(location);
		event.setDateEvent(dateEvent);
		event.setPrice(price);
		
		em.persist(event);
		
		return event;

	}

}
