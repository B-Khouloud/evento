package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.User;
import models.UserModel;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/users")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private UserModel userModel;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getParameter("action");
		RequestDispatcher requestDispatcher;
		
		//all users
		if (action.contentEquals("list")) {
			List<User> users = new ArrayList<User>();
			users = userModel.getAllUsers();

			request.setAttribute("users", users);
			requestDispatcher = request.getRequestDispatcher("listUsers.jsp");
			requestDispatcher.forward(request, response);
		}
		
		//signup
		if(action != null && action.equals("signup")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String role = request.getParameter("role");
			System.out.println("ok");
			userModel.signup(username,password,role);
			requestDispatcher = request.getRequestDispatcher("listUsers.jsp");
			requestDispatcher.forward(request, response);
		}
		
		//signin
		if(action !=null && action.equals("Se connecter")) {
			String login = request.getParameter("nom");
			String pwd = request.getParameter("mdp");
			User user = null;
			user= userModel.getUserByLoginAndPwd(login,pwd);
			if(user !=null) {
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				System.out.println(((User) session.getAttribute("user")).getId());
				
			}
			else {
				request.setAttribute("messageerreur","verifier vos coordonnees");
				requestDispatcher = request.getRequestDispatcher("inscrire.jsp");
			}

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
