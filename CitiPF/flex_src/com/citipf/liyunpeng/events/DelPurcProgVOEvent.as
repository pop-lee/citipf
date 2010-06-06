package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	import com.citipf.liyunpeng.valueObject.PurcProgVO;

	public class DelPurcProgVOEvent extends CairngormEvent
	{
		public var purcProg : PurcProgVO;
		
		public function DelPurcProgVOEvent(purcProgVO : PurcProgVO)
		{
			this.purcProg = purcProgVO;
			
			super(CitiPFControls.DEL_PURCPROGVO_EVENT);
		}
		
	}
}