package com.citipf.liyunpeng;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.citipf.liyunpeng.dao.Iface.*;
import com.citipf.liyunpeng.dao.iBatis.StockDaoImpl;
import com.citipf.liyunpeng.dao.iBatis.UInveDaoImpl;
import com.citipf.liyunpeng.dao.iBatis.UserDaoImpl;
import com.citipf.liyunpeng.valueObject.*;

import junit.framework.TestCase;

public class UnitTest extends TestCase {
	
	private ApplicationContext context = new ClassPathXmlApplicationContext(
		"applicationContext*.xml");
	private IStockDao<StockVO> dao = context.getBean("stockDaoImpl",StockDaoImpl.class);
	private IUserDao<UserVO> userdao = context.getBean("userDaoImpl",UserDaoImpl.class);
	private IUInveDao<UInveVO> uinvedao = context.getBean("uInveDaoImpl",UInveDaoImpl.class);
	
	public static void main(String[] args) {
		UnitTest ut = new UnitTest();
		ut.test();
		ut.test01();
		ut.test02();
	}

	@Test
	private void test() {
		List<StockVO> list = dao.selectList(null);
		System.out.println(list.size());
	}
	
	private void test01() {
		UserVO vo = new UserVO();
		vo.setUi_bankId("8888888888888888");
		UserVO uvo = userdao.select(vo);
		System.out.println(uvo);
//		UserVO vo1 = new UserVO();
//		vo1.setUi_bankId("1");
//		vo1.setUi_name("李云鹏");
//		vo1.setUi_id("230229198709250035");
//		vo1.setUi_passw("123");
//		userdao.insert(vo1);
		vo.setUi_bankId("1");
		uvo = userdao.select(vo);
		System.out.println(uvo);
	}
	
	private void test02() {
		UInveVO uivo = new UInveVO();
		uivo.setIp_infoId(2);
		List<UInveVO> list = uinvedao.selectList(uivo);
		System.out.println(list);
	}
	
}
