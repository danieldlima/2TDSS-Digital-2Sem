package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.jpa.dao.ConvidadoDAO;
import br.com.fiap.spring.model.Convidado;

@Controller
@RequestMapping("home")
public class HomeController {	
	
	@Autowired
	private ConvidadoDAO dao;
	
	@GetMapping("/")
	public String home() {
		return "home/index";
	}
	
	@GetMapping("cadastrar")
	public String cadastro() {
		return "convidado/cadastrar";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrarCondidados(Convidado convidado, RedirectAttributes redirect) {
		dao.inserir(convidado);
		
		redirect.addFlashAttribute("msg", "Produto cadastrado com sucesso");
		
		return new ModelAndView("redirect:/home/cadastrar");
	}
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("convidado/listar").addObject("convidados", dao.listar());
	}
	
	@PostMapping("status/{id}")
	public ModelAndView alterarStatus(@PathVariable("id") int id) {
		return  null;/*new ModelAndView("convidado/listar").addObject("convidados", dao.listar());*/
	}
	
}
