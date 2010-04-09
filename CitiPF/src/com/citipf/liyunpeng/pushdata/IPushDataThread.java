package com.citipf.liyunpeng.pushdata ;

public interface IPushDataThread extends Runnable {

	/**
	 * @return 返回该线程是否正在运行
	 */
	public boolean getIsRunning() ;
	
	/**
	 * 开启基于自身创建的线程
	 */
	public void start() ;
	
	/**
	 * 关闭基于自身创建的线程
	 */
	public void stop() ;
	
}
