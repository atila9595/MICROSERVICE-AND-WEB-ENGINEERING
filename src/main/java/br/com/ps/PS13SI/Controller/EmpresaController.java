package br.com.ps.PS13SI.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ps.PS13SI.Repository.RepositoryEmpresa;
import br.com.ps.PS13SI.model.EmpresaModel;

@Controller
@RequestMapping("/empresa")
public class EmpresaController {
	
	private static final String EMPRESA_FOLDER = "empresa/";
	
	@Autowired
	RepositoryEmpresa repositoryEmpresa;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, @RequestParam(required = false) Long id,
			@ModelAttribute("empresaModel") EmpresaModel empresaModel, Model model) {
		
		if ("editar-empresa".equals(page)) {
			model.addAttribute("empresaModel", repositoryEmpresa.findById(id).get());
		}  
	 
  
		  
		return EMPRESA_FOLDER + page;
	}
	
	@GetMapping() 
	public String findAll(Model model) {
			
		model.addAttribute("empresaModel", repositoryEmpresa.findAll());
		
		return EMPRESA_FOLDER + "lista-empresa";
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") Long id, Model model) {

		model.addAttribute("empresaModel", repositoryEmpresa.findById(id).get());
		return EMPRESA_FOLDER + "detalhe-empresa";
	} 
 
	@PostMapping()
	public String save(@Valid EmpresaModel empresaModel, BindingResult bindingResult,
			RedirectAttributes redirectAttributes, Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("empresaModel", repositoryEmpresa.findAll());
			return EMPRESA_FOLDER + "novo-empresa";
		}

		repositoryEmpresa.save(empresaModel);
		redirectAttributes.addFlashAttribute("messages", "empresa cadastrado com sucesso!");

		return "redirect:/paciente";
	}
	 
	@PostMapping("/salvar")
	public String create(EmpresaModel empresaModel, RedirectAttributes redirectAttributes) {
		
		repositoryEmpresa.save(empresaModel);
		redirectAttributes.addFlashAttribute("messages", "empresa adicionado com sucesso!");
		
		return "redirect:/empresa";
	} 
 
	@PostMapping("/{idPaciente}")
	public String update(@PathVariable("idPaciente") Long id, @Valid EmpresaModel empresaModel, BindingResult bindingResult,
			RedirectAttributes redirectAttributes, Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("empresaModel", repositoryEmpresa.findAll());
			return EMPRESA_FOLDER + "empresa-empresa";
		} 

		empresaModel.setId(id);
		repositoryEmpresa.save(empresaModel);
		redirectAttributes.addFlashAttribute("messages", "empresa alterado com sucesso!");

		return "redirect:/empresa";
	}
  
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {

		repositoryEmpresa.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "empresa excluido com sucesso!");

		return "redirect:/empresa";
	}
 
} 
