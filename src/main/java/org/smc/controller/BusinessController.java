package org.smc.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.smc.service.AgentService;
import org.smc.service.BusinessService;
import org.smc.vo.BusinessVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

@Controller
@RequestMapping("/business")
public class BusinessController {

	@Inject 
	private BusinessService bservice;
	
	@Inject
	private AgentService aservice;
	
	public String goPage(HttpServletRequest request, String apage, String page){
		
		Object member_id = WebUtils.getSessionAttribute(request, "member_id");
		
		if(member_id != null){
			
			if(member_id.toString().equals("nara4384")){
				
				return apage;
				
			}
			
		}
		
		return page;
		
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String listGET(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("list", bservice.list());
		
		return goPage(request, "/business/alist", "/business/list");
		
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public void insertGET(Model model) throws Exception {
		
		model.addAttribute("list", aservice.tradeList());
		
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insertPOST(BusinessVO bvo) throws Exception {
		
		System.out.println(bvo);
		
		bservice.insert(bvo);
		
		return "redirect:/business/list";
		
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public @ResponseBody void deleteAjax(Integer business_no, HttpServletRequest request) throws Exception {
		
		WebUtils.setSessionAttribute(request, "business_delete", "success");
		
		bservice.delete(business_no);
		
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public @ResponseBody void modifyAjax(BusinessVO bvo, Integer scrollTop, HttpServletRequest request) throws Exception {
		
		WebUtils.setSessionAttribute(request, "scrollTop", scrollTop);
			
		bservice.modify(bvo);
		
	}
	
	@RequestMapping(value="/nameList", method=RequestMethod.POST)
	public @ResponseBody List<String> nameListAjax(){
		
		return bservice.nameList();
		
	}
	
}
