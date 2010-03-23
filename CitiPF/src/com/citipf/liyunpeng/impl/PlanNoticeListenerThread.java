package com.citipf.liyunpeng.impl;

import java.util.TimerTask;

import com.citipf.liyunpeng.inte.INoticeListenerThread;

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
