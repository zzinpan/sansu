package org.smc.mapper;

import java.util.List;

import org.smc.vo.BusinessVO;

public interface BusinessMapper {

	public void insert(BusinessVO bvo);

	public List<BusinessVO> list();

	public List<String> nameList();

	public void delete(Integer business_no);

	public void modify(BusinessVO bvo);

}
