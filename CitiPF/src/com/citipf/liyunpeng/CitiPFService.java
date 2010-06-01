package com.citipf.liyunpeng;

import java.util.List;

import com.citipf.liyunpeng.valueObject.PurcProgVO;
import com.citipf.liyunpeng.valueObject.StockVO;
import com.citipf.liyunpeng.valueObject.UInveVO;
import com.citipf.liyunpeng.valueObject.UserAddVO;
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
	
	public UInveVO insertUInveVO(UInveVO o) {
		getUInveDao().insert(o);
		return getUInveDao().select(o);
	}
	
	public UserAddVO insertUserAddVO(UserAddVO o) {
		getUserAddDao().insert(o);
		return getUserAddDao().select(o); 
	}
	
	public UserAddVO selectUserAddVO(UserAddVO o) {
		return getUserAddDao().select(o);
	}
	
	public PurcProgVO insertPurcProgVO(PurcProgVO o) {
		getPurcProgDao().insert(o);
		return null;
	}
}
