package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.UserAddVO;

	public class GetUserAddVOEvent extends CairngormEvent
	{
		public var userAddVO : UserAddVO;
		
		public function GetUserAddVOEvent(userAddVO : UserAddVO)
		{
			this.userAddVO = userAddVO;
			super(CitiPFControls.GET_USERADDVO_EVENT);
		}
		
	}
}