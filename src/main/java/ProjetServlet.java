

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProjetServlet
 */
@WebServlet("/ProjetServlet")
public class ProjetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjetServlet() {
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
		//pour le formulaire de l'admin:
		if(action != null && action.equals("Se connecter")) {
			String nomadmin = request.getParameter("nom");
			String password = request.getParameter("mdp");
			response.getWriter().append("Action recu : "+ action+"de l'admin "+nomadmin+"ayant le mot de passe "+password);
		}
		//pour le formulaire du commentaire:
		if(action !=null && action.equals("envoyer")) {
			String nom = request.getParameter("nom");
			String mail = request.getParameter("email");
			String msg = request.getParameter("msg");
			response.getWriter().append("Action recu : "+action+"un commentaire "+msg+"par "+nom+"ayant le mail "+mail);
		}
		//pour le formulaire de l'ajout:
		if(action !=null && action.equals("ajouter")) {
			String titre = request.getParameter("titre");
			String producteur = request.getParameter("producteur");
			String date = request.getParameter("date");
			String localisation = request.getParameter("localisation");
			String select = request.getParameter("select");
			String prix = request.getParameter("prix");
			String description = request.getParameter("description");
			String file = request.getParameter("file");
			response.getWriter().append("Action recu : "+action+"un evenement de titre "+titre+"realise par "+producteur+"le "+date+"au "+localisation+"du genre "+select+"a "+prix+"c'est un "+description+"d'affiche"+file);
		}
		//pour le formulaire de modification:
		if (action !=null && action.equals("modifier")) {
			String titre= request.getParameter("titre");
			String producteur = request.getParameter("producteur");
			String date = request.getParameter("date");
			String localisation = request.getParameter("localisation");
			String select = request.getParameter("select");
			String prix = request.getParameter("prix");
			String description = request.getParameter("description");
			String file = request.getParameter("file");
			response.getWriter().append("Action recu : "+action+"un evenement de titre "+titre+"realise par "+producteur+"le "+date+"au "+localisation+"du genre "+select+"a "+prix+"c'est un "+description+"d'affiche"+file);
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
