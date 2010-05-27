package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.UserAddVO;

	public class AddUserAddVOEvent extends CairngormEvent
	{
		public var userAddVO : UserAddVO ;
		
		public function AddUserAddVOEvent(userAddVO : UserAddVO)
		{
			this.userAddVO = userAddVO;
			super(CitiPFControls.ADD_USERADDVO_EVENT);
		}
		
	}
}