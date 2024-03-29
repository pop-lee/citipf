package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.AddUInveVOEvent;
	import com.citipf.liyunpeng.valueObject.UInveVO;
	
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
			var addUInveVOEvent : AddUInveVOEvent = event as AddUInveVOEvent;
			var call : AsyncToken = service.insertUInveVO(addUInveVOEvent.uInveVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model._uInve = data.result as UInveVO
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}