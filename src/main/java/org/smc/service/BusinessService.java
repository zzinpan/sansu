package org.smc.service;

import java.util.List;

import javax.inject.Inject;

import org.smc.mapper.BusinessMapper;
import org.smc.vo.BusinessVO;
import org.springframework.stereotype.Service;

@Service
public class BusinessService {

	@Inject
	private BusinessMapper bmapper;
	
	public void insert(BusinessVO bvo) {
		
		bmapper.insert(bvo);
		
	}

	public List<BusinessVO> list() {
		
		return bmapper.list();
		
	}

	public List<String> nameList() {
		
		return bmapper.nameList();
		
	}

	public void delete(Integer business_no) {

		bmapper.delete(business_no);
		
	}

	public void modify(BusinessVO bvo) {
		
		bmapper.modify(bvo);
		
	}

}
