package controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gb.smart.dao.IProfesseurLocal;
import gb.smart.entities.Professeur;

/**
 * Servlet implementation class ProfesseurServlet
 */
@WebServlet("/Professeur")
public class ProfesseurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
    private IProfesseurLocal profdao;
    public ProfesseurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	  
		request.setAttribute("professeurs", profdao.liste());
	   request.getRequestDispatcher("/view/professeur/add.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("valider") != null) {
			String nom = request.getParameter("nom").toString();
			Double salaire = Double.parseDouble(request.getParameter("salaire").toString());
			String prenom = request.getParameter("prenom").toString();
			
			Professeur p=new Professeur();
			p.setNomP(nom);
			p.setPrenomP(prenom);
			p.setSalaire(salaire);
			int ok = profdao.add(p);
			request.setAttribute("result",ok);
			request.setAttribute("professeurs", profdao.liste());
			request.getRequestDispatcher("/view/professeur/add.jsp").forward(request,response);
			}
	}

}
