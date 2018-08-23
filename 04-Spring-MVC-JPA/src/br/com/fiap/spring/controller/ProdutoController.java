package br.com.fiap.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.jpa.dao.ProdutoDAO;
import br.com.fiap.jpa.dao.impl.ProdutoDAOImpl;
import br.com.fiap.jpa.model.Produto;

@Controller
@RequestMapping("produto")
public class ProdutoController {
	
	@Autowired
	private ProdutoDAO dao;
	
	@GetMapping("cadastrar")
	public String formCadastro() {
		return "produto/form";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrarProdutos(Produto produto) {
		
		ModelAndView modelView = new ModelAndView("produto/form");	
		
		try {
			dao.inserir(produto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// modelView.addObject("prod", produto);
		modelView.addObject("msg", "Produto cadastrado com sucesso");
		
		return modelView;
	}
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("produto/lista").addObject("produtos", dao.listar()); // Envia a lista de produtos
	}

}
