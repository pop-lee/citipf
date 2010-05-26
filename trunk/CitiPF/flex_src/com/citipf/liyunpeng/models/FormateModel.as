package com.citipf.liyunpeng.models
{
	import mx.formatters.DateFormatter;
	
	public class FormateModel extends DispatchEventModel
	{
		private var _stockDateFormatter : DateFormatter = new DateFormatter();
		
		/**
		 * @return 返回股指时间格式化器
		 */		
		public function get stockDateFormatter() : DateFormatter {return _stockDateFormatter}
		
		public function FormateModel()
		{
			_stockDateFormatter.formatString = "MM:SS";
		}

	}
}