package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fiap.spring.model.Pessoa;

@Controller
@RequestMapping("/pessoa")
public class PessoaController {
	
	private String aposentatoName;
	
	//Metodo para abrir a tela com o formulaio de cadastro
	@GetMapping("cadastrar")
	public String cadastro() {
		return "pessoa/cadastrar";
	}
	
	@PostMapping("cadastrar")
	public String cadastroPessoa(Pessoa pessoa) {
		
		aposentatoName = pessoa.isAposentado() ? "Aposentado" : "Não é aposentado";
		
		System.out.println("O Sr. " + pessoa.getName() + " tem: " + pessoa.getAge() + " anos: \nStatus da aposentadoria: " + aposentatoName);
		return "pessoa/cadastrar";
	}
	
}
