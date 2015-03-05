package org.smc.mapper;

import java.util.List;

import org.smc.vo.PlusVO;

public interface DayMapper {

	public void plusInsert(PlusVO pvo);

	public List<PlusVO> plusList(String date);

	public PlusVO plusSum(String date);

}
