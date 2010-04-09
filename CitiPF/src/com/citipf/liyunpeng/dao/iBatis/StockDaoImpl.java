package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.dao.Iface.IStockDao;
import com.citipf.liyunpeng.valueObject.StockVO;

public class StockDaoImpl extends IBatisDaoSupport implements IStockDao<StockVO> {

	@Override
	public void doAdd(StockVO t) {
		this.getSqlMapClientTemplate().insert("Stock.insertStock", t);
	}

	@Override
	public StockVO doGet(Object o) {
		return null;
	}

	@Override
	public List<StockVO> doGetAll() {
		return null;
	}

	@Override
	public List<StockVO> doGetAll(Object o) {
		return null;
	}

	@Override
	public void doUpdate(Object o) {
	}

}
