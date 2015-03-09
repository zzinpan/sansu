package org.smc.service;

import java.util.List;

import javax.inject.Inject;

import org.smc.mapper.DayMapper;
import org.smc.vo.MinusVO;
import org.smc.vo.PlusVO;
import org.smc.vo.StockVO;
import org.springframework.stereotype.Service;

@Service
public class DayService {

	@Inject
	private DayMapper dmapper;
	
	public void plusInsert(PlusVO pvo) {

		dmapper.plusInsert(pvo);
		
	}

	public List<PlusVO> plusList(String date) {

		return dmapper.plusList(date);
		
	}

	public PlusVO plusSum(String date) {
		
		PlusVO pvo = dmapper.plusSum(date);
		
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

	public void plusRemove(Integer plus_no) {

		dmapper.plusRemove(plus_no);
		
	}

	public void plusModify(PlusVO pvo) {

		dmapper.plusModify(pvo);
		
	}

	public void minusInsert(MinusVO mvo) {

		dmapper.minusInsert(mvo);
		
		toDayStock(mvo.getMinus_date());
		
	}

	public List<MinusVO> minusList(String date) {
		
		return dmapper.minusList(date);
	}

	public Object minusSum(String date) {
		
		MinusVO mvo = dmapper.minusSum(date);
		
		if(mvo == null){
			
			mvo = new MinusVO();
			
			mvo.setMinus_03l(0);
			mvo.setMinus_05l(0);
			mvo.setMinus_135_back_bottle(0);
			mvo.setMinus_135l(0);
			mvo.setMinus_135l_back_box(0);
			mvo.setMinus_2l(0);
			mvo.setMinus_5g(0);
			mvo.setMinus_5g_back_bottle(0);
			mvo.setMinus_5g_back_box(0);
			mvo.setMinus_mcup(0);
			mvo.setMinus_etc(0);
			mvo.setMinus_muchine(0);
			mvo.setMinus_pl_minus(0);
			mvo.setMinus_pl_plus(0);
			mvo.setMinus_rcup(0);
			
			return mvo;
			
		}
		
		return mvo;
	}

	public void minusRemove(MinusVO mvo) {

		dmapper.minusRemove(mvo.getMinus_no());
		
		toDayStock(mvo.getMinus_date());
		
	}

	public void minusModify(MinusVO mvo) {

		dmapper.minusModify(mvo);
		
		toDayStock(mvo.getMinus_date());
		
	}

	public StockVO yesterDayStock(String date) {
		 
		return dmapper.yesterDayStock(date);
		
	}

	public StockVO toDayStock(String date) {
		
		StockVO svo = dmapper.toDayStock(date);
		StockVO svoc = dmapper.toDayStockCalc(date);
		
		if(svo == null){

			dmapper.stockInsert(svoc);
			
		}else{

			dmapper.stockModify(svoc);
			
		}
		
		return svoc;
		
	}

}
