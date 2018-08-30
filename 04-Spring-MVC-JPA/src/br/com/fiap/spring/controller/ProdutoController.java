package br.com.fiap.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public ModelAndView cadastrarProdutos(Produto produto, RedirectAttributes r) {		
		dao.inserir(produto);
		
		// Adiciona a mensagem no objeto que mantém a informação apos redirect
		r.addFlashAttribute("msg", "Produto cadastrado com sucesso");
		return new ModelAndView("redirect:/produto/cadastrar");
	}
	
	@GetMapping("listar")
	public ModelAndView listar() {		
		return new ModelAndView("produto/lista").addObject("produtos", dao.listar()); // Envia a lista de produtos
	}
	
	@GetMapping("editar/{id}")
	public ModelAndView editarProduto(@PathVariable("id") int id ) {
		// Retorn a página com os valores do produtos para o formulario HTML
		return new ModelAndView("produto/editar").addObject("produto", dao.pesquisar(id));
		
	}
	
	@Transactional
	@PostMapping("editar")
	public ModelAndView editar(Produto produto, RedirectAttributes r) {
		dao.atualizar(produto);
		r.addFlashAttribute("msg", "Produto atualizado com sucesso");
		return new ModelAndView("redirect:/produto/editar/" + produto.getCodigo());
	}
	
	/*@PostMapping("editar/{id}")
	public ModelAndView remover(@PathVariable("id") int id) {
		//dao.remover(id);
		return new ModelAndView();
	}*/

}
