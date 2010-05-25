package com.citipf.liyunpeng;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.citipf.liyunpeng.dao.Iface.*;
import com.citipf.liyunpeng.valueObject.*;

public class BaseService {
	
	public static ApplicationContext context = new ClassPathXmlApplicationContext(
	"classpath*:applicationContext*.xml");

	public static Properties p = new Properties();
	
	static {
		try {
			InputStream inputStream = CitiPFService.class.getClassLoader().getResourceAsStream(
			"mainConfig.properties");
			p.load(inputStream);
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/****************************************************************************/
	private IStockDao<StockVO> stockDao ;
	private IUserDao<UserVO> userDao ;

	public IStockDao<StockVO> getStockDao() {
		return stockDao;
	}

	public void setStockDao(IStockDao<StockVO> stockDao) {
		this.stockDao = stockDao;
	}

	public IUserDao<UserVO> getUserDao() {
		return userDao;
	}

	public void setUserDao(IUserDao<UserVO> userDao) {
		this.userDao = userDao;
	}
	
	
}
