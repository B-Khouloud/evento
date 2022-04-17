package controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Event;
import entities.User;
import models.EventModel;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/events")
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private EventModel eventModel;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		RequestDispatcher requestDispatcher;

		if (action.contentEquals("list")) {
			List<Event> events = new ArrayList<Event>();
			events = eventModel.getAllEvents();

			request.setAttribute("events", events);
			requestDispatcher = request.getRequestDispatcher("listEvents.jsp");
			requestDispatcher.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String action = request.getParameter("action");
		RequestDispatcher requestDispatcher;


		if (action.contentEquals("add")) {
			Date dateEvent;
			try {
				String title = request.getParameter("title");
				String description = request.getParameter("description");
				String type = request.getParameter("type");
				String producer = request.getParameter("producer");
				String location = request.getParameter("location");
				String dateEventString = request.getParameter("date");
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
				dateEvent = simpleDateFormat.parse(dateEventString);
				BigDecimal price = new BigDecimal(request.getParameter("price"));

				eventModel.addEvent(title, description, type, producer, location, dateEvent, price);
				
				requestDispatcher = request.getRequestDispatcher("listEvents.jsp");
				requestDispatcher.forward(request, response);
				
			} catch (ParseException e) {
				e.printStackTrace();
			}

		}
	}

}
