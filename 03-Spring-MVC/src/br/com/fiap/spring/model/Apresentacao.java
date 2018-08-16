package br.com.fiap.spring.model;


public class Apresentacao {
	
	private int id;
	
	private String nomeGrupo;
	
	private int duracao;
	
	private String descricao;
	
	private boolean apresentado;

	public Apresentacao() {
		super();
	}

	public Apresentacao(String nomeGrupo, int duracao, String descricao, boolean apresentado) {
		super();
		this.nomeGrupo = nomeGrupo;
		this.duracao = duracao;
		this.descricao = descricao;
		this.apresentado = apresentado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeGrupo() {
		return nomeGrupo;
	}

	public void setNomeGrupo(String nomeGrupo) {
		this.nomeGrupo = nomeGrupo;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isApresentado() {
		return apresentado;
	}

	public void setApresentado(boolean apresentado) {
		this.apresentado = apresentado;
	}

}
