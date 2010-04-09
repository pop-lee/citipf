package com.citipf.liyunpeng.noticeListener;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;
import java.util.Timer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoticeListenerCmd extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.doPost(req, resp);
	}

	/**
	 * 随服务开始时进行监听,每个12小时查询一次
	 * 若数据库中有符合日期的则执行
	 * 发通知
	 */
	@SuppressWarnings("deprecation")
	@Override
	public void init() throws ServletException {
		super.init();
		InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream(
				"/com/citipf/liyunpeng/mainConfig.properties");
		Properties p = new Properties();
		try {
			p.load(inputStream);
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		Timer timer = new Timer();  
		Date _date = new Date();
		_date.setDate(_date.getDate()+1);
		_date.setHours(Integer.parseInt(p.getProperty("selNoticeTime")));
		_date.setMinutes(0);
		_date.setSeconds(0);
		timer.scheduleAtFixedRate(new PlanNoticeListenerThread(), _date, 
				Integer.parseInt(p.getProperty("selSeptumTime"))*60*60*1000);
		System.out.println("start listen the Notice");
	}
	
	


}
