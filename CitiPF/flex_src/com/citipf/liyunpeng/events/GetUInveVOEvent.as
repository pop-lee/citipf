package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.UInveVO;

	public class GetUInveVOEvent extends CairngormEvent
	{
		public var uInveVO : UInveVO ;
		
		public function GetUInveVOEvent(uInveVO : UInveVO)
		{
			this.uInveVO = uInveVO ;
			super(CitiPFControls.GET_UINVEVO_EVENT);
		}
		
	}
}