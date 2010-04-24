package com.citipf.liyunpeng.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.controls.CitiPFControls;
	
	public class GetStockVOListEvent extends CairngormEvent
	{
		public function GetStockVOListEvent()
		{
			super(CitiPFControls.GET_STOCKVOLIST_EVENT);
		}

	}
}