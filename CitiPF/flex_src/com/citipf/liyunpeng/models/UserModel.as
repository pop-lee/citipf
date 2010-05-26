package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.valueObject.UserVO;
	
	[Bindable]
	public class UserModel extends StockModel
	{
		public var _curUser : UserVO = null;
		
		public function UserModel()
		{
			super();
		}
		
	}
}