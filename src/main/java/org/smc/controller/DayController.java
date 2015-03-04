package org.smc.controller;

import javax.inject.Inject;

import org.smc.service.DayService;
import org.smc.vo.PlusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/day")
public class DayController {

	@Inject
	private DayService dservice;
	
	@RequestMapping(value="/plus/insert", method=RequestMethod.POST)
	public String plusInsertPOST(PlusVO pvo) throws Exception {
		
		System.out.println(pvo);
		
		dservice.plusInsert(pvo);
		
		return "redirect:/calculate/day/"+pvo.getPlus_date();
		
	}
	
}
