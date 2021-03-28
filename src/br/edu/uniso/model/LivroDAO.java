package br.edu.uniso.model;

import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//Esta classe é responsável por todas as interações com o banco de dados referentes aos Livros.

public class LivroDAO {

public void deletar(){
	
}

public boolean inserir(String nomeLivro, int pagQTD){
	Connection c = DatasourceConnection.getConexao();
	PreparedStatement s;
	try {
		s = c.prepareStatement("insert into " + "livro " + "(nome_Livro,num_Paginas) " + "values (?,?)");
		s.setString(1, nomeLivro);
		s.setInt(2, pagQTD);
		int numeroLinhas = s.executeUpdate();
		s.close();
		c.close();
		if(numeroLinhas > 0){
			return true;
		}
		else{
			return false;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	
	}
	
	return false;
}

public boolean consultaDisponibilidade(int id_Livro) {
	
	Connection c = DatasourceConnection.getConexao();
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	int id_Emp = 0;
	
	try {
		ps = c.prepareStatement("SELECT (id_Emprestimo) FROM projbibli.livro WHERE id_Livro = ?");
		ps.setInt(1, id_Livro);	
		
		rs = ps.executeQuery();			
		
		if (rs.next()) {
			  id_Emp = rs.getInt("id_Emprestimo");
			   
			  if(id_Emp == 0) {
					return true;
				} else {
					return false;
				}			  
			} else {
				return false;
			}
		
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	}  finally {
		try {
			c.close();
			ps.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return false;
}

public boolean emprestimo(int id_Usuario, int id_Livro) {
	Connection c = DatasourceConnection.getConexao();
	PreparedStatement ps = null;
	
	
	try {
		ps = c.prepareStatement("UPDATE projbibli.livro SET id_Emprestimo = ? WHERE id_Livro = ?");
		
		ps.setInt(1, id_Usuario);
		ps.setInt(2,  id_Livro);
					
		int Nlinhas = ps.executeUpdate();
		if(Nlinhas > 0) {
			return true;
		} else {
			return false;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}  finally {
		try {
			c.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	return false;
}



/*
public boolean emprestimo(int id_Usuario, int id_Livro) {
	Connection c = DatasourceConnection.getConexao();
	PreparedStatement ps = null;
	try {
		ps = c.prepareStatement("UPDATE projbibli.livro SET id_Emprestimo = ? WHERE id_Livro = ?");
		
		ps.setInt(1, id_Usuario);
		ps.setInt(2,  id_Livro);
					
		int Nlinhas = ps.executeUpdate();
		if(Nlinhas > 0) {
			return true;
		} else {
			return false;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}  finally {
		try {
			c.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	return false;
}
*/


/*
public LivroDAO consultaEmprestadosID(int id_Usuario) {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	LivroDAO livro = null;		
			try {
				
				String sql = "SELECT (id_Livro, nome_Livro) FROM livro WHERE id_Emprestimo = " + id_Usuario + ";";
			
				
				conn = DatasourceConnection.getConexao();
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
		
				if (rs.next()) {
					String nome = rs.getString("nome_Livro");
					int id_Livro = rs.getInt("id_Livro");
					livro = new LivroDAO();
					}
					return livro;
					} 
			catch (SQLException e) {
					} 
			return livro;
}
			
*/


/*
public boolean consultaDisponibilidade(int id_Livro){
	Connection c = DatasourceConnection.getConexao();
	PreparedStatement s;
	try {
		s = c.prepareStatement("SELECT id_Emprestimo FROM projbibli.livro WHERE id_Livro = ?;");
		s.setInt(1, id_Livro);
		int id_Emprestado = s.executeUpdate();
		s.close();
		c.close();
		if(id_Emprestado != null){
			return false;
		}
		else{
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	
	}
	
	return false;
}

*/
public void consultarTodos(){
	
}
}
