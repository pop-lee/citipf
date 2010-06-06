package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.PurcProgVO;

	public class GetPurcProgVOEvent extends CairngormEvent
	{
		public var purcProgVO : PurcProgVO;
		
		public function GetPurcProgVOEvent(purcProgVO : PurcProgVO)
		{
			this.purcProgVO = purcProgVO;
			super(CitiPFControls.GET_PURCPROGVO_EVENT);
		}
		
	}
}