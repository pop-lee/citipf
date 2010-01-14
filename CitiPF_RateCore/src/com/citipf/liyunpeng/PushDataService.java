package com.citipf.liyunpeng;

import java.util.ArrayList;
import java.util.List;

import com.citipf.liyunpeng.impl.PushRateThread;
import com.citipf.liyunpeng.inte.IPushDataThread;

public class PushDataService {
	/**
	 * 数据推送服务单例对象
	 */
	private static PushDataService _instance = null;
	
	/**
	 * 数据推送线程列表
	 */
	@SuppressWarnings("unchecked")
	private static List<IPushDataThread> _threadList = new ArrayList();
	
	private PushDataService() {
		init();
	}
	
	/**
	 * 单例模式实例化方法
	 * @return 返回数据推送服务单例实例化
	 */
	synchronized public static PushDataService getInstance() {
		if(_instance == null) {
			_instance = new PushDataService() ;
		}
		
		return _instance;
	}
	
	/**
	 * 初始化线程列表
	 */
	public void init() {
		_threadList.add(new PushRateThread());
	}
	
	/**
	 * 开启线程列表中的所有线程
	 */
	public void start() {
		if(_threadList == null || _threadList.size() == 0) {
			System.out.println("没有与数据相关的线程");
			return ;
		}
		for(IPushDataThread _t : _threadList) {
			Thread _d = new Thread(_t);
			_d.start();
			_t.setIsRunning(true);
		}
		System.out.println("开启数据推送线程成功");
	}
	
	/**
	 * 关闭线程列表中的所有线程
	 */
	public void stop() {
		if(_threadList == null || _threadList.size() == 0) {
			System.out.println("没有要关闭的线程");
		}
		for(IPushDataThread _t : _threadList) {
			Thread _d = new Thread(_t);
			_d.start();
			_t.setIsRunning(false);
		}
	}
	
}
