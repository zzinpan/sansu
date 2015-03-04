package org.smc.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.smc.service.AgentService;
import org.smc.vo.AgentVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

@Controller
@RequestMapping("/agent")
public class AgentController {
	
	@Inject
	private AgentService aservice;
	
	@RequestMapping(value="/management",method=RequestMethod.GET)
	public void managementGET(Model model) throws Exception {
		
		model.addAttribute("list",aservice.list());
		
	}
	
	@RequestMapping(value="insert",method=RequestMethod.POST)
	public @ResponseBody void insertAjax(String agent_name, HttpServletRequest request) throws Exception {
		
		aservice.insert(agent_name);
		
		WebUtils.setSessionAttribute(request, "agentInsert", "success");
		
	}

	@RequestMapping(value="modify",method=RequestMethod.POST)
	public @ResponseBody void modifyAjax(AgentVO avo, HttpServletRequest request) throws Exception {
		
		aservice.modify(avo);
		
		WebUtils.setSessionAttribute(request, "agentModify", "success");
		
	}	
	
	@RequestMapping(value="/tradeList", method=RequestMethod.POST)
	public @ResponseBody List<String> tradeListAjax(){
		
		return aservice.tradeList();
		
	}
}
