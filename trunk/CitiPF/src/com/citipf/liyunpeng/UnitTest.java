package com.citipf.liyunpeng;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.citipf.liyunpeng.dao.Iface.IStockDao;
import com.citipf.liyunpeng.dao.iBatis.StockDaoImpl;
import com.citipf.liyunpeng.valueObject.StockVO;

import junit.framework.TestCase;

public class UnitTest extends TestCase {
	
	private ApplicationContext context = new ClassPathXmlApplicationContext(
		"com/citipf/liyunpeng/applicationContext*.xml");
	private IStockDao<StockVO> dao = context.getBean("stockDaoImpl",StockDaoImpl.class);
	
	public static void main(String[] args) {
		UnitTest ut = new UnitTest();
		ut.test();
	}

	@Test
	private void test() {
		List<StockVO> list = dao.selectList(new Object());
		System.out.println(list.size());
	}
	
}
