package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.AddUserAddVOEvent;
	import com.citipf.liyunpeng.valueObject.UserAddVO;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class AddUserAddVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function AddUserAddVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var addUserAddVOEvent : AddUserAddVOEvent = event as AddUserAddVOEvent; 
			var call : AsyncToken = service.insertUserAddVO(addUserAddVOEvent.userAddVO);
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