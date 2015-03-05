package org.smc.controller;

import javax.inject.Inject;

import org.smc.service.DayService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calculate")
public class CalculateController {
	
	@Inject
	private DayService dservice;

	@RequestMapping(value="/day/{date}")
	public String dayGET(Model model, @ModelAttribute("date") @PathVariable("date") String date) throws Exception {
		
		System.out.println(dservice.plusSum(date));
		model.addAttribute("plusSum", dservice.plusSum(date));
		model.addAttribute("plusList", dservice.plusList(date));
		
		return "/calculate/day";
		
	}
	
	@RequestMapping(value="/person")
	public void personGET() throws Exception {}
	
	@RequestMapping(value="/agent")
	public void agnetGET() throws Exception {}
	
	@RequestMapping(value="/total")
	public void totalGET() throws Exception {}
	
}
