package org.smc.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.smc.mapper.PersonMapper;
import org.smc.vo.MinusVO;
import org.springframework.stereotype.Service;

@Service
public class PersonService {

	@Inject
	private PersonMapper pmapper;
	
	public List<MinusVO> minusList(String date, String name) {

		MinusVO mvo = new MinusVO();
		
		mvo.setMinus_date(date);
		mvo.setMinus_name(name);

		if(date.equals("year")){
			
			return pmapper.minusListY(mvo);
			
		}else if(date.length() == 7){
			
			return pmapper.minusList7(mvo);
			
		}else if(date.length() == 4){
		
			return pmapper.minusList4(mvo);
	
		}	
		
		return null;
		
	}

	public MinusVO minusSum(String date, String name) {

		MinusVO mvo = new MinusVO();
		
		mvo.setMinus_date(date);
		mvo.setMinus_name(name);
		
		if(date.equals("year")){
			
			return pmapper.minusSumY(mvo);
			
		}else if(date.length() == 7){
			
			return pmapper.minusSum7(mvo);
			
		}else if(date.length() == 4){
		
			return pmapper.minusSum4(mvo);
	
		}	
		
		return null;
		
	}

	public List<MinusVO> minusDetailList(String date, String name) {

		MinusVO mvo = new MinusVO();
		
		mvo.setMinus_date(date);
		mvo.setMinus_name(name);
		
		if(date.length() == 7){
			
			return pmapper.minusDetailList(mvo);
						
		}
		
		return null;
		
	}

	public List<String> dateList(String date){

		if(date.equals("year")){
		
			List<String> list = new ArrayList<String>();
			
			list.add("year");
			
			return list;
			
		}else if(date.length() == 7){
			
			return pmapper.dateList7();
			
		}else if(date.length() == 4){
		
			return pmapper.dateList4();
	
		}	
	
		return null;
		
	}
	
}
