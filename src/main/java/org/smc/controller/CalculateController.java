package org.smc.controller;

import javax.inject.Inject;

import org.smc.service.BusinessService;
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
	@Inject
	private BusinessService bservice;

	@RequestMapping(value="/day/{date}")
	public String dayGET(Model model, @ModelAttribute("date") @PathVariable("date") String date) throws Exception {

		model.addAttribute("plusList", dservice.plusList(date));
		model.addAttribute("plusSum", dservice.plusSum(date));
		model.addAttribute("minusList", dservice.minusList(date));
		model.addAttribute("minusSum", dservice.minusSum(date));
		
		model.addAttribute("nameList", bservice.nameList());
		
		model.addAttribute("yesterDayStock",dservice.yesterDayStock(date));
		model.addAttribute("toDayStock", dservice.toDayStock(date));
		
		return "/calculate/day";
		
	}
	
	@RequestMapping(value="/person/{date}")
	public String personGET(Model model, @ModelAttribute("date") @PathVariable("date") String date) throws Exception {

		model.addAttribute("minusList", dservice.minusList(date));
		model.addAttribute("minusSum", dservice.minusSum(date));
		
		return "/calculate/person";
		
	}
	
	@RequestMapping(value="/agent")
	public void agnetGET() throws Exception {}
	
	@RequestMapping(value="/total")
	public void totalGET() throws Exception {}
	
}
