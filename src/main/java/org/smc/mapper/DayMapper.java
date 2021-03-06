package org.smc.mapper;

import java.util.List;

import org.smc.vo.MinusVO;
import org.smc.vo.PlusVO;
import org.smc.vo.StockVO;

public interface DayMapper {

	public void plusInsert(PlusVO pvo);

	public List<PlusVO> plusList(String date);

	public PlusVO plusSum(String date);

	public void plusRemove(Integer plus_no);

	public void plusModify(PlusVO pvo);

	public void minusInsert(MinusVO mvo);

	public List<MinusVO> minusList(String date);

	public MinusVO minusSum(String date);

	public void minusRemove(Integer minus_no);

	public void minusModify(MinusVO mvo);

	public StockVO yesterDayStock(String date);

	public StockVO toDayStockCalc(String date);

	public StockVO toDayStock(String date);

	public void stockInsert(StockVO svo);

	public void stockModify(StockVO svoc);

}
