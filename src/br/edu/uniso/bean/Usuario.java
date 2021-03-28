package br.edu.uniso.bean;

import br.edu.uniso.model.UsuarioDAO;

public class Usuario {
		private int id_Usuario;
		private String nome_Usuario;
		private String senha_Usuario;
		
		public Usuario() {
			
		}
		
		public Usuario(String nome_Usuario, String senha_Usuario)	{
			this.nome_Usuario = nome_Usuario;
			this.senha_Usuario = senha_Usuario;
		}

		public String getNome_Usuario() {
			return nome_Usuario;
		}

		public void setNome_Usuario(String nome_Usuario) {
			this.nome_Usuario = nome_Usuario;
		}

		public String getSenha_Usuario() {
			return senha_Usuario;
		}

		public void setSenha_Usuario(String senha_Usuario) {
			this.senha_Usuario = senha_Usuario;
		}

		public int getIdUsuario() {
			return id_Usuario;
		}

		public void setIdUsuario(int id_Usuario) {
			this.id_Usuario = id_Usuario;
		}
		
		
		
		
		
}
