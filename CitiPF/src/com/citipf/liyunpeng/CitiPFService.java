package com.citipf.liyunpeng;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.citipf.liyunpeng.dao.Iface.IStockDao;
import com.citipf.liyunpeng.valueObject.StockVO;

public class CitiPFService {
	
	public static Properties p = new Properties();
	
	static {
		try {
			InputStream inputStream = CitiPFService.class.getClassLoader().getResourceAsStream(
			"/mainConfig.properties");
			p.load(inputStream);
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private IStockDao<StockVO> stockDao ;

	public IStockDao<StockVO> getStockDao() {
		return stockDao;
	}

	public void setStockDao(IStockDao<StockVO> stockDao) {
		this.stockDao = stockDao;
	}
	
	public void getStockVOList() {
		stockDao.selectList(new Object());
	}
	
}
