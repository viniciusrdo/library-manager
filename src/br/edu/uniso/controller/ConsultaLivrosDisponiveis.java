package br.edu.uniso.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import br.edu.uniso.bean.Emprestimo;
import br.edu.uniso.model.EmprestimoDAO;

/**
 * Servlet implementation class ConsultaLivrosDisponiveis
 */
@WebServlet("/ConsultaLivrosDisponiveis")
public class ConsultaLivrosDisponiveis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultaLivrosDisponiveis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EmprestimoDAO emprestimo = new EmprestimoDAO();
		List<Emprestimo> LivrosDisponiveis = null;
		RequestDispatcher rd = null;
		try {
			
			
			LivrosDisponiveis = emprestimo.LivrosDisponiveis();
			
			request.setAttribute("LivrosDisponiveis", LivrosDisponiveis);
			rd = request.getRequestDispatcher("ConsultaLivrosDisponiveis.jsp");
			rd.forward(request, response);

			
		} catch (Exception e) {
			throw new ServletException(e);
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
