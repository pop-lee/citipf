package com.citipf.liyunpeng.controls
{
	import com.adobe.cairngorm.control.FrontController;
	import com.citipf.liyunpeng.commands.*;

	public class CitiPFControls extends FrontController
	{
		public function CitiPFControls()
		{
			addCommand(GET_STOCKVOLIST_EVENT,GetStockVOCommand);
			addCommand(GET_USERVO_EVENT,GetUserVOCommand);
			
			addCommand(GET_UINVEVO_EVENT,GetUInveVOCommand);
			addCommand(ADD_UINVEVO_EVENT,AddUInveVOCommand);
			
			addCommand(ADD_USERADDVO_EVENT,AddUserAddVOCommand);
		}
		
		public static const GET_STOCKVOLIST_EVENT : String = "getStockVOListEvent" ;
		public static const GET_USERVO_EVENT : String = "getUserVOEvent";
		
		public static const GET_UINVEVO_EVENT : String = "getUInveVOEvent";
		public static const ADD_UINVEVO_EVENT : String = "addUInveVOEvent";
		
		public static const ADD_USERADDVO_EVENT : String = "addUserAddVOEvent";
		
	}
}