package org.smc.service;

import java.util.List;

import javax.inject.Inject;

import org.smc.mapper.AgentMapper;
import org.smc.vo.AgentVO;
import org.springframework.stereotype.Service;

@Service
public class AgentService {

	@Inject
	private AgentMapper amapper;
	
	public List<AgentVO> list() {
		// TODO Auto-generated method stub
		return amapper.list();
	}

	public void insert(String agent_name) {
		
		amapper.insert(agent_name);
		
	}

	public void modify(AgentVO avo) {
		
		amapper.modify(avo);

	}

	public List<String> tradeList() {
		
		return amapper.tradeList();
		
	}

	
	
}
