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
 * Servlet implementation class EmprestaLivros
 */
@WebServlet("/EmprestaLivros")
public class EmprestaLivros extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmprestaLivros() {
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
		int id_Usuario = Integer.valueOf(request.getParameter("id_Usuario"));
		boolean disp;
		
		request.setAttribute("id_Livro", id_Livro);
		request.setAttribute("id_Usuario", id_Usuario);
		
		EmprestimoDAO e = new EmprestimoDAO();
		LivroDAO l = new LivroDAO();
		
		RequestDispatcher rd;
		RequestDispatcher rd1;
		
		disp = l.consultaDisponibilidade(id_Livro);
		
		System.out.println("disp" + disp);
		
		if(disp == true) {
			
			boolean emp = e.emprestimo(id_Usuario, id_Livro);
			System.out.println("emp" + emp);
			
			if(emp){				
				rd = request.getRequestDispatcher("EmprestimoTRUE.jsp");
				
				rd.forward(request, response);

			}
			else{
				rd = request.getRequestDispatcher("LivroDisponivelFALSE.jsp");
				
				rd.forward(request, response);

			}
						
			}
		else if (disp == false) {
			System.out.println("entrou no elif");

			rd = request.getRequestDispatcher("LivroDisponivelFALSE.jsp");
			
			rd.forward(request, response);

		}
		
			
		}

}
