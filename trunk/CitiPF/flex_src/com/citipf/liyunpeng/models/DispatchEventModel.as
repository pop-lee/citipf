package com.citipf.liyunpeng.models
{
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.citipf.liyunpeng.events.*;
	import com.citipf.liyunpeng.valueObject.UserVO;
	
	public class DispatchEventModel
	{
		private var cairngormEventDispatcher : CairngormEventDispatcher = CairngormEventDispatcher.getInstance();
		
		public function DispatchEventModel()
		{
		}
		
		/****Stock*************************************************************************/
		/**
		 * 获取数据库存储的最后若干条股指数据
		 */
		public function getStockListVO() : void {
			cairngormEventDispatcher.dispatchEvent(new GetStockVOListEvent());
		}
		
		/****User**************************************************************************/
		/**
		 * 执行查询用户
		 */
		 public function getUserVO(user : UserVO) : void
		 {
		 	cairngormEventDispatcher.dispatchEvent(new GetUserVOEvent(user));
		 }

	}
}