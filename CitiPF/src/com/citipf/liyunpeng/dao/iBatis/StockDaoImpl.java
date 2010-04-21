package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.CitiPFService;
import com.citipf.liyunpeng.dao.Iface.IStockDao;
import com.citipf.liyunpeng.valueObject.StockVO;

public class StockDaoImpl extends IBatisDaoSupport implements IStockDao<StockVO> {

	@Override
	public void delete(StockVO t) {
		// TODO Auto-generated method stub
	}

	@Override
	public void insert(StockVO t) {
		this.getSqlSessionTemplate().insert("Stock.insertStock", t);
	}

	@Override
	public StockVO select(Object o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StockVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<StockVO> selectList(Object o) {
		int limit = Integer.parseInt(CitiPFService.p.getProperty("stock.num"));
		return this.getSqlSessionTemplate().selectList("Stock.selectListStock", limit);
	}

	@Override
	public void update(StockVO t) {
		// TODO Auto-generated method stub
		
	}

}
