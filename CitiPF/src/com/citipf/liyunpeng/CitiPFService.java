package com.citipf.liyunpeng;

import java.util.List;

import com.citipf.liyunpeng.valueObject.StockVO;

public class CitiPFService extends BaseService {
	
	public List<StockVO> selectStockVOList() {
		return getStockDao().selectList(null);
	}
	
	public void insertStockVO(StockVO stockVO) {
		getStockDao().insert(stockVO);
	}
}
