package com.citipf.liyunpeng.valueObject
{
	[Bindable]
	[RemoteClass(alias="com.citipf.liyunpeng.valueObject.UInveVO")]
	public class UInveVO
	{
		private var _ip_infoId : int;
		private var _ip_pref : int;
		
		public function get ip_infoId() : int
		{
			return _ip_infoId;
		}
		public function set ip_infoId(ip_infoId : int) : void
		{
			this._ip_infoId = ip_infoId;
		}
		public function get ip_pref() : int
		{
			return _ip_pref;
		}
		public function set ip_pref(ip_pref : int) : void
		{
			this._ip_pref = ip_pref;
		}
		
		public function UInveVO()
		{
		}

	}
}