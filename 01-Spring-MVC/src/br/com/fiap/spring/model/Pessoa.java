package br.com.fiap.spring.model;

public class Pessoa {

	private String name;
	
	private int age;
	
	private boolean aposentado;
	
	public Pessoa() {
		super();
	}

	public Pessoa(String name, int age, boolean aposentado) {
		super();
		this.name = name;
		this.age = age;
		this.aposentado = aposentado;
	}	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public boolean isAposentado() {
		return aposentado;
	}

	public void setAposentado(boolean aposentado) {
		this.aposentado = aposentado;
	}

}
