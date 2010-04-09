package com.citipf.liyunpeng.noticeListener ;

import java.util.TimerTask;

public class PlanNoticeListenerThread extends TimerTask implements INoticeListenerThread {
	
//	private boolean _isRunning = false;
	
	public void query4NoticeDate() {
		System.out.println("select");
	}

	@Override
	public void run() {
		query4NoticeDate();
	}
}
