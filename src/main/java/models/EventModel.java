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

	//affichage de la list de tous les evenements
	public List<Event> getAllEvents() {
		List<Event> events = new ArrayList<Event>();
		TypedQuery<Event> query = em.createNamedQuery("Event.findAll", Event.class);
		events = query.getResultList();
		return events;
	}

	//ajout d'un evenement dans la liste des evenements
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
	
	//modifier un evenement dans la liste des evenements
	public Event editEvent (int idEvent, String title, String description, String type, String producer, String location, Date dateEvent, BigDecimal price) {
		
		Event event = em.find(Event.class,idEvent);
		if (event != null) {
			event.setTitle(title);
			event.setDescription(description);
			event.setType(type);
			event.setProducer(producer);
			event.setLocation(location);
			event.setDateEvent(dateEvent);
			event.setPrice(price);
			
			em.merge(event);
		}
		return event;
	}
	
	public Event getEvent(int idEvent) {
		
		return em.find(Event.class, idEvent);
		 
	}
	
	//supprimer un evenement dans la liste des evenements
	/*public void removeEvent (String title, String description, String type, String producer, String location, Date dateEvent, BigDecimal price) {
		
		Event event = findEvent(2);
		if (event != null) {
			em.remove(event);
		}
	}
	*/
	public void removeEventById (int idEvent) {
		
		Event event = findEvent(idEvent);
		if (event != null) {
			em.remove(event);
		}
	}
	
	public Event findEvent(int idEvent) {
		Event event = null;
		event = em.find(Event.class, idEvent);
		if (event != null) {
			System.out.println(event.getTitle());
		}
		return event;
	}
	
	

}
