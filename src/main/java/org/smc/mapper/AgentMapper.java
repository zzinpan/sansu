package org.smc.mapper;

import java.util.List;

import org.smc.vo.AgentVO;

public interface AgentMapper {

	public List<AgentVO> list();

	public void insert(String agent_name);

	public void modify(AgentVO avo);

	public List<String> tradeList();

}
