package com.citipf.liyunpeng.models
{
	
	import mx.formatters.DateFormatter;
	import mx.formatters.NumberFormatter;
	
	public class FormateModel extends DispatchEventModel
	{
		private var _stockDateFormatter : DateFormatter = new DateFormatter();
		
		private var _numberFormatter : NumberFormatter = new NumberFormatter();
		
		private var _dateFormatter : DateFormatter = new DateFormatter();
		
		/**
		 * @return 返回股指时间格式化器
		 */		
		public function get stockDateFormatter() : DateFormatter {return _stockDateFormatter}
		/**
		 * @return 返回数值格式化器
		 */
		public function get numberFormatter() : NumberFormatter {return _numberFormatter}
		
		/**
		 * @return 日期格式化器 
		 */
		public function get dateFormatter() : DateFormatter {return _dateFormatter}
		
		public function FormateModel()
		{
			_stockDateFormatter.formatString = "MM:SS";
			_numberFormatter.precision = 4;
			_dateFormatter.formatString = "YYYY年MM月DD日";
		}

	}
}