package org.smc.controller;

import javax.inject.Inject;

import org.smc.service.DayService;
import org.smc.vo.MinusVO;
import org.smc.vo.PlusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/day")
public class DayController {

	@Inject
	private DayService dservice;
	
	@RequestMapping(value="/plus/insert", method=RequestMethod.POST)
	public String plusInsertPOST(PlusVO pvo) throws Exception {
		
		dservice.plusInsert(pvo);
		
		return "redirect:/calculate/day/"+pvo.getPlus_date();
		
	}

	@RequestMapping(value="/plus/remove", method=RequestMethod.POST)
	public @ResponseBody void plusRemoveAjax(Integer plus_no) throws Exception {
		
		dservice.plusRemove(plus_no);
		
	}
	
	@RequestMapping(value="/plus/modify", method=RequestMethod.POST)
	public @ResponseBody void plusModifyAjax(PlusVO pvo) throws Exception {
		
		dservice.plusModify(pvo);
		
	}
	
	@RequestMapping(value="/minus/insert", method=RequestMethod.POST)
	public String minusInsertPOST(MinusVO mvo) throws Exception {
		
		dservice.minusInsert(mvo);
		
		return "redirect:/calculate/day/"+mvo.getMinus_date();
		
	}
	
	@RequestMapping(value="/minus/remove", method=RequestMethod.POST)
	public @ResponseBody void minusRemoveAjax(Integer minus_no) throws Exception {
		
		dservice.minusRemove(minus_no);
		
	}
	
}
