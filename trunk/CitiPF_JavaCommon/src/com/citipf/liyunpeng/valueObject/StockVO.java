package com.citipf.liyunpeng.valueObject;

import java.util.Date;

public class StockVO {
	private Double stockIndex ;
	private Date stockTime ;
	
	/**
	 * 股指访问器方法 
	 * @return 返回股指
	 */
	public Double getStockIndex() {
		return stockIndex;
	}
	
	/**
	 * 股票指数构造器方法 
	 * @param stockIndex 股指数值
	 */
	
	public void setStockIndex(Double stockIndex) {
		this.stockIndex = stockIndex;
	}
	
	/**
	 * 股指时间访问器方法 
	 * @return 返回股指时间
	 */
	public Date getStockTime() {
		return stockTime;
	}
	/**
	 * 股指时间构造器方法 
	 * @param stockTime 股指时间
	 */
	public void setStockTime(Date stockTime) {
		this.stockTime = stockTime;
	}
	
}
