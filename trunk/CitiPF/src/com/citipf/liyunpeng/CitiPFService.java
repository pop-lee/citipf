package com.citipf.liyunpeng;

import java.util.List;

import com.citipf.liyunpeng.valueObject.StockVO;
import com.citipf.liyunpeng.valueObject.UInveVO;
import com.citipf.liyunpeng.valueObject.UserVO;

public class CitiPFService extends BaseService {
	
	public List<StockVO> selectStockVOList() {
		return getStockDao().selectList(null);
	}
	
	public void insertStockVO(StockVO stockVO) {
		getStockDao().insert(stockVO);
	}
	
	public UserVO selectUserVO(UserVO o) {
		return getUserDao().select(o);
	}
	
	public UInveVO selectUInveVO(UInveVO o) {
		return getUInveDao().select(o);
	}
}
