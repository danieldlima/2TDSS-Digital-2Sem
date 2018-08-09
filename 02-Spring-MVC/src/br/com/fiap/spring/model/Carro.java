package br.com.fiap.spring.model;

public class Carro {

	private String modelo;
	
	private String marca;
	
	private boolean novo;
	
	private TipoCambio cambio;
	
	private int ano;
	
	private String estadoCarro;
	
	public Carro() {
		super();
	}

	public Carro(String modelo, String marca, boolean novo, TipoCambio cambio, int ano) {
		super();
		this.modelo = modelo;
		this.marca = marca;
		this.novo = novo;
		this.setCambio(cambio);
		this.ano = ano;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public boolean isNovo() {
		return novo;
	}

	public void setNovo(boolean novo) {
		this.novo = novo;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public TipoCambio getCambio() {
		return cambio;
	}

	public void setCambio(TipoCambio cambio) {
		this.cambio = cambio;
	}

	public String getEstadoCarro() {
		return estadoCarro;
	}

	public void setEstadoCarro(String estadoCarro) {
		this.estadoCarro = estadoCarro;
	}
	
	public String estadoDoCarro() {
		return isNovo() ? "Novo" : "Usado";
	}

}
