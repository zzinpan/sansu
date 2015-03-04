package org.smc.service;

import java.util.List;

import javax.inject.Inject;

import org.smc.mapper.DayMapper;
import org.smc.vo.PlusVO;
import org.springframework.stereotype.Service;

@Service
public class DayService {

	@Inject
	private DayMapper dmapper;
	
	public void plusInsert(PlusVO pvo) {

		dmapper.plusInsert(pvo);
		
	}

	public List<PlusVO> plusList(String date) {
		// TODO Auto-generated method stub
		return dmapper.plusList(date);
		
	}

	
	
}
