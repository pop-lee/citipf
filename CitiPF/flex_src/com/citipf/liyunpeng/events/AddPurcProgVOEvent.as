package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.PurcProgVO;

	public class AddPurcProgVOEvent extends CairngormEvent
	{
		public var purcProgVO : PurcProgVO ;
		
		public function AddPurcProgVOEvent(purcProgVO : PurcProgVO)
		{
			this.purcProgVO = purcProgVO
			super(CitiPFControls.ADD_PURCPROGVO_EVENT);
		}
		
	}
}