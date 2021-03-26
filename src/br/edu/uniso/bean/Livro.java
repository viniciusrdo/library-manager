package br.edu.uniso.bean;

public class Livro {
	
	private String id_Livro;
	private String nome_Livro;
	
	public Livro() {

	}
	
	public Livro(String id_Livro, String nome_Livro) {
		this.id_Livro = id_Livro;
		this.nome_Livro = nome_Livro;
	}

	public String getId_Livro() {
		return id_Livro;
	}

	public void setId_Livro(String id_Livro) {
		this.id_Livro = id_Livro;
	}

	public String getNome_Livro() {
		return nome_Livro;
	}

	public void setNome_Livro(String nome_Livro) {
		this.nome_Livro = nome_Livro;
	}
	
}
