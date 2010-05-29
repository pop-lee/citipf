package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.GetUserAddVOEvent;
	import com.citipf.liyunpeng.valueObject.UserAddVO;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class GetUserAddVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetUserAddVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var getUserAddVOEvent : GetUserAddVOEvent = event as GetUserAddVOEvent;
			var call : AsyncToken = service.selectUserAddVO(getUserAddVOEvent.userAddVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model._userAdd = data.result as UserAddVO;
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}