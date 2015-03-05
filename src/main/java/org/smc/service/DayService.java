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

	public PlusVO plusSum(String date) {
		
		PlusVO pvo = dmapper.plusSum(date);
		
		System.out.println(pvo);
		
		if(pvo == null){
			
			pvo = new PlusVO();
			
			pvo.setPlus_03l(0);
			pvo.setPlus_05l(0);
			pvo.setPlus_135_back_bottle(0);
			pvo.setPlus_135l(0);
			pvo.setPlus_135l_back_box(0);
			pvo.setPlus_2l(0);
			pvo.setPlus_5g(0);
			pvo.setPlus_5g_back_bottle(0);
			pvo.setPlus_5g_back_box(0);
			pvo.setPlus_etc(0);
			pvo.setPlus_mcup(0);
			pvo.setPlus_muchine(0);
			pvo.setPlus_pl_minus(0);
			pvo.setPlus_pl_plus(0);
			pvo.setPlus_rcup(0);
		
			return pvo;
			
		}
		
		return pvo;
		
	}

	
	
}
