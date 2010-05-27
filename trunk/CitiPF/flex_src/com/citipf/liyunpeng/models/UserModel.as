package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.valueObject.UInveVO;
	import com.citipf.liyunpeng.valueObject.UserVO;
	
	[Bindable]
	public class UserModel extends StockModel
	{
		
		/**
		 * 当前用户信息
		 */		
		public var _curUser : UserVO = null;
		
		
		/**
		 * 登录状态
		 * 0为未登录
		 * 1为以登录
		 */
		public var _loginStatus : int = 0;
		 
		/**
		 * 用户投资偏好类型
		 */
		public var _uInve : UInveVO = null;
		
		
		
		public function UserModel()
		{
			super();
		}
		
	}
}