package org.smc.controller;

import javax.inject.Inject;

import org.smc.service.BusinessService;
import org.smc.service.DayService;
import org.smc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/calculate")
public class CalculateController {
	
	@Inject
	private DayService dservice;
	@Inject
	private BusinessService bservice;
	@Inject
	private PersonService pservice;

	@RequestMapping(value="/day/{date}", method=RequestMethod.GET)
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
		
	@RequestMapping(value="/person/{date}/{name}", method=RequestMethod.GET)
	public String personGET(Model model, @ModelAttribute("date") @PathVariable("date") String date,
										@ModelAttribute("name") @PathVariable("name") String name) throws Exception {

		model.addAttribute("minusList", pservice.minusList(date,name));
		model.addAttribute("minusSum", pservice.minusSum(date,name));
		model.addAttribute("minusDetailList", pservice.minusDetailList(date,name));
		model.addAttribute("dateList", pservice.dateList(date));
		
		
		model.addAttribute("nameList", bservice.nameList());
		model.addAttribute("businessVO", bservice.getVO(name));
		
		return "/calculate/person";
		
	}
	
	@RequestMapping(value="/agent")
	public void agnetGET() throws Exception {}
	
	@RequestMapping(value="/total")
	public void totalGET() throws Exception {}
	
}
