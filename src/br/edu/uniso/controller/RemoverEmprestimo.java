package br.edu.uniso.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.uniso.model.EmprestimoDAO;
import br.edu.uniso.model.LivroDAO;

/**
 * Servlet implementation class RemoverEmprestimo
 */
@WebServlet("/RemoverEmprestimo")
public class RemoverEmprestimo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoverEmprestimo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_Livro = Integer.valueOf(request.getParameter("id_Livro"));
		
		request.setAttribute("id_Livro", id_Livro);
		
		EmprestimoDAO e = new EmprestimoDAO();
		
		
		e.removerEmprestimo(id_Livro);
		RequestDispatcher rd;		
		
		
		rd = request.getRequestDispatcher("LivroDevolvido.jsp");
		
		rd.forward(request, response);
			
	}
}
