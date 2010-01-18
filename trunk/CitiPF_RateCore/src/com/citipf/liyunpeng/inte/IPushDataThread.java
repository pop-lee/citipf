package com.citipf.liyunpeng.inte;

public interface IPushDataThread extends Runnable {

	public boolean getIsRunning() ;
	
	public void start() ;
	
	public void stop() ;
	
}
