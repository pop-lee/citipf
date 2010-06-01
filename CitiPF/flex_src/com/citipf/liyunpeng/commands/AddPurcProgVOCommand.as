package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.AddPurcProgVOEvent;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class AddPurcProgVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function AddPurcProgVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var addPurcProgVOEvent : AddPurcProgVOEvent = event as AddPurcProgVOEvent;
			var call : AsyncToken = service.insertPurcProgVO(addPurcProgVOEvent.purcProgVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			data.result;
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}