package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.AddUInveVOEvent;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class AddUInveVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function AddUInveVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var addUinveVOEvent : AddUInveVOEvent = event as AddUInveVOEvent;
			var call : AsyncToken = service.insertUInveVO(addUinveVOEvent.uInveVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}