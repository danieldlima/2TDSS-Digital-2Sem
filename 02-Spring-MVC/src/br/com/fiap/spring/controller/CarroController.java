package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("carro")
public class CarroController {
	
	@GetMapping("cadastrar")
	public String formCarro() {
		return "veiculo/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView cadastrarCarro(Carro carro) {
		
		ModelAndView retorno = new ModelAndView("veiculo/sucesso");
		
		retorno.addObject("veiculo", carro);
		retorno.addObject("msg", "Carro cadastrado com sucesso!");
		return retorno;
		
	}
	

}
