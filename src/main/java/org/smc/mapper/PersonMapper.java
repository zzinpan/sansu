package org.smc.mapper;

import java.util.List;

import org.smc.vo.MinusVO;

public interface PersonMapper {

	public List<MinusVO> minusDetailList(MinusVO mvo);

	public List<MinusVO> minusList4(MinusVO mvo);
	public List<MinusVO> minusList7(MinusVO mvo);
	public List<MinusVO> minusListY(MinusVO mvo);

	public List<String> dateList4();
	public List<String> dateList7();

	public MinusVO minusSum4(MinusVO mvo);
	public MinusVO minusSum7(MinusVO mvo);
	public MinusVO minusSumY(MinusVO mvo);
	
}
