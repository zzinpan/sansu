package org.smc.controller;

import javax.inject.Inject;

import org.smc.service.BusinessService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/person")
public class PersonController {

	@Inject
	private BusinessService bservice;
	
	@RequestMapping(value="/firstName", method=RequestMethod.POST,  produces="text/plain; charset=UTF-8")
	public @ResponseBody String firstNameAjax(){
		
		return bservice.firstName();
		
	}
	
}
