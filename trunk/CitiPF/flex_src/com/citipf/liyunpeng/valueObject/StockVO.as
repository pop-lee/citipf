package com.citipf.liyunpeng.valueObject
{
	[RemoteClass(alias="com.citipf.liyunpeng.valueObject.StockVO")]
	public class StockVO
	{
		private var _stockIndex : Number ;
		private var _stockTime : Date ;
		
		/**
		 *股票指数构造器方法 
		 * @param _si 股指数值
		 * 
		 */		
		public function set stockIndex(_si : Number) : void
		{
			this._stockIndex = _si ;
		}
		/**
		 *股指访问器方法 
		 * @return 返回股指
		 * 
		 */		
		public function get stockIndex() : Number
		{
			return _stockIndex ;
		}
		/**
		 *股指时间构造器方法 
		 * @param _st 股指时间
		 * 
		 */		
		public function set stockTime(_st : Date) : void
		{
			_stockTime = _st ;
		}
		/**
		 *股指时间访问器方法 
		 * @return 返回股指时间
		 * 
		 */		
		public function get stockTime() : Date
		{
			return _stockTime ;
		}
		
		public function StockVO()
		{
		}

	}
}