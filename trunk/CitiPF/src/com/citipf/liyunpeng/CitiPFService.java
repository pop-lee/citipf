package com.citipf.liyunpeng;

import java.util.List;

import com.citipf.liyunpeng.valueObject.StockVO;

public class CitiPFService extends BaseService {
	
	public List<StockVO> getStockVOList() {
		System.out.println(getStockDao().selectList(new Object()));
		return getStockDao().selectList(new Object());
	}
	
}
