package com.controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.metier.Clients;
import com.metier.MetierClient;

@WebServlet(name="reserver_controle" , urlPatterns= {"/reserver.php"})
public class reserver_controle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public reserver_controle() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MetierClient metier = new MetierClient();
		request.setAttribute("idClient",metier.idClient());
		this.getServletContext().getRequestDispatcher("/WEB-INF/reserver.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Clients c = new Clients();
		MetierClient metier = new MetierClient();
		c.setId_client(Long.parseLong(request.getParameter("num_c")));
		c.setNbrPlace(Integer.parseInt(request.getParameter("num_c")));
		c.setNom((String) request.getParameter("nom"));
		c.setPrenom((String) request.getParameter("prenom"));
		c.setCin((String) request.getParameter("cin"));
		c.setTel((String) request.getParameter("tele"));
		c.setEmail((String) request.getParameter("email"));
		c.setAdresse((String) request.getParameter("adresse"));
		c.setId_voy(Long.parseLong(request.getParameter("num_v")));
		request.setAttribute("Client", c);
		if (metier.addClient(c) != 0) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/acueille.jsp").forward(request, response);
		}
	}

}
