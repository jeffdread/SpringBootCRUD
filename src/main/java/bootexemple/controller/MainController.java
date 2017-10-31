package bootexemple.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootexemple.entities.Plat;
import bootexemple.service.PlatService;

@Controller
public class MainController {
	
	@Autowired
	private PlatService platService;

	@GetMapping("/")
	public String home(HttpServletRequest request){
		request.setAttribute("plateaux", platService.findAll());
		return "/index";
	}

	
	@GetMapping("/delete-plateau")
	public String deletePlat(@RequestParam Integer id, HttpServletRequest request){
		platService.delete(id);
		request.setAttribute("plateaux", platService.findAll());
		return "/index";
	}
	
	@GetMapping("/newPlateau")
	public String newPlat(){
		return "/newPlateau";
	}
	
	@GetMapping("/select-plateau")
	public String selectPlat(@RequestParam Integer id, HttpServletRequest request){
		request.setAttribute("selected", platService.findPlat(id));
		
		return "/newPlateau";
	}
	
	@PostMapping("/save-plateau")
	public String savePlat(@ModelAttribute Plat plateau, BindingResult bindingresult,HttpServletRequest request){
		platService.save(plateau);
		request.setAttribute("plateaux", platService.findAll());
		return "/index";
	}
}
