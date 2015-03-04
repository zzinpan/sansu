package org.smc.vo;

public class AgentVO {

	private Integer agent_no;
	private String agent_name;
	private String agent_trade;
	public Integer getAgent_no() {
		return agent_no;
	}
	public void setAgent_no(Integer agent_no) {
		this.agent_no = agent_no;
	}
	public String getAgent_name() {
		return agent_name;
	}
	public void setAgent_name(String agent_name) {
		this.agent_name = agent_name;
	}
	public String getAgent_trade() {
		return agent_trade;
	}
	public void setAgent_trade(String agent_trade) {
		this.agent_trade = agent_trade;
	}
	@Override
	public String toString() {
		return "AgentVO [agent_no=" + agent_no + ", agent_name=" + agent_name
				+ ", agent_trade=" + agent_trade + "]";
	}
		
}
