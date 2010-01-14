package com.citipf.liyunpeng.impl;

import java.util.Date;

import com.citipf.liyunpeng.inte.IPushDataThread;
import com.citipf.liyunpeng.vo.RateVO;

import flex.messaging.MessageBroker;
import flex.messaging.messages.AsyncMessage;
import flex.messaging.util.UUIDUtils;

public class PushRateThread implements IPushDataThread {

	private boolean _isRunning = false;
    double _base = 11.5;
	
	@Override
	public boolean getIsRunning() {
		return _isRunning;
	}
	
	@Override
	public void setIsRunning(boolean _b) {
		this._isRunning = _b;
	}

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
    			if(_x == _num.length-1) {
    				/////随机生成预订基数坐标为0或者为4，以达到随机升降数值。////
    				if((int)(Math.random()*4)%2 == 0) {
    					_x = 0;
    				} else {
    					_x = 4;
    				}
    			} else {
    				_x ++;
    			}
    			_base = _num[_x];
    			_index = 0;
    			_count = 6 + (int)(Math.random()*4);
//    			if(_x%2 == 0) {
//    				_count = 3 + (int)(Math.random()*5);
//    			} else {
//    				_count = 3 + (int)(Math.random()*2); 
//    			}
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
            msgBroker.routeMessageToService(msg,null);
            
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
