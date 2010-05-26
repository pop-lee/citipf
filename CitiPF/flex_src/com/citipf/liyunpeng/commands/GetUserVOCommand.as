package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.GetUserVOEvent;
	import com.citipf.liyunpeng.valueObject.UserVO;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class GetUserVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetUserVOCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var _event : GetUserVOEvent = GetUserVOEvent(event);
			var call : AsyncToken = service.selectUserVO(_event.userVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model._curUser = data.result as UserVO;
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}