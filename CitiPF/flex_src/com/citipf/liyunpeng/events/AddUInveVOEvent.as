package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.UInveVO;

	public class AddUInveVOEvent extends CairngormEvent
	{
		public var uInveVO : UInveVO ;
		
		public function AddUInveVOEvent(uInveVO : UInveVO)
		{
			this.uInveVO = uInveVO;
			super(CitiPFControls.ADD_UINVEVO_EVENT);
		}
		
	}
}