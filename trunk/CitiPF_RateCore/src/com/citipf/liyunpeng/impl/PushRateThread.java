package com.citipf.liyunpeng.impl;

import java.util.Date;

import com.citipf.liyunpeng.inte.IPushDataThread;
import com.citipf.liyunpeng.vo.RateVO;

import flex.messaging.MessageBroker;
import flex.messaging.messages.AsyncMessage;
import flex.messaging.util.UUIDUtils;

public class PushRateThread implements IPushDataThread {

	private Thread _t = new Thread(this);
	private boolean _isRunning = false;
	double _base = 11.5;
	
	/**
	 * @return 返回该线程是否正在运行
	 */
	@Override
	public boolean getIsRunning() {
		return _isRunning;
	}
	
	/**
	 * 开启基于自身创建的线程
	 */
	@Override
	public void start() {
		if(_isRunning == false) {
			_t.start();
			_isRunning = true;
		}
	}

	/**
	 * 关闭基于自身创建的线程
	 */
	@SuppressWarnings("deprecation")
	@Override
	public void stop() {
		if(_isRunning == true) {
			_t.stop();
			_isRunning = false;
		}
	}
	
	/**
	 * 线程执行 向rate-data-feed目的地推送数据
	 */
	@Override
	public void run() {
		MessageBroker msgBroker = MessageBroker.getMessageBroker(null);
		String clientID = UUIDUtils.createUUID();
		RateVO rateVO = new RateVO();
		int _count = 0;
		int _index = 0;
		double _rate ;
		int _x = 0 ;
		
		while (_isRunning) {
			rateVO.setRateTime(new Date());

			double _num[] = { 11.25 , 11.65 , 12.05 , 12.45 , 12.05 , 11.65 , 11.25 , 11.0 };
			
			_rate = this.getRate();
			rateVO.setRate(String.valueOf(_rate));
			
			if(_index == _count) {
				////对基数进行随机次数的升降操作////////////////////
				_x = (_x == _num.length -1)?(
						((int)(Math.random()*4)%2 ==0)?0:4
											):_x+1;
				_base = _num[_x];
				_index = 0;
				_count = 6 + (int)(Math.random()*4);
			} else {
				_index ++;
			}
			
			System.out.println(rateVO.getRate());

			AsyncMessage msg = new AsyncMessage();
			msg.setDestination("rate-data-feed");
			msg.setHeader("DSSubtopic", "rate");
			msg.setClientId(clientID);
			msg.setMessageId(UUIDUtils.createUUID());
			msg.setTimestamp(System.currentTimeMillis());
			msg.setBody(rateVO);
//			msgBroker.routeMessageToService(msg,null);
			
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
			}
		}

	}

	/**
	 * 通过最基数进行对基数进行加运算，获得随机数模拟汇率
	 * @return 返回基于某基数的汇率
	 */
	private double getRate() {
		double _rate = _base + Math.random()*(0.5); 
		return _rate;
	}

}
