package com.citipf.liyunpeng.valueObject
{
	public class UserAddVO
	{
		private var _ua_infoId : int;
		private var _ua_avg_micom : Number;
		private var _ua_avg_miout : Number ;
		
		public function set ua_infoId(ui_infoId : int) : void
		{
			_ua_infoId = ui_infoId;
		}
		public function get ua_infoId() : int
		{
			return _ua_infoId;
		}
		
		public function set ua_avg_micom(ua_avg_micom : Number) : void
		{
			_ua_avg_micom = ua_avg_micom;
		}
		public function get ua_avgmicom() : Number
		{
			return _ua_avg_micom;
		}
		public function set ua_avg_miout(ua_avg_miout : Number) : void
		{
			_ua_avg_miout = ua_avg_miout;
		}
		public function get ua_avg_miout() : Number
		{
			return _ua_avg_miout;
		}
		public function UserAddVO()
		{
		}

	}
}