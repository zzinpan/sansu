package org.smc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String businessListGET() throws Exception { return "redirect:/business/list"; }
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginGET(@ModelAttribute("page") String page) throws Exception { 
		
		return "/login/login"; 
		
	}
	
}
