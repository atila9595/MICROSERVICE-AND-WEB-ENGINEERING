package br.com.ps.PS13SI.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ps.PS13SI.Repository.RepositoryHome;
import br.com.ps.PS13SI.model.FaleConosco;

@Controller
@RequestMapping("/home")
public class HomeCotroller {
	
	private static final String HOME_FOLDER = "home/";
	
	@Autowired
	RepositoryHome repositoryFaleConosco;
	
	@GetMapping()  
	public String findAll(@RequestParam(required = false) String page) {
		if ("falecomnosco".equalsIgnoreCase(page)) {
			return HOME_FOLDER + "falecomnosco";
		} 
		 
		return HOME_FOLDER + "home";
	}
	@PostMapping("/salvar") 
	public String create2(FaleConosco faleConosco, RedirectAttributes redirectAttributes) {
		
		redirectAttributes.addFlashAttribute("messages", "Mensaagem enviada com sucesso!");
		repositoryFaleConosco.save(faleConosco);
		return HOME_FOLDER + "home";
	}
	
	 
 
	
} 
 