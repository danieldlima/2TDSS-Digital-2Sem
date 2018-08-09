package br.com.fiap.spring.model;

public class Cliente {
	
	private String nome;
	
	private int idade;
	
	private boolean cnh;
	
	private Genero genero;

	public Cliente() {
		super();
	}

	public Cliente(String nome, int idade, boolean cnh, Genero genero) {
		super();
		this.nome = nome;
		this.idade = idade;
		this.cnh = cnh;
		this.genero = genero;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public boolean isCnh() {
		return cnh;
	}

	public void setCnh(boolean cnh) {
		this.cnh = cnh;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}
}
