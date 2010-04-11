package com.citipf.liyunpeng;

import com.citipf.liyunpeng.dao.Iface.IStockDao;
import com.citipf.liyunpeng.valueObject.StockVO;

public class CitiPFService {
	private IStockDao<StockVO> stockDao ;

	public IStockDao<StockVO> getStockDao() {
		return stockDao;
	}

	public void setStockDao(IStockDao<StockVO> stockDao) {
		this.stockDao = stockDao;
	}
	
	
}
