package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.UserVO;

	public class GetUserVOEvent extends CairngormEvent
	{
		public var userVO : UserVO ;
		
		public function GetUserVOEvent(user : UserVO)
		{
			this.userVO = user;
			super(CitiPFControls.GET_USERVO_EVENT);
		}
		
	}
}